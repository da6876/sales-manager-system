<?php

namespace App\Models\SellInfo;

use App\Models\ProductSetup\ProInfo;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderDtl extends Model
{
    public $timestamps = false;
    protected $table = 'sms_order_dtl';
    protected $fillable = [
        'order_id',
        'pro_id',
        'quantity',
        'price',
        'total_price',
        'special_request',
        'create_by',
        'create_date',
        'update_by',
        'update_date',
    ];

    public function order()
    {
        return $this->belongsTo(Order::class);
    }

    public function product()
    {
        return $this->belongsTo(ProInfo::class);
    }
}
