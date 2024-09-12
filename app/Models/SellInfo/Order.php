<?php

namespace App\Models\SellInfo;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public $timestamps = false;
    protected $table = 'sms_orders';
    protected $fillable = [
        'order_number',
        'order_date',
        'cust_id',
        'total_amount',
        'vat_amount',
        'discount_amount',
        'received_amount',
        'revised_amount',
        'status',
        'payment_status',
        'payment_method',
        'table_number',
        'create_by',
        'create_date',
        'update_by',
        'update_date',
    ];

    public function items()
    {
        return $this->hasMany(OrderDtl::class);
    }
}
