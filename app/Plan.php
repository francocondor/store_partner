<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Plan extends Model
{
    protected $table = 'tbl_plan';

    protected $primaryKey = 'plan_id';

    protected $fillable = [
        'plan_id',
        'plan_type',
        'plan_name',
        'plan_price',
        'product_code',
        'plan_slug',
        'plan_bono',
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