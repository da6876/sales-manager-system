<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Stock extends Model
{
    public $timestamps = false;

    protected $table = 'sms_stock';

    protected $fillable = [
        'id','Purchase_ID','pro_qrcode', 'Product_ID','Category_ID',
        'Sub_Category_ID','Purchase_Date', 'status','create_by','create_date','update_by','update_date',
    ];
}
