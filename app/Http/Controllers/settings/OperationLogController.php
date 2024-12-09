<?php

namespace App\Http\Controllers\settings;

use App\Http\Controllers\Controller;
use App\Models\settings\Log;
use App\Models\settings\OperationLog;
use Illuminate\Http\Request;

class OperationLogController extends Controller
{
    public function index()
    {
        $logs = Log::join('users', 'logs.user_id', '=', 'users.id')
            ->select('logs.id', 'logs.user_id', 'users.name as user_name', 'logs.table_name', 'logs.action', 'logs.changes', 'logs.created_at')
            ->orderBy('logs.created_at', 'desc')
            ->get()->take(10);

        return response()->json($logs); // Return as JSON
    }
    public function indexs()
    {
        $logs = Log::join('users', 'logs.user_id', '=', 'users.id')
            ->select('logs.id', 'logs.user_id', 'users.name as user_name', 'logs.table_name', 'logs.action', 'logs.changes', 'logs.created_at')
            ->orderBy('logs.created_at', 'desc')
            ->get()->take(3);

        return response()->json($logs); // Return as JSON
    }
}
