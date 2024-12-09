<?php

namespace App\Http\Controllers\SaleInfo;

use App\Exports\SmsOrdersExport;
use App\Http\Controllers\Controller;
use App\Models\SellInfo\Order;
use App\Models\SellInfo\OrderDtl;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Facades\Excel;
use Carbon\Carbon;

class SaleInfoController extends Controller
{
    public function __construct()
    {
        $this->middleware('permission:create_customer', ['only' => ['create']]);
        $this->middleware('permission:view_customer', ['only' => ['index']]);
        $this->middleware('permission:update_customer', ['only' => ['edit']]);
        $this->middleware('permission:delete_customer', ['only' => ['destroy']]);
    }

    public function POS()
    {
        return view('SellInfo.create');
    }

    public function printInvoice($order_number)
    {
        $orderData = Order::with('customer')->where('order_number', $order_number)->firstOrFail();

        // Fetch order details with related product data
        $orderDtlData = OrderDtl::with('product')->where('order_id', $orderData->id)->get();

        // Pass the data to the view
        return view('reports.invoice', compact('orderData', 'orderDtlData'));
    }

    public function index()
    {
        return view('SellInfo.show');
    }

    public function getData(Request $request)
    {
        // Initialize the query with joins and selects
        $query = DB::table('sms_orders as o')
            ->join('sms_customers as c', 'o.cust_id', '=', 'c.id')
            ->select('o.*', DB::raw("CONCAT(c.name, ' (', c.phone, ')') as customer_info"));

        // Apply search filters
        if (isset($request->search['value'])) {
            $searchValue = '%' . $request->search['value'] . '%';
            $query->where(function ($query) use ($searchValue) {
                $query->where('c.name', 'like', $searchValue)
                    ->orWhere('o.order_number', 'like', $searchValue);
            });
        }

        // Apply sorting
        if ($request->has('order')) {
            $columnIndex = $request->order[0]['column'];
            $direction = $request->order[0]['dir'];
            $columnName = $request->columns[$columnIndex]['data'] ?? 'id'; // Default column if not found
            $query->orderBy($columnName, $direction);
        }

        // Calculate the total count of records
        $totalCount = $query->count();

        // Apply pagination and get the data
        $data = $query->skip($request->input('start', 0))
            ->take($request->input('length', 10))
            ->get();

        // Calculate the filtered count (total count if no filters applied)
        $filteredCount = $totalCount;

        return response()->json([
            'draw' => $request->draw,
            'recordsTotal' => $totalCount,
            'recordsFiltered' => $filteredCount,
            'data' => $data,
        ]);
    }

    public function getSaleInfoData()
    {
        return $data = DB::table('sms_orders as o')
            ->join('sms_customers as c', 'o.cust_id', '=', 'c.id')
            ->select('o.*', 'c.name', 'c.phone')
            ->get();
        /*return $data = DB::table('sms_orders as o')
            ->join('sms_customers as c', 'o.cust_id', '=', 'c.id')
            //->select('o.*', DB::raw("CONCAT(c.name, ' (', c.phone, ')') as customer_info"))
            ->select('o.*', 'c.name', ' c.phone')
            ->get();
        return response()->json($data);*/
    }

    public function exportCsv()
    {
        $dateTime = Carbon::now()->format('Y-m-d_H-i-s');
        $filename = "sms_orders_{$dateTime}.csv";

        return Excel::download(new SmsOrdersExport, $filename, \Maatwebsite\Excel\Excel::CSV);
    }

    public function exportExcel()
    {
        $dateTime = Carbon::now()->format('Y-m-d_H-i-s');
        $filename = "sms_orders_{$dateTime}.xlsx";

        return Excel::download(new SmsOrdersExport, $filename);
    }
}
