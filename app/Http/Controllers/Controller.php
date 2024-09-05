<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\Auth;

class Controller extends BaseController
{
    use AuthorizesRequests, ValidatesRequests;

    public function checkLogin()
    {
        if (!Auth::check()) {
            Auth::logout();
            return redirect()->route('login');
        }
    }
    public function getCurrentDateTime(){

        $currentDateTime = Carbon::now();
        $formattedDateTime = $currentDateTime->toDateTimeString();
        return $formattedDateTime;
    }
    public function getCurrentDate(){
        return Carbon::now()->toDateString();
    }

}
