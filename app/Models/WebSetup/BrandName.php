<?php

namespace App\Models\WebSetup;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BrandName extends Model
{

    public $timestamps = false;

    protected $table = 'sms_brand_info';

    protected $fillable = [
        'id','uid','name', 'details', 'logo', 'status','create_by','create_date','update_by','update_date',
    ];
}
