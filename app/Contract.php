<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contract extends Model
{
    protected $table = 'tbl_contract';

    protected $primaryKey = 'contract_id';

    protected $fillable = [
        'contract_id',
        'contract_name',
        'contract_months',
        'contract_slug',
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
