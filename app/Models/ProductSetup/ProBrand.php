<?php

namespace App\Models\ProductSetup;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProBrand extends Model
{
    public $timestamps = false;

    protected $table = 'sms_probrand';

    protected $fillable = [
        'id','uid', 'name', 'status','create_by','create_date','update_by','update_date',
    ];
}
