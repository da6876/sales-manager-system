<?php

namespace App\Models\ProductSetup;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProSubCategory extends Model
{
    public $timestamps = false;

    protected $table = 'sms_prosubcategory';

    protected $fillable = [
        'id','uid','cat_id','name', 'status','create_by','create_date','update_by','update_date',
    ];
}
