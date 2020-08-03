<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Province extends Model
{
    protected $table = 'tbl_province';

    protected $primaryKey = 'province_id';

    protected $fillable = [
        'province_id',
        'departament_id',
        'province_name',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active'
    ];
}
