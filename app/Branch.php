<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Branch extends Model
{
    protected $table = 'tbl_branch';

    protected $primaryKey = 'branch_id';

    protected $fillable = [
        'branch_id',
        'branch_name',
        'zip_code',
        'branch_address',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active'
    ];
}
