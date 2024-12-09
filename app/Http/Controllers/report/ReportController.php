<?php

namespace App\Http\Controllers\report;

use App\Http\Controllers\Controller;
use App\Models\ProductSetup\ProInfo;
use App\Models\SellInfo\Customer;
use App\Models\SellInfo\Order;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ReportController extends Controller
{
    public function topCustomers()
    {
        $userId = auth()->user()->id;
        if (auth()->user()->getRoleNames()->first() == 'Branch Admin' || auth()->user()->getRoleNames()->first() == 'Branch Manager') {
            $topCustomers = DB::table('sms_customers as c')
                ->join('sms_orders as o', 'c.id', '=', 'o.cust_id')
                ->select('c.id', 'c.name', 'c.phone','c.email','c.address', DB::raw('SUM(o.total_amount) as total_spent'))
                ->groupBy('c.id', 'c.name', 'c.phone', 'c.email', 'c.address')
                ->where('c.create_by', '=', $userId)
                ->orderBy('total_spent', 'desc')
                ->limit(10) // Get top 10 customers
                ->get();
        }

        else if (auth()->user()->getRoleNames()->first() == 'Admin' || auth()->user()->getRoleNames()->first() == 'Root'){
            // Fetch top customers with total amount spent
            $topCustomers = DB::table('sms_customers as c')
                ->join('sms_orders as o', 'c.id', '=', 'o.cust_id')
                ->select('c.id', 'c.name', 'c.phone','c.email','c.address', DB::raw('SUM(o.total_amount) as total_spent'))
                ->groupBy('c.id', 'c.name', 'c.phone', 'c.email', 'c.address')
                ->orderBy('total_spent', 'desc')
                ->limit(10) // Get top 10 customers
                ->get();
        }

        else{
            $topCustomers = "";
        }

        return view('reports.top_customers', compact('topCustomers'));
    }
    public function topSellingProducts()
    {
        $userId = auth()->user()->id;

        if (auth()->user()->getRoleNames()->first() == 'Branch Admin' || auth()->user()->getRoleNames()->first() == 'Branch Manager') {
            $topProducts = DB::table('sms_order_dtl as od')
                ->join('sms_orders as o', 'od.order_id', '=', 'o.id')
                ->join('sms_proinfo as p', 'od.pro_id', '=', 'p.id')
                ->select('p.id', 'p.title', DB::raw('SUM(od.quantity) as total_sold'), DB::raw('SUM(od.total_price) as total_revenue'))
                ->where('o.status', 'A')
                ->where('od.create_by', '=', $userId)
                ->groupBy('p.id', 'p.title')
                ->orderBy('total_sold', 'desc')
                ->limit(10) // Get top 10 selling products
                ->get();
        }

        else if (auth()->user()->getRoleNames()->first() == 'Admin' || auth()->user()->getRoleNames()->first() == 'Root'){
            $topProducts = DB::table('sms_order_dtl as od')
                ->join('sms_orders as o', 'od.order_id', '=', 'o.id')
                ->join('sms_proinfo as p', 'od.pro_id', '=', 'p.id')
                ->select('p.id', 'p.title', DB::raw('SUM(od.quantity) as total_sold'), DB::raw('SUM(od.total_price) as total_revenue'))
                ->where('o.status', 'A') // Assuming 'A' means completed orders
                ->groupBy('p.id', 'p.title')
                ->orderBy('total_sold', 'desc')
                ->limit(10) // Get top 10 selling products
                ->get();
        }

        else{
            $topProducts = "";
        }

        return view('reports.top_selling_products', compact('topProducts'));
    }
    public function getChatData()
    {
        $userId = auth()->user()->id;
        if (auth()->user()->getRoleNames()->first() == 'Branch Admin' || auth()->user()->getRoleNames()->first() == 'Branch Manager') {
            $customers = Customer::selectRaw('COUNT(*) as count, DATE(create_date) as date')
                ->where('create_by', '=', $userId)
                ->groupBy('date')
                ->pluck('count', 'date');
            $orders = Order::selectRaw('COUNT(*) as count, DATE(order_date) as date')
                ->where('create_by', '=', $userId)
                ->groupBy('date')
                ->pluck('count', 'date');

            $totalCustomers = Customer::where('create_by', '=', $userId)->count();

            $revenueThisMonth = Order::whereMonth('order_date', date('m'))
                ->whereYear('order_date', date('Y'))
                ->where('create_by', '=', $userId)
                ->sum('total_amount');
            $salesToday = Order::whereDate('order_date', date('Y-m-d'))
                ->where('create_by', '=', $userId)->count();

            // Previous period data for percentage calculation
            $previousCustomers = Customer::whereYear('create_date', date('Y', strtotime('-1 month')))
                ->where('create_by', '=', $userId)->count();
            $previousRevenue = Order::whereMonth('order_date', date('m', strtotime('-1 month')))
                ->whereYear('order_date', date('Y'))
                ->where('create_by', '=', $userId)
                ->sum('total_amount');

            $previousSales = Order::whereDate('order_date', date('Y-m-d', strtotime('-1 day')))
                ->where('create_by', '=', $userId)
                ->count();

            // Calculate percentage changes
            $customerChange = $previousCustomers > 0 ? (($totalCustomers - $previousCustomers) / $previousCustomers) * 100 : 0;
            $revenueChange = $previousRevenue > 0 ? (($revenueThisMonth - $previousRevenue) / $previousRevenue) * 100 : 0;
            $salesChange = $previousSales > 0 ? (($salesToday - $previousSales) / $previousSales) * 100 : 0;
        }

        else if (auth()->user()->getRoleNames()->first() == 'Admin' || auth()->user()->getRoleNames()->first() == 'Root') {
            $customers = Customer::selectRaw('COUNT(*) as count, DATE(create_date) as date')
                ->groupBy('date')
                ->pluck('count', 'date');
            $orders = Order::selectRaw('COUNT(*) as count, DATE(order_date) as date')
                ->groupBy('date')
                ->pluck('count', 'date');
            // Total customers
            $totalCustomers = Customer::count();

            // Revenue this month (assuming you have a total_amount field)
            $revenueThisMonth = Order::whereMonth('order_date', date('m'))
                ->whereYear('order_date', date('Y'))
                ->sum('total_amount');
            // Sales today
            $salesToday = Order::whereDate('order_date', date('Y-m-d'))->count();
            // Previous period data for percentage calculation
            $previousCustomers = Customer::whereYear('create_date', date('Y', strtotime('-1 month')))
                ->count();
            $previousRevenue = Order::whereMonth('order_date', date('m', strtotime('-1 month')))
                ->whereYear('order_date', date('Y'))
                ->sum('total_amount');

            $previousSales = Order::whereDate('order_date', date('Y-m-d', strtotime('-1 day')))
                ->count();

            // Calculate percentage changes
            $customerChange = $previousCustomers > 0 ? (($totalCustomers - $previousCustomers) / $previousCustomers) * 100 : 0;
            $revenueChange = $previousRevenue > 0 ? (($revenueThisMonth - $previousRevenue) / $previousRevenue) * 100 : 0;
            $salesChange = $previousSales > 0 ? (($salesToday - $previousSales) / $previousSales) * 100 : 0;
        }

        else{
            $totalCustomers = "";
            $revenueThisMonth = "";
            $salesToday = "";
            $customerChange = "";
            $revenueChange = "";
            $salesChange = "";
            $customers = "";
            $orders = "";
        }

        return response()->json([
            'total_customers' => $totalCustomers,
            'revenue_this_month' => $revenueThisMonth,
            'sales_today' => $salesToday,
            'customer_change' => round($customerChange, 2),
            'revenue_change' => round($revenueChange, 2),
            'sales_change' => round($salesChange, 2),
            'customers' => $customers,
            'orders' => $orders,
        ]);
    }
    public function salesReport(Request $request)
    {
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');
        $userId = auth()->user()->id;

        if (auth()->user()->getRoleNames()->first() == 'Branch Admin' || auth()->user()->getRoleNames()->first() == 'Branch Manager'){
            $salesData = DB::table('sms_orders as o')
                ->join('sms_order_dtl as od', 'o.id', '=', 'od.order_id')
                ->join('sms_proinfo as p', 'od.pro_id', '=', 'p.id')
                ->join('sms_customers as c', 'o.cust_id', '=', 'c.id') // Join with customers table
                ->select(
                    'o.order_number',
                    'o.order_date',
                    DB::raw("CONCAT(c.name, ' - ', c.phone) as customer_info"), // Concatenate name and phone
                    'p.title as product_name',
                    'od.quantity',
                    'od.price',
                    DB::raw('od.total_price as total_amount')
                )
                ->where('o.status', 'A')
                ->where('o.create_by', '=', $userId)
                ->when($startDate, function ($query) use ($startDate) {
                    return $query->where('o.order_date', '>=', $startDate);
                })
                ->when($endDate, function ($query) use ($endDate) {
                    return $query->where('o.order_date', '<=', $endDate);
                })
                ->get();
        }
        else if (auth()->user()->getRoleNames()->first() == 'Admin' || auth()->user()->getRoleNames()->first() == 'Root'){
            $salesData = DB::table('sms_orders as o')
                ->join('sms_order_dtl as od', 'o.id', '=', 'od.order_id')
                ->join('sms_proinfo as p', 'od.pro_id', '=', 'p.id')
                ->join('sms_customers as c', 'o.cust_id', '=', 'c.id') // Join with customers table
                ->select(
                    'o.order_number',
                    'o.order_date',
                    DB::raw("CONCAT(c.name, ' - ', c.phone) as customer_info"), // Concatenate name and phone
                    'p.title as product_name',
                    'od.quantity',
                    'od.price',
                    DB::raw('od.total_price as total_amount')
                )
                ->where('o.status', 'A')
                ->when($startDate, function ($query) use ($startDate) {
                    return $query->where('o.order_date', '>=', $startDate);
                })
                ->when($endDate, function ($query) use ($endDate) {
                    return $query->where('o.order_date', '<=', $endDate);
                })
                ->get();
        }
        else{
            $salesData = "";
        }
        return view('reports.sales_report', compact('salesData'));
    }
    public function salesInfoReport(Request $request)
    {
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');

        $userId = auth()->user()->id;

        if (auth()->user()->getRoleNames()->first() == 'Branch Admin' || auth()->user()->getRoleNames()->first() == 'Branch Manager'){
            $salesData = DB::table('sms_orders as o')
                ->join('sms_order_dtl as od', 'o.id', '=', 'od.order_id')
                ->join('sms_proinfo as p', 'od.pro_id', '=', 'p.id') // Join with product table
                ->select(
                    'o.order_number',
                    'o.order_date',
                    DB::raw("CONCAT(o.cust_id, ' - ', (SELECT name FROM sms_customers WHERE id = o.cust_id)) as customer_info"),
                    'p.title as product_name', // Use product title from sms_proinfo
                    'od.quantity',
                    'od.price',
                    DB::raw('od.total_price as total_amount')
                )
                ->where('o.create_by', '=', $userId)
                ->where('o.status', 'A') // Assuming 'A' means completed orders
                ->when($startDate, function ($query) use ($startDate) {
                    return $query->where('o.order_date', '>=', $startDate);
                })
                ->when($endDate, function ($query) use ($endDate) {
                    return $query->where('o.order_date', '<=', $endDate);
                })
                ->get();

            // Calculate total sales and number of orders
            $totalSales = $salesData->sum('total_amount');
            $totalOrders = $salesData->count();
        }
        else if (auth()->user()->getRoleNames()->first() == 'Admin' || auth()->user()->getRoleNames()->first() == 'Root'){
            $salesData = DB::table('sms_orders as o')
                ->join('sms_order_dtl as od', 'o.id', '=', 'od.order_id')
                ->join('sms_proinfo as p', 'od.pro_id', '=', 'p.id') // Join with product table
                ->select(
                    'o.order_number',
                    'o.order_date',
                    DB::raw("CONCAT(o.cust_id, ' - ', (SELECT name FROM sms_customers WHERE id = o.cust_id)) as customer_info"),
                    'p.title as product_name', // Use product title from sms_proinfo
                    'od.quantity',
                    'od.price',
                    DB::raw('od.total_price as total_amount')
                )
                ->where('o.status', 'A') // Assuming 'A' means completed orders
                ->when($startDate, function ($query) use ($startDate) {
                    return $query->where('o.order_date', '>=', $startDate);
                })
                ->when($endDate, function ($query) use ($endDate) {
                    return $query->where('o.order_date', '<=', $endDate);
                })
                ->get();

            // Calculate total sales and number of orders
            $totalSales = $salesData->sum('total_amount');
            $totalOrders = $salesData->count();
        }
        else{
            $salesData = "";
        }


        return view('reports.sales_info_report', compact('salesData', 'totalSales', 'totalOrders', 'startDate', 'endDate'));
    }
    public function customerReport(Request $request)
    {
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');

        $userId = auth()->user()->id;

        if (auth()->user()->getRoleNames()->first() == 'Branch Admin' || auth()->user()->getRoleNames()->first() == 'Branch Manager'){
            $customers = Customer::when($startDate, function ($query) use ($startDate) {
                return $query->where('create_date', '>=', Carbon::parse($startDate));
            })
                ->when($endDate, function ($query) use ($endDate) {
                    return $query->where('create_date', '<=', Carbon::parse($endDate));
                })
                ->when($userId, function ($query) use ($userId) {
                    return $query->where('create_by', $userId); // Add condition for create_by
                })
                ->get();
        }
        else if (auth()->user()->getRoleNames()->first() == 'Admin' || auth()->user()->getRoleNames()->first() == 'Root'){
            $customers = Customer::when($startDate, function ($query) use ($startDate) {
                return $query->where('create_date', '>=', Carbon::parse($startDate));
            })->when($endDate, function ($query) use ($endDate) {
                return $query->where('create_date', '<=', Carbon::parse($endDate));
            })->get();
        }
        else{
            $customers = "";
        }


        return view('reports.customer_report', compact('customers', 'startDate', 'endDate'));
    }
    public function productReport(Request $request)
    {
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');

        $userId = auth()->user()->id;

        if (auth()->user()->getRoleNames()->first() == 'Branch Admin' || auth()->user()->getRoleNames()->first() == 'Branch Manager'){
            $products = ProInfo::when($startDate, function ($query) use ($startDate) {
                return $query->where('create_date', '>=', $startDate);
            })->when($endDate, function ($query) use ($endDate) {
                return $query->where('create_date', '<=', $endDate);
            })->when($userId, function ($query) use ($userId) {
                return $query->where('create_by', $userId);
            })->get();
            $products = ProInfo::when($startDate, function ($query) use ($startDate) {
                return $query->where('create_date', '>=', $startDate);
            })->when($endDate, function ($query) use ($endDate) {
                return $query->where('create_date', '<=', $endDate);
            })->get();
        }
        else if (auth()->user()->getRoleNames()->first() == 'Admin' || auth()->user()->getRoleNames()->first() == 'Root'){
            $products = ProInfo::when($startDate, function ($query) use ($startDate) {
                return $query->where('create_date', '>=', $startDate);
            })->when($endDate, function ($query) use ($endDate) {
                return $query->where('create_date', '<=', $endDate);
            })->get();
        }
        else{
            $products = "";
        }


        return view('reports.product_report', compact('products', 'startDate', 'endDate'));
    }
    public function dueReport(Request $request)
    {
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');
        $userId = auth()->user()->id;

        if (auth()->user()->getRoleNames()->first() == 'Branch Admin' || auth()->user()->getRoleNames()->first() == 'Branch Manager'){
            $dueOrders = Order::where('payment_status', 'Due')
                ->when($startDate, function ($query) use ($startDate) {
                    return $query->where('order_date', '>=', $startDate);
                })
                ->when($endDate, function ($query) use ($endDate) {
                    return $query->where('order_date', '<=', $endDate);
                })
                ->when($userId, function ($query) use ($userId) {
                    return $query->where('create_by', $userId); // Add condition for create_by
                })
                ->get();
        }
        else if (auth()->user()->getRoleNames()->first() == 'Admin' || auth()->user()->getRoleNames()->first() == 'Root'){
            $dueOrders = Order::where('payment_status', 'Due')
                ->when($startDate, function ($query) use ($startDate) {
                    return $query->where('order_date', '>=', $startDate);
                })
                ->when($endDate, function ($query) use ($endDate) {
                    return $query->where('order_date', '<=', $endDate);
                })
                ->get();
        }
        else{
            $products = "";
        }


        return view('reports.due_report', compact('dueOrders', 'startDate', 'endDate'));
    }
}
