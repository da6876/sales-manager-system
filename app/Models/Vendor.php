<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vendor extends Model
{
    public $timestamps = false;

    protected $table = 'sms_vendor';

    protected $fillable = [
        'id','vendor_name', 'vendor_phone','vendor_email','vendor_photo','vendor_address', 'status','create_by','create_date','update_by','update_date',
    ];
}
