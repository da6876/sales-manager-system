<?php

namespace App\Http\Controllers\WebSetup;

use App\Http\Controllers\Controller;
use App\Models\WebSetup\BrandName;
use App\Models\WebSetup\SidebarNav;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class BrandNameController extends Controller
{
    public function __construct()
    {
        $this->middleware('permission:create_brand', ['only' => ['create']]);
        $this->middleware('permission:view_brand', ['only' => ['index']]);
        $this->middleware('permission:update_brand', ['only' => ['edit']]);
        $this->middleware('permission:delete_brand', ['only' => ['destroy']]);
    }
    public function index()
    {
        $this->checkLogin();
        return view('WebSetup.BrandName.show');
    }

    public function create()
    {
        $this->checkLogin();
        $prentMenu = SidebarNav::whereNull('parent_id')->get();
        return view('WebSetup.BrandName.create', ['prentMenu' => $prentMenu]);
    }

    public function edit($id)
    {
        $this->checkLogin();
        $navItem = BrandName::where('uid', $id)->first();

        return view('WebSetup.BrandName.edit', [ 'navItem' => $navItem]);
    }

    public function store(Request $request)
    {
        try {
            if ($request['id'] == "") {
                $validator = Validator::make($request->all(), [
                    'name' => 'required',
                    'logo' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
                    'details' => 'required',
                    'status' => 'required',
                ]);

                if ($validator->fails()) {
                    return json_encode(array(
                        'statusCode' => 204,
                        'statusMsg' => 'Validation Error.',
                        'errors' => $validator->errors()
                    ));
                }

                if ($request->hasFile('logo')) {
                    $ran_one = uniqid();
                    $ext_one = strtolower($request->logo->getClientOriginalExtension());
                    $one_full_name = $ran_one . '.' . $ext_one;
                    $upload_path_one = "assets/logo/";
                    $fileUrl = $upload_path_one . $one_full_name;
                    $request->logo->move($upload_path_one, $one_full_name);
                } else {
                    $fileUrl = "";
                }

                BrandName::create([
                    'uid' => Str::uuid(),
                    'name' => $request->name,
                    'logo' => $fileUrl,
                    'details' => $request->details ?: '',
                    'status' => $request->status,
                    'create_by' => auth()->user()->id,
                    'create_date' => $this->getCurrentDateTime()
                ]);


                return json_encode(array(
                    "statusCode" => 200,
                    "statusMsg" => "Data Added Successfully"
                ));
            }
            else {
                $id = $request['id'];
                $navItem = BrandName::find($id);

                if (!$navItem) {
                    return response()->json([
                        'statusCode' => 404,
                        'statusMsg' => 'Item not found.',
                    ]);
                }

                $validator = Validator::make($request->all(), [
                    'name' => 'required',
                    'logo' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
                    'details' => 'required',
                    'status' => 'required',
                ]);

                if ($validator->fails()) {
                    return json_encode(array(
                        'statusCode' => 204,
                        'statusMsg' => 'Validation Error.',
                        'errors' => $validator->errors()
                    ));
                }

                if ($request->hasFile('logo')) {
                    $oldImage = $navItem->logo;
                    if ($oldImage && file_exists(public_path($oldImage))) {
                        unlink(public_path($oldImage));
                    }
                    $ran_one = uniqid();
                    $ext_one = strtolower($request->logo->getClientOriginalExtension());
                    $one_full_name = $ran_one . '.' . $ext_one;
                    $upload_path_one = "assets/logo/";
                    $fileUrl = $upload_path_one . $one_full_name;
                    $request->logo->move($upload_path_one, $one_full_name);
                } else {
                    $fileUrl = $navItem->logo;
                }

                $navItem->update([
                    'name' => $request->name,
                    'logo' => $fileUrl,
                    'details' => $request->details ?: '',
                    'status' => $request->status,
                    'update_by' => auth()->user()->id,
                    'update_date' => $this->getCurrentDateTime()
                ]);


                return json_encode(array(
                    "statusCode" => 200,
                    "statusMsg" => "Data Updated Successfully"
                ));
            }

        } catch (\Exception $e) {
            return response()->json([
                "statusCode" => 400,
                "statusMsg" => $e->getMessage()
            ]);
        }
    }

    public function destroy($id){
        try {
            $permission = BrandName::where('uid', $id)->first();
            $permission->update([
                'status' => "Deleted",
                'update_by' => auth()->user()->id,
                'update_date' => $this->getCurrentDateTime()
            ]);

            return json_encode(array(
                "statusCode" => 200
            ));
        } catch (\Exception $e) {

            return json_encode(array(
                "statusCode" => 400,
                "statusMsg" => $e->getMessage()
            ));;
        }
    }
    public function getBrandInfo(){
        $latestRecord = BrandName::orderBy('id', 'desc')->first();
        if ($latestRecord) {
            return response()->json([
                'statusCode' => 200,
                'statusMsg' => 'Latest record retrieved successfully.',
                'data' => $latestRecord
            ]);
        } else {
            return response()->json([
                'statusCode' => 404,
                'statusMsg' => 'No records found.'
            ]);
        }
    }

    public function getData(Request $request)
    {
        // Fetch all items with their hierarchy
        $query = DB::table('sms_brand_info as p')
            ->select('p.id', 'p.uid',  'p.name', 'p.logo', 'p.status')
            ->where('p.status', '!=', 'Deleted');

        // Search functionality
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

}
