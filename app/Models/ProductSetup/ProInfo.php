<?php

namespace App\Models\ProductSetup;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProInfo extends Model
{
    public $timestamps = false;

    protected $table = 'sms_proinfo';

    protected $fillable = [
        'id','uid', 'type_id', 'cat_id', 'subcat_id', 'brand_id',
        'title', 'subtitle', 'details', 'price_mrp', 'price_rp',
        'image1', 'image2', 'image3', 'image4',
        'status', 'create_by', 'create_date', 'update_by', 'update_date',
    ];
}
