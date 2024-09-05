<?php

namespace App\Http\Controllers\ProductSetup;

use App\Http\Controllers\Controller;
use App\Models\ProductSetup\ProBrand;
use App\Models\ProductSetup\ProCategory;
use App\Models\ProductSetup\ProInfo;
use App\Models\ProductSetup\ProSubCategory;
use App\Models\ProductSetup\ProType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class ProInfoController extends Controller
{

    public function index()
    {
        $this->checkLogin();
        return view('ProductSetup.proinfo.show');
    }

    public function create()
    {
        $this->checkLogin();

        $Category = ProCategory::where('status', 'A')->get();
        $SubCategory = ProSubCategory::where('status', 'A')->get();
        $Brand = ProBrand::where('status', 'A')->get();
        $Type = ProType::where('status', 'A')->get();
        return view('ProductSetup.proinfo.create', ['Category' => $Category, 'SubCategory' => $SubCategory, 'Brand' => $Brand, 'Type' => $Type]);
    }

    public function edit($id)
    {
        $this->checkLogin();
        $navItem = ProInfo::where('uid', $id)->first();

        $Category = ProCategory::where('status', 'A')->get();
        $SubCategory = ProSubCategory::where('status', 'A')->get();
        $Brand = ProBrand::where('status', 'A')->get();
        $Type = ProType::where('status', 'A')->get();
        return view('ProductSetup.proinfo.edit', ['navItem' => $navItem,'Category' => $Category, 'SubCategory' => $SubCategory, 'Brand' => $Brand, 'Type' => $Type]);
    }

    public function store(Request $request)
    {
        try {
            if ($request['id'] == "") {
                $validator = Validator::make($request->all(), [
                    'type_id' => 'required',
                    'cat_id' => 'required',
                    'subcat_id' => 'required',
                    'brand_id' => 'required',
                    'title' => 'required',
                    'subtitle' => 'required',
                    'details' => 'required',
                    'price_mrp' => 'required',
                    'price_rp' => 'required',
                    'image1' => 'required',
                    'status' => 'required',
                ]);

                if ($validator->fails()) {
                    return json_encode(array(
                        'statusCode' => 204,
                        'statusMsg' => 'Validation Error.',
                        'errors' => $validator->errors()
                    ));
                }

                if ($request->hasFile('image1')) {
                    $ran_one = uniqid();
                    $ext_one = strtolower($request->image1->getClientOriginalExtension());
                    $one_full_name = $ran_one . '.' . $ext_one;
                    $upload_path_one = "assets/product_img/";
                    $image1fileUrl = $upload_path_one . $one_full_name;
                    $request->image1->move($upload_path_one, $one_full_name);
                } else {
                    $image1fileUrl = "";
                }
                if ($request->hasFile('image2')) {
                    $ran_one = uniqid();
                    $ext_one = strtolower($request->image2->getClientOriginalExtension());
                    $one_full_name = $ran_one . '.' . $ext_one;
                    $upload_path_one = "assets/product_img/";
                    $image2fileUrl = $upload_path_one . $one_full_name;
                    $request->image2->move($upload_path_one, $one_full_name);
                } else {
                    $image2fileUrl = "";
                }
                if ($request->hasFile('image3')) {
                    $ran_one = uniqid();
                    $ext_one = strtolower($request->image3->getClientOriginalExtension());
                    $one_full_name = $ran_one . '.' . $ext_one;
                    $upload_path_one = "assets/product_img/";
                    $image3fileUrl = $upload_path_one . $one_full_name;
                    $request->image3->move($upload_path_one, $one_full_name);
                } else {
                    $image3fileUrl = "";
                }
                if ($request->hasFile('image4')) {
                    $ran_one = uniqid();
                    $ext_one = strtolower($request->image4->getClientOriginalExtension());
                    $one_full_name = $ran_one . '.' . $ext_one;
                    $upload_path_one = "assets/product_img/";
                    $image4fileUrl = $upload_path_one . $one_full_name;
                    $request->image4->move($upload_path_one, $one_full_name);
                } else {
                    $image4fileUrl = "";
                }

                ProInfo::create([
                    'name' => $request->name,
                    'type_id' => $request->type_id,
                    'cat_id' => $request->cat_id,
                    'subcat_id' => $request->subcat_id,
                    'brand_id' => $request->brand_id,
                    'title' => $request->title,
                    'subtitle' => $request->subtitle,
                    'details' => $request->details,
                    'price_mrp' => $request->price_mrp,
                    'price_rp' => $request->price_rp,
                    'image1' => $image1fileUrl,
                    'image2' => $image2fileUrl,
                    'image3' => $image3fileUrl,
                    'image4' => $image4fileUrl,
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
                $navItem = ProInfo::find($id);

                if (!$navItem) {
                    return json_encode(array(
                        'statusCode' => 404,
                        'statusMsg' => 'Item not found.'
                    ));
                }

                $validator = Validator::make($request->all(), [
                    'type_id' => 'required',
                    'cat_id' => 'required',
                    'subcat_id' => 'required',
                    'brand_id' => 'required',
                    'title' => 'required',
                    'subtitle' => 'required',
                    'details' => 'required',
                    'price_mrp' => 'required',
                    'price_rp' => 'required',
                    'status' => 'required',
                ]);

                if ($validator->fails()) {
                    return json_encode(array(
                        'statusCode' => 204,
                        'statusMsg' => 'Validation Error.',
                        'errors' => $validator->errors()
                    ));
                }

                if ($request->hasFile('image1')) {
                    $oldImage = $navItem->image1;
                    if ($oldImage && file_exists(public_path($oldImage))) {
                        unlink(public_path($oldImage));
                    }
                    $ran_one = uniqid();
                    $ext_one = strtolower($request->image1->getClientOriginalExtension());
                    $one_full_name = $ran_one . '.' . $ext_one;
                    $upload_path_one = "assets/product_img/";
                    $image1fileUrl = $upload_path_one . $one_full_name;
                    $request->image1->move($upload_path_one, $one_full_name);
                } else {
                    $image1fileUrl = $navItem->image1;
                }
                if ($request->hasFile('image2')) {
                    $oldImage = $navItem->image2;
                    if ($oldImage && file_exists(public_path($oldImage))) {
                        unlink(public_path($oldImage));
                    }
                    $ran_one = uniqid();
                    $ext_one = strtolower($request->image2->getClientOriginalExtension());
                    $one_full_name = $ran_one . '.' . $ext_one;
                    $upload_path_one = "assets/product_img/";
                    $image2fileUrl = $upload_path_one . $one_full_name;
                    $request->image2->move($upload_path_one, $one_full_name);
                } else {
                    $image2fileUrl = $navItem->image2;
                }
                if ($request->hasFile('image3')) {
                    $oldImage = $navItem->image3;
                    if ($oldImage && file_exists(public_path($oldImage))) {
                        unlink(public_path($oldImage));
                    }
                    $ran_one = uniqid();
                    $ext_one = strtolower($request->image3->getClientOriginalExtension());
                    $one_full_name = $ran_one . '.' . $ext_one;
                    $upload_path_one = "assets/product_img/";
                    $image3fileUrl = $upload_path_one . $one_full_name;
                    $request->image3->move($upload_path_one, $one_full_name);
                } else {
                    $image3fileUrl = $navItem->image3;
                }
                if ($request->hasFile('image4')) {
                    $oldImage = $navItem->image4;
                    if ($oldImage && file_exists(public_path($oldImage))) {
                        unlink(public_path($oldImage));
                    }
                    $ran_one = uniqid();
                    $ext_one = strtolower($request->image4->getClientOriginalExtension());
                    $one_full_name = $ran_one . '.' . $ext_one;
                    $upload_path_one = "assets/product_img/";
                    $image4fileUrl = $upload_path_one . $one_full_name;
                    $request->image4->move($upload_path_one, $one_full_name);
                } else {
                    $image4fileUrl = $navItem->image4;
                }

                $navItem->update([
                    'name' => $request->name,
                    'type_id' => $request->type_id,
                    'cat_id' => $request->cat_id,
                    'subcat_id' => $request->subcat_id,
                    'brand_id' => $request->brand_id,
                    'title' => $request->title,
                    'subtitle' => $request->subtitle,
                    'details' => $request->details,
                    'price_mrp' => $request->price_mrp,
                    'price_rp' => $request->price_rp,
                    'image1' => $image1fileUrl,
                    'image2' => $image2fileUrl,
                    'image3' => $image3fileUrl,
                    'image4' => $image4fileUrl,
                    'uid' => Str::uuid(),
                    'status' => $request->status,
                    'update_by' => auth()->user()->id,
                    'update_date' => $this->getCurrentDateTime()
                ]);

                return json_encode(array(
                    "statusCode" => 200,
                    "statusMsg" => "Data Updated Successfully"
                ));
            }

        }
        catch (\Exception $e) {
            return response()->json([
                "statusCode" => 400,
                "statusMsg" => $e->getMessage()
            ]);
        }
    }

    public function destroy($id){
        try {
            $permission = ProInfo::where('uid', $id)->first();
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
        $query = DB::table('sms_proinfo as p')
            ->select('p.id', 'p.uid', 'p.title','p.image1', 'p.status')
            ->where('p.status', '!=', 'Deleted');
        if (isset($request->search['value'])) {
            $query->where('p.title', 'like', '%' . $request->search['value'] . '%');
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

    public function uploadImage(Request $request)
    {

    }
}
