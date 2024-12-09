<?php

namespace App\Models\settings;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OperationLog extends Model
{
    use HasFactory;

    protected $table = 'operationlogs'; // Specify the table name if different
    protected $fillable = ['OperationType', 'TableName', 'RecordID', 'ChangeDate', 'OldValues', 'NewValues'];
}
