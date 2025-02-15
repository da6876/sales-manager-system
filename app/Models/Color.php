<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Color extends Model
{
    public $timestamps = false;

    protected $table = 'sms_color';

    protected $fillable = [
        'id','pro_type_id', 'name', 'status','create_by','create_date','update_by','update_date',
    ];
}
