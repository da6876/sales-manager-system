<?php

namespace App\Http\Controllers\SaleInfo;

use App\Http\Controllers\Controller;
use App\Models\SellInfo\Customer;
use App\Services\LogService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class CustomerController extends Controller
{
    public function __construct()
    {
        $this->middleware('permission:create_customer', ['only' => ['create']]);
        $this->middleware('permission:view_customer', ['only' => ['index']]);
        $this->middleware('permission:update_customer', ['only' => ['edit']]);
        $this->middleware('permission:delete_customer', ['only' => ['destroy']]);
    }

    public function index()
    {
        $this->checkLogin();
        return view('SellInfo.customer.show');
    }

    public function create()
    {
        $this->checkLogin();
        return view('SellInfo.customer.create');
    }

    public function edit($id)
    {
        $this->checkLogin();
        $navItem = Customer::where('uid', $id)->first();

        return view('SellInfo.customer.edit', ['navItem' => $navItem]);
    }

    public function store(Request $request)
    {
        try {
            if ($request['id'] == "") {
                $validator = Validator::make($request->all(), [
                    'name' => 'required',
                    'phone' => 'required',
                    'email' => 'required',
                    'address' => 'required',
                ]);

                if ($validator->fails()) {
                    return json_encode(array(
                        'statusCode' => 204,
                        'statusMsg' => 'Validation Error.',
                        'errors' => $validator->errors()
                    ));
                }

                $customer = Customer::create([
                    'uid' => Str::uuid(),
                    'name' => $request->name,
                    'phone' => $request->phone,
                    'email' => $request->email,
                    'address' => $request->address,
                    'status' => 'A',
                    'create_by' => auth()->user()->id,
                    'create_date' => $this->getCurrentDateTime()
                ]);

                LogService::log(auth()->user()->id, 'Customer', 'create', $customer->getAttributes());

                return json_encode(array(
                    "statusCode" => 200,
                    "id" => $customer->id,
                    "statusMsg" => "Data Added Successfully"
                ));
            }

            else {
                $id = $request['id'];
                $navItem = Customer::find($id);

                if (!$navItem) {
                    return response()->json([
                        'statusCode' => 404,
                        'statusMsg' => 'Item not found.',
                    ]);
                }

                $validator = Validator::make($request->all(), [
                    'name' => 'required',
                    'phone' => 'required',
                    'email' => 'required',
                    'address' => 'required',
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
                    'phone' => $request->phone,
                    'email' => $request->email,
                    'address' => $request->address,
                    'status' => 'A',
                    'update_by' => auth()->user()->id,
                    'update_date' => $this->getCurrentDateTime()
                ]);
                LogService::log(auth()->user()->id, 'Customer', 'update', $navItem->getChanges());

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

    public function destroy($id)
    {
        try {
            $permission = Customer::where('uid', $id)->first();
            $permission->update([
                'status' => "Deleted",
                'update_by' => auth()->user()->id,
                'update_date' => $this->getCurrentDateTime()
            ]);
            LogService::log(auth()->user()->id, 'Customer', 'delete', $permission->getAttributes());

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
        $query = DB::table('sms_customers as p')
            ->select('p.id', 'p.uid', 'p.name', 'p.phone', 'p.email', 'p.address', 'p.status')
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
    public function searchByPhone(Request $request)
    {
        $phone = $request->input('phone');
        $customers = Customer::where('phone', 'like', "%$phone%")->get(['id', 'name','address', 'phone', 'email']);

        return response()->json($customers);
    }

}
