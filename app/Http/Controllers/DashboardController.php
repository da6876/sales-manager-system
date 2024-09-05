<?php

namespace App\Http\Controllers;

use App\Models\WebSetup\SidebarNav;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

class DashboardController extends Controller
{

    public function test(){

        return $navItems = SidebarNav::whereNull('parent_id')
            ->where('status', 'A')
            ->with('children')
            ->orderBy('order')
            ->get();
        return view('datatable');
    }

    public function index(){
        $this->checkLogin();
        return view('welcomes');
    }

    public function alert(){
        return view('alert');
    }

    public function button(){

        return view('button');
    }

    public function form(){

        return view('form');
    }
}
