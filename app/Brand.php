<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    protected $table = 'tbl_brand';

    protected $primaryKey = 'brand_id';

    protected $fillable = [
        'brand_id',
        'brand_name',
        'brand_slug',
        'weight',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active'
    ];
}
