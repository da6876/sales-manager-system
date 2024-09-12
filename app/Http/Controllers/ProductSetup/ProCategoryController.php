<?php

namespace App\Http\Controllers\ProductSetup;

use App\Http\Controllers\Controller;
use App\Models\ProductSetup\ProCategory;
use App\Models\ProductSetup\ProType;
use App\Models\WebSetup\BrandName;
use App\Models\WebSetup\SidebarNav;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class ProCategoryController extends Controller
{

    public function __construct()
    {
        $this->middleware('permission:create_pro_category', ['only' => ['create']]);
        $this->middleware('permission:view_pro_category', ['only' => ['index']]);
        $this->middleware('permission:update_pro_category', ['only' => ['edit']]);
        $this->middleware('permission:delete_pro_category', ['only' => ['destroy']]);
    }
    public function index()
    {
        $this->checkLogin();
        return view('ProductSetup.category.show');
    }
    public function create()
    {
        $this->checkLogin();
        return view('ProductSetup.category.create');
    }
    public function edit($id)
    {
        $this->checkLogin();
        $navItem = ProCategory::where('uid', $id)->first();

        return view('ProductSetup.category.edit', [ 'navItem' => $navItem]);
    }
    public function store(Request $request)
    {
        try {
            if ($request['id'] == "") {
                $validator = Validator::make($request->all(), [
                    'name' => 'required',
                    'status' => 'required',
                ]);

                if ($validator->fails()) {
                    return json_encode(array(
                        'statusCode' => 204,
                        'statusMsg' => 'Validation Error.',
                        'errors' => $validator->errors()
                    ));
                }

                ProCategory::create([
                    'name' => $request->name,
                    'uid' => Str::uuid(),
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
                $navItem = ProCategory::find($id);

                if (!$navItem) {
                    return response()->json([
                        'statusCode' => 404,
                        'statusMsg' => 'Item not found.',
                    ]);
                }

                $validator = Validator::make($request->all(), [
                    'name' => 'required',
                    'status' => 'required',
                ]);

                if ($validator->fails()) {
                    return json_encode(array(
                        'statusCode' => 204,
                        'statusMsg' => 'Validation Error.',
                        'errors' => $validator->errors()
                    ));
                }

                $navItem->update([
                    'name' => $request->name,
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
            $permission = ProCategory::where('uid', $id)->first();
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
    public function getData(Request $request)
    {
        $query = DB::table('sms_procategory as p')
            ->select('p.id',  'p.uid','p.name', 'p.status')
            ->where('p.status', '!=', 'Deleted');
        if (isset($request->search['value'])) {
            $query->where('name', 'like', '%' . $request->search['value'] . '%');
        }
        if ($request->has('order')) {
            $query->orderBy($request->columns[$request->order[0]['column']]['data'], $request->order[0]['dir']);
        }
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
