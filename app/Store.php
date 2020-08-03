<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Store extends Model
{
    protected $table = 'tbl_store';

    protected $primaryKey = 'store_id';

    protected $fillable = [
        'store_id',
        'district_id',
        'branch_id',
        'store_name',
        'store_slug',
        'store_ubigeo',
        'store_address',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active'
    ];
}
