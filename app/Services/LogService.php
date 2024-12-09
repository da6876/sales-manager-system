<?php

namespace App\Services;

use App\Models\settings\Log;

class LogService
{
    public static function log($userId, $tableName, $action, $changes = null)
    {
        Log::create([
            'user_id' => $userId,
            'table_name' => $tableName,
            'action' => $action,
            'changes' => $changes ? json_encode($changes) : null,
        ]);
    }
}
