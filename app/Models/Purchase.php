<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
    public $timestamps = false;

    protected $table = 'sms_purchases';

    protected $fillable = [
        'id','Purchase_ID', 'Product_ID', 'Category_ID', 'Sub_Category_ID', 'Vendor_ID','Challan_Number','Unit','Color','Size',
        'Purchase_Qty', 'Purchase_Rate', 'Sales_Rate', 'Purchase_Payment_Type', 'Purchase_Date',
        'image',
        'status', 'create_by', 'create_date', 'update_by', 'update_date',
    ];
}
