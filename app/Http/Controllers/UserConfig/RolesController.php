<?php

namespace App\Http\Controllers\UserConfig;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Models\User;
use App\Models\settings\SidebarNav;
use App\Services\LogService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RolesController extends Controller
{
    public function __construct()
    {
        $this->middleware('permission:create_roles', ['only' => ['create']]);
        $this->middleware('permission:view_roles', ['only' => ['index']]);
        $this->middleware('permission:update_roles', ['only' => ['edit']]);
        $this->middleware('permission:delete_roles', ['only' => ['destroy']]);
    }
    public function index()
    {
        $this->checkLogin();
        return view('UserConfig.role.showRole');
    }
    public function create()
    {
        $this->checkLogin();
        return view('UserConfig.role.createRole');
    }
    public function edit($id)
    {
        $this->checkLogin();
        $rowItem = Role::where('id', $id)->first();
        return view('UserConfig.role.editRole', ['rowItem' => $rowItem]);
    }
    public function store(Request $request){
        try {
            if ($request['id']==""){

                $rowData=Role::create([
                    'name'=>$request->name
                ]);
                LogService::log(auth()->user()->id, 'Role', 'create', $rowData->getAttributes());

                return json_encode(array(
                    "statusCode" => 200,
                    "statusMsg" => "Data Added Successfully"
                ));
            }else{
                $id = $request['id'];
                $permission = Role::findById($id);
                $permission->update([
                    'name'=>$request->name
                ]);
                LogService::log(auth()->user()->id, 'Role', 'update', $permission->getChanges());

                return json_encode(array(
                    "statusCode" => 200,
                    "statusMsg" => "Data Update Successfully"
                ));
            }
        } catch (\Exception $e) {
            return json_encode(array(
                "statusCode" => 400,
                "statusMsg" => $e->getMessage()
            ));;
        }
    }
    public function GivePermissionToRole(Request $request){
        try {
            if (!empty($request['id'])) {
                $role = Role::findOrFail($request['id']);
                $role->syncPermissions($request->permission);
                LogService::log(auth()->user()->id, 'Give Permission To Role', 'Added', $role->getAttributes());

                return json_encode(array(
                    "statusCode" => 200,
                    "statusMsg" => "Data Added Successfully"
                ));
            } else {
                return json_encode(array(
                    "statusCode" => 201,
                    "statusMsg" => "Failed To Give Permission To Role"
                ));
            }
        } catch (\Exception $e) {
            $role = Role::findOrFail($request['id']);
            $role->syncPermissions($request->permission);
            LogService::log(auth()->user()->id, 'Give Permission To Role', 'Failed', $role->getAttributes());

            return json_encode(array(
                "statusCode" => 400,
                "statusMsg" =>  $e->getMessage()
            ));
        }
    }
    public function show($id){
        try {
            $singleDataShow = DB::table('roles')->where('id', $id)->get();

            //$singleDataShow = Role::findById($id)->get();
            return $singleDataShow;
        } catch (\Exception $e) {
            return json_encode(array(
                "statusCode" => 400,
                "statusMsg" => $e->getMessage()
            ));;
        }
    }
    public function destroy($id){
        try {
            $permission = Role::findById($id);
            $permission->delete();
            return json_encode(array(
                "statusCode" => 200
            ));
            LogService::log(auth()->user()->id, 'Role', 'delete', $permission->getAttributes());

        } catch (\Exception $e) {

            return json_encode(array(
                "statusCode" => 400,
                "statusMsg" => $e->getMessage()
            ));;
        }
    }
    public function getData(Request $request){

        $query = DB::table('roles')
            ->select('id', 'name', 'guard_name', 'created_at', 'updated_at')
             ->where('name', '!=', 'Roots');

        if (isset($request->search['value'])) {
            $query->where('name', 'like', '%' . $request->search['value'] . '%');
        }

        // Ordering
        if ($request->has('order')) {
            $query->orderBy($request->columns[$request->order[0]['column']]['data'], $request->order[0]['dir']);
        }

        // Pagination
        $totalCount = $query->count();
        $filteredCount = $query->count();

        $data = $query->skip($request->input('start', 0))
            ->take($request->input('length', 10))
            ->get();

        return response()->json([
            'draw' => $request->draw,
            'recordsTotal' => $totalCount,
            'recordsFiltered' => $filteredCount,
            'data' => $data,
        ]);

    }
    public function getRolePermissions($id)
    {
        // Fetch menus with their role IDs
        $menus = DB::select('SELECT sms.id, sms.name, sms.url, sms.parent_id, rsm.role_id
                         FROM sms_web_sidebar_menu AS sms
                         LEFT JOIN role_sidebar_menu AS rsm
                         ON rsm.sidebar_nav_id = sms.id AND rsm.role_id = ?
                         WHERE sms.status = ?', [$id, 'A']);

        // Organize menus into a parent-child structure
        $menuTree = [];
        foreach ($menus as $menu) {
            if ($menu->parent_id) {
                // If the menu has a parent, add it to its parent's children array
                $menuTree[$menu->parent_id]['children'][] = $menu;
            } else {
                // If it's a parent menu, add it to the top level
                $menuTree[$menu->id] = [
                    'id' => $menu->id,
                    'name' => $menu->name,
                    'url' => $menu->url,
                    'role_id' => $menu->role_id,
                    'children' => [],
                ];
            }
        }

        return response()->json([
            'menus' => array_values($menuTree), // Reset array keys for JSON response
        ]);
    }
    public function saveMenuPermissions(Request $request)
    {
        // Validate the request
        $request->validate([
            'roleId' => 'required|integer|exists:roles,id', // Validate the role ID
            'permissions' => 'array',
            'permissions.*' => 'integer|exists:sms_web_sidebar_menu,id', // Validate each permission ID
        ]);

        $roleId = $request->roleId; // Get the role ID from the request

        // Clear existing permissions that are not in the new set
        DB::table('role_sidebar_menu')->where('role_id', $roleId)
            ->whereNotIn('sidebar_nav_id', $request->permissions)
            ->delete();

        // Insert or update permissions
        foreach ($request->permissions as $menuId) {
            // Check if the permission already exists
            $existingPermission = DB::table('role_sidebar_menu')
                ->where('role_id', $roleId)
                ->where('sidebar_nav_id', $menuId)
                ->first();

            if ($existingPermission) {
                // If it exists, you might want to update it (if necessary)
                // In this case, no update logic needed as we are not changing any fields
                continue;
            } else {
                // If it doesn't exist, insert the new permission
                DB::table('role_sidebar_menu')->insert([
                    'role_id' => $roleId,
                    'sidebar_nav_id' => $menuId,
                ]);
            }
            LogService::log(auth()->user()->id, 'Menu Permissions Role', 'Save', $request);

        }

        return response()->json(['success' => true]);
    }
    public function addPermissionToRole($id){
        $permission = Permission::get();
        $role = Role::findOrFail($id);
        $roleHavePermission = DB::table("role_has_permissions")
            ->where('role_has_permissions.role_id',$role->id)
            ->pluck('role_has_permissions.permission_id','role_has_permissions.permission_id')
            ->all();
        LogService::log(auth()->user()->id, 'Permission To Role', 'Get', $roleHavePermission);

        return [
            'role' => $role,
            'permissions' => $permission,
            'roleHavePermission' => $roleHavePermission
        ];
    }
}
