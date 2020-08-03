<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class District extends Model
{
    protected $table = 'tbl_district';

    protected $primaryKey = 'district_id';

    protected $fillable = [
        'district_id',
        'province_id',
        'branch_id',
        'district_name',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active'
    ];
}
