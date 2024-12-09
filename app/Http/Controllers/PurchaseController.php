<?php

namespace App\Http\Controllers;

use App\Models\inventory\ProType;
use App\Services\LogService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class PurchaseController extends Controller
{
    public function index()
    {
        $this->checkLogin();
        return view('inventory.purchase.show');
    }
    public function create()
    {
        $this->checkLogin();
        return view('inventory.purchase.create');
    }
    public function edit($id)
    {
        $this->checkLogin();
        $navItem = ProType::where('uid', $id)->first();

        return view('inventory.purchase.edit', [ 'navItem' => $navItem]);
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

                $rowData = ProType::create([
                    'uid' => Str::uuid(),
                    'name' => $request->name,
                    'status' => $request->status,
                    'create_by' => auth()->user()->id,
                    'create_date' => $this->getCurrentDateTime()
                ]);

                LogService::log(auth()->user()->id, 'Product Type', 'create', $rowData->getAttributes());

                return json_encode(array(
                    "statusCode" => 200,
                    "statusMsg" => "Data Added Successfully"
                ));
            }
            else {
                $id = $request['id'];
                $navItem = ProType::find($id);

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

                $rowData = $navItem->update([
                    'name' => $request->name,
                    'status' => $request->status,
                    'update_by' => auth()->user()->id,
                    'update_date' => $this->getCurrentDateTime()
                ]);

                LogService::log(auth()->user()->id, 'Product Type', 'update', $navItem->getChanges());

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
            $permission = ProType::where('uid', $id)->first();
            $permission->update([
                'status' => "Deleted",
                'update_by' => auth()->user()->id,
                'update_date' => $this->getCurrentDateTime()
            ]);

            LogService::log(auth()->user()->id, 'Product Type', 'delete', $permission->getAttributes());

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

    public function dropdownSelect()
    {
        $ViewType = request()->input('ViewType');

        if ($ViewType == "ProductType") {

            try {
                $Division = DB::table('sms_protype')
                    ->where('status', '=', 'A')
                    ->get();
                return json_encode($Division);
            } catch (\Exception $e) {
                DB::rollBack();
                return ["o_status_message" => $e->getMessage()];
            }

        }
        elseif ($ViewType == "Category") {
            try {
                $Division = DB::table('sms_procategory')
                    ->where('status', '=', 'A')
                    ->get();
                return json_encode($Division);
            } catch (\Exception $e) {
                DB::rollBack();
                return ["o_status_message" => $e->getMessage()];
            }

        }
        elseif ($ViewType == "Product") {
            try {
                $Division = DB::table('sms_proinfo')
                    ->where('status', '=', 'A')
                    ->get();
                return json_encode($Division);
            } catch (\Exception $e) {
                DB::rollBack();
                return ["o_status_message" => $e->getMessage()];
            }

        }
        elseif($ViewType == "SubCategory"){
            $Category_ID = request()->input('Category_ID');
            try {
                $districts = DB::table('sms_prosubcategory')
                    ->where('status', '=', 'A')
                    ->where('cat_id', '=', $Category_ID)
                    ->get();
                return json_encode($districts);
            } catch (\Exception $e) {
                DB::rollBack();
                return ["o_status_message" => $e->getMessage()];
            }
        }
        elseif($ViewType == "Thana"){

            $dis_code = request()->input('dis_code');
            try {
                $thana = DB::table('ig_thana')
                    ->where('status', '=', 'Active')
                    ->where('dis_code', '=', $dis_code)
                    ->get();
                return json_encode($thana);
            } catch (\Exception $e) {
                DB::rollBack();
                return ["o_status_message" => $e->getMessage()];
            }
        }
        elseif($ViewType == "Project"){

            $thana_code = request()->input('thana_code');
            try {
                $location = DB::table('ig_project')
                    ->where('status', '=', 'Active')
                    ->where('thana_code', '=', $thana_code)
                    ->get();
                return json_encode($location);
            } catch (\Exception $e) {
                DB::rollBack();
                return ["o_status_message" => $e->getMessage()];
            }
        }
    }
    public function getData(Request $request)
    {
        $query = DB::table('sms_protype as p')
            ->select('p.id','p.uid',  'p.name', 'p.status')
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
