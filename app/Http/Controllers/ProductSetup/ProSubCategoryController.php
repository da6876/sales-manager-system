<?php

namespace App\Http\Controllers\ProductSetup;

use App\Http\Controllers\Controller;
use App\Models\ProductSetup\ProCategory;
use App\Models\ProductSetup\ProSubCategory;
use App\Models\WebSetup\BrandName;
use App\Models\WebSetup\SidebarNav;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class ProSubCategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('permission:create_pro_sub_category', ['only' => ['create']]);
        $this->middleware('permission:view_pro_sub_category', ['only' => ['index']]);
        $this->middleware('permission:update_pro_sub_category', ['only' => ['edit']]);
        $this->middleware('permission:delete_pro_sub_category', ['only' => ['destroy']]);
    }
    public function index()
    {
        $this->checkLogin();
        return view('ProductSetup.subcategory.show');
    }
    public function create()
    {
        $this->checkLogin();

        $Category = ProCategory::where('status', 'A')->get();
        return view('ProductSetup.subcategory.create', [ 'Category' => $Category]);
    }
    public function edit($id)
    {
        $this->checkLogin();
        $navItem = ProSubCategory::where('uid', $id)->first();
        $Category = ProCategory::where('status', 'A')->get();
        return view('ProductSetup.subcategory.edit', [ 'navItem' => $navItem,'Category' => $Category,]);
    }
    public function store(Request $request)
    {
        try {
            if ($request['id'] == "") {
                $validator = Validator::make($request->all(), [
                    'name' => 'required',
                    'cat_id' => 'required',
                    'status' => 'required',
                ]);

                if ($validator->fails()) {
                    return json_encode(array(
                        'statusCode' => 204,
                        'statusMsg' => 'Validation Error.',
                        'errors' => $validator->errors()
                    ));
                }

                ProSubCategory::create([
                    'name' => $request->name,
                    'cat_id' => $request->cat_id,
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
                $navItem = ProSubCategory::find($id);

                if (!$navItem) {
                    return response()->json([
                        'statusCode' => 404,
                        'statusMsg' => 'Item not found.',
                    ]);
                }

                $validator = Validator::make($request->all(), [
                    'name' => 'required',
                    'cat_id' => 'required',
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
                    'cat_id' => $request->cat_id,
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
            $permission = ProSubCategory::where('uid', $id)->first();
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
        $query = DB::table('sms_prosubcategory as p')
            ->join('sms_procategory',  'p.cat_id','sms_procategory.id')
            ->select('p.id',  'p.uid','p.name','sms_procategory.name as cat_name', 'p.status')
            ->where('p.status', '!=', 'Deleted');
        if (isset($request->search['value'])) {
            $query->where('p.name', 'like', '%' . $request->search['value'] . '%');
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
