<?php

namespace App\Http\Controllers;

use App\Models\SellInfo\Order;
use App\Models\settings\SidebarNav;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

class DashboardController extends Controller
{

    public function __construct()
    {
        $this->middleware('permission:create_dashboard', ['only' => ['create']]);
        $this->middleware('permission:view_dashboard', ['only' => ['index']]);
        $this->middleware('permission:update_dashboard', ['only' => ['edit']]);
        $this->middleware('permission:delete_dashboard', ['only' => ['destroy']]);
    }

    public function WebSettings()
    {
        return view('datatable');
    }

    public function indexs()
    {
        return "jjjj";
    }
    public function index()
    {
        $this->checkLogin();
        if (auth()->user()->getRoleNames()->first() == 'Branch Admin' || auth()->user()->getRoleNames()->first() == 'Branch Manager') {
            return view('branch-dashboard');
        }else if (auth()->user()->getRoleNames()->first() == 'Admin' || auth()->user()->getRoleNames()->first() == 'Root') {
            return view('welcomes');
        }else{
            return view('errors.404');
        }
    }

    public function getRecentSales()
    {
        $userId = auth()->user()->id;
        $recentSales = "";
        if (auth()->user()->getRoleNames()->first() == 'Branch Admin' || auth()->user()->getRoleNames()->first() == 'Branch Manager') {
            $recentSales = DB::select("
                SELECT o.order_number, c.name AS customer_name, p.title AS product_name, od.total_price, o.status
                FROM sms_orders o
                JOIN sms_customers c ON o.cust_id = c.id
                JOIN sms_order_dtl od ON o.id = od.order_id
                JOIN sms_proinfo p ON od.pro_id = p.id
                WHERE o.create_by = $userId
                and o.create_date >= NOW() - INTERVAL 7 DAY
                ORDER BY o.create_date DESC
                LIMIT 5
            ");
        }else if (auth()->user()->getRoleNames()->first() == 'Admin' || auth()->user()->getRoleNames()->first() == 'Root') {
            $recentSales = DB::select("
                SELECT o.order_number, c.name AS customer_name, p.title AS product_name, od.total_price, o.status
                FROM sms_orders o
                JOIN sms_customers c ON o.cust_id = c.id
                JOIN sms_order_dtl od ON o.id = od.order_id
                JOIN sms_proinfo p ON od.pro_id = p.id
                WHERE o.create_date >= NOW() - INTERVAL 7 DAY
                ORDER BY o.create_date DESC
                LIMIT 5
            ");
        }else{
            $recentSales="";
        }
        return response()->json($recentSales);
    }

    public function getData()
    {
        return "aaa";
    }
    public function topSellingProducts()
    {
        $userId = auth()->user()->id;

        if (auth()->user()->getRoleNames()->first() == 'Branch Admin' || auth()->user()->getRoleNames()->first() == 'Branch Manager') {
            $topProducts = DB::table('sms_order_dtl as od')
                ->join('sms_orders as o', 'od.order_id', '=', 'o.id')
                ->join('sms_proinfo as p', 'od.pro_id', '=', 'p.id')
                ->select('p.id', 'p.title', 'p.image1', DB::raw('SUM(od.quantity) as total_sold'), DB::raw('SUM(od.total_price) as total_revenue'))
                ->where('o.status', 'A')
                ->where('o.create_by', $userId)
                ->where('o.create_date', '>=', DB::raw('NOW() - INTERVAL 7 DAY'))
                ->groupBy('p.id', 'p.title', 'p.image1')
                ->orderBy('total_sold', 'desc')
                ->limit(10)
                ->get();
        }else if (auth()->user()->getRoleNames()->first() == 'Admin' || auth()->user()->getRoleNames()->first() == 'Root') {
            $topProducts = DB::table('sms_order_dtl as od')
                ->join('sms_orders as o', 'od.order_id', '=', 'o.id')
                ->join('sms_proinfo as p', 'od.pro_id', '=', 'p.id')
                ->select('p.id', 'p.title', 'p.image1', DB::raw('SUM(od.quantity) as total_sold'), DB::raw('SUM(od.total_price) as total_revenue'))
                ->where('o.status', 'A')
                ->where('o.create_date', '>=', DB::raw('NOW() - INTERVAL 7 DAY'))
                ->groupBy('p.id', 'p.title', 'p.image1')
                ->orderBy('total_sold', 'desc')
                ->limit(10)
                ->get();
        }else{
            $topProducts="";
        }
        return response()->json($topProducts);
    }

}
