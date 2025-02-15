<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Size extends Model
{
    public $timestamps = false;

    protected $table = 'sms_size';

    protected $fillable = [
        'id','pro_type_id', 'name', 'status','create_by','create_date','update_by','update_date',
    ];
}
