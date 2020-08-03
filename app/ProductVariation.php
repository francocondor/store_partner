<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductVariation extends Model
{
    protected $table = 'tbl_product_variation';

    protected $primaryKey = 'product_variation_id';

    protected $fillable = [
        'product_variation_id',
        'variation_type_id',
        'product_id',
        'plan_id',
        'affiliation_id',
        'contract_id',
        'product_variation_price',
        'reason_code',
        'product_package',        
        'weight',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active',
        'best_plan',
        'best_variation'
    ];
}
