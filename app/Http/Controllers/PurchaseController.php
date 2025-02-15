<?php

namespace App\Http\Controllers;

use App\Models\inventory\ProType;
use App\Models\Purchase;
use App\Models\Stock;
use App\Services\LogService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
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
                    'Product_ID' => 'required',
                    'Category_ID' => 'required',
                    'Sub_Category_ID' => 'required',
                    'Vendor_ID' => 'required',
                    'Challan_Number' => 'required',
                    'Unit' => 'required',
                    'pro_type' => 'required',
                    'Color' => 'required',
                    'Size' => 'required',
                    'Purchase_Qty' => 'required',
                    'Purchase_Rate' => 'required',
                    'Sales_Rate' => 'required',
                    'Purchase_Payment_Type' => 'required',
                    'image' => 'required',
                ]);

                if ($validator->fails()) {
                    return response()->json([
                        'statusCode' => 204,
                        'statusMsg' => 'Validation Error.',
                        'errors' => $validator->errors()
                    ]);
                }

                if ($request->hasFile('image')) {
                    $ran_one = uniqid();
                    $ext_one = strtolower($request->image->getClientOriginalExtension());
                    $one_full_name = $ran_one . '.' . $ext_one;
                    $upload_path_one = "assets/purchase_img/";
                    $image1fileUrl = $upload_path_one . $one_full_name;
                    $request->image->move($upload_path_one, $one_full_name);
                } else {
                    $image1fileUrl = "";
                }

                DB::beginTransaction();

                try {
                    $rowData = Purchase::create([
                        'Product_ID' => $request->Product_ID,
                        'Category_ID' => $request->Category_ID,
                        'Sub_Category_ID' => $request->Sub_Category_ID,
                        'Vendor_ID' => $request->Vendor_ID,
                        'Challan_Number' => $request->Challan_Number,
                        'Unit' => $request->Unit,
                        'pro_type' => $request->pro_type,
                        'Color' => $request->Color,
                        'Size' => $request->Size,
                        'Purchase_Qty' => $request->Purchase_Qty,
                        'Purchase_Rate' => $request->Purchase_Rate,
                        'Sales_Rate' => $request->Sales_Rate,
                        'Purchase_Payment_Type' => $request->Purchase_Payment_Type,
                        'Purchase_Date' => $this->getCurrentDateTime(),
                        'image' => $image1fileUrl,
                        'status' => 'A',
                        'create_by' => auth()->user()->id,
                        'create_date' => $this->getCurrentDateTime()
                    ]);

                    $stockData = [];
                    for ($i = 0; $i < $request->Purchase_Qty; $i++) {
                        $stockData[] = [
                            'Purchase_ID' => $rowData->id,
                            'pro_qrcode' => Str::uuid(),  // Generate unique QR code
                            'Product_ID' => $request->Product_ID,
                            'Category_ID' => $request->Category_ID,
                            'Sub_Category_ID' => $request->Sub_Category_ID,
                            'Purchase_Date' => $this->getCurrentDateTime(),
                            'status' => 'A',
                            'create_by' => auth()->user()->id,
                            'create_date' => $this->getCurrentDateTime(),
                        ];
                    }

                    Stock::insert($stockData);

                    DB::commit();

                    LogService::log(auth()->user()->id, 'Product Purchases', 'create', $rowData->getAttributes());
                    LogService::log(auth()->user()->id, 'Product Stock', 'create', $stockData);

                    return json_encode(array(
                        "statusCode" => 200,
                        "statusMsg" => "Data Added Successfully"
                    ));

                } catch (\Exception $e) {
                    DB::rollBack();
                    return json_encode(array(
                        "statusCode" => 500,
                        "statusMsg" => $e->getMessage()
                    ));

                }
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
            $permission = Purchase::where('uid', $id)->first();
            $permission->update([
                'status' => "Deleted",
                'update_by' => auth()->user()->id,
                'update_date' => $this->getCurrentDateTime()
            ]);

            LogService::log(auth()->user()->id, 'Product Purchase', 'delete', $permission->getAttributes());

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
        elseif ($ViewType == "Vendor") {
            try {
                $Division = DB::table('sms_vendor')
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
        elseif($ViewType == "Size"){
            $pro_type_id = request()->input('pro_type_id');
            try {
                $size = DB::table('sms_size')
                    ->where('status', '=', 'A')
                    ->where('pro_type_id', '=', $pro_type_id)
                    ->get();
                return json_encode($size);
            } catch (\Exception $e) {
                DB::rollBack();
                return ["o_status_message" => $e->getMessage()];
            }
        }
        elseif($ViewType == "Color"){
            $pro_type_id = request()->input('pro_type_id');
            try {
                $size = DB::table('sms_color')
                    ->where('status', '=', 'A')
                    ->where('pro_type_id', '=', $pro_type_id)
                    ->get();
                return json_encode($size);
            } catch (\Exception $e) {
                DB::rollBack();
                return ["o_status_message" => $e->getMessage()];
            }
        }
    }
    public function getData(Request $request)
    {
        // Start building the query to fetch stock data
        $query = DB::table('sms_stock as s')
            ->leftJoin('sms_purchases as ps', 'ps.id', '=', 's.Purchase_ID')
            ->leftJoin('sms_proinfo as p', 'p.id', '=', 's.Product_ID')
            ->leftJoin('sms_procategory as c', 'c.id', '=', 's.Category_ID')
            ->leftJoin('sms_prosubcategory as sc', 'sc.id', '=', 's.Sub_Category_ID')
            ->leftJoin('sms_color as col', 'col.id', '=', 'ps.Color')  // Assuming `Color` is stored as an ID
            ->leftJoin('sms_size as sz', 'sz.id', '=', 'ps.Size')  // Assuming `Size` is stored as an ID
            ->select(
                's.id',
                's.Purchase_ID',
                's.pro_qrcode',
                's.Product_ID',
                's.Category_ID',
                's.Sub_Category_ID',
                's.Purchase_Date',
                's.status',
                's.create_by',
                's.create_date',
                'p.title AS product_name',
                'c.name AS category_name',
                'sc.name AS sub_category_name',
                'col.name AS color_name',
                'sz.name AS size_name'
            )
            ->where('s.status', '!=', 'Deleted');  // Exclude deleted stock records

        // Apply search if provided
        if (isset($request->search['value'])) {
            $searchValue = $request->search['value'];
            $query->where(function ($q) use ($searchValue) {
                $q->where('p.title', 'like', '%' . $searchValue . '%')
                    ->orWhere('c.name', 'like', '%' . $searchValue . '%')
                    ->orWhere('sc.name', 'like', '%' . $searchValue . '%')
                    ->orWhere('col.name', 'like', '%' . $searchValue . '%')
                    ->orWhere('sz.name', 'like', '%' . $searchValue . '%');
            });
        }

        // Apply ordering if provided
        if ($request->has('order')) {
            $column = $request->columns[$request->order[0]['column']]['data'];
            $direction = $request->order[0]['dir'];
            $query->orderBy($column, $direction);
        } else {
            // Default order by Purchase_Date if no specific order is given
            $query->orderBy('s.Purchase_Date', 'desc');
        }

        // Count the total and filtered records for pagination
        $totalCount = DB::table('sms_stock')->where('status', '!=', 'Deleted')->count();  // Total without filters
        $filteredCount = $query->count();  // Count after filters applied

        // Fetch the data with pagination
        $data = $query->skip($request->input('start', 0))  // Offset for pagination
        ->take($request->input('length', 10))  // Number of records per page
        ->get();

        // Return the data as a JSON response with pagination details
        return response()->json([
            'draw' => $request->draw,
            'recordsTotal' => $totalCount,
            'recordsFiltered' => $filteredCount,
            'data' => $data,
        ]);
    }
}
