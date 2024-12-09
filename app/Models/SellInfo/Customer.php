<?php

namespace App\Models\SellInfo;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    public $timestamps = false;
    protected $table = 'sms_customers';
    protected $fillable = [
        'id',
        'uid',
        'name',
        'phone',
        'email',
        'address',
        'status',
        'create_by',
        'create_date',
        'update_by',
        'update_date',
    ];
}
