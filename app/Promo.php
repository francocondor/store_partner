<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Promo extends Model
{
    protected $table = 'tbl_promo';

    protected $primaryKey = 'promo_id';

    protected $fillable = [
        'promo_id',
        'product_id',
        'product_variation_id',
        'add_product_id',
        'promo_price',
        'promo_discount',
        'promo_add_product_price',
        'promo_add_product_discount',
        'promo_title',
        'promo_description',
        'promo_start_date',
        'allow_all_variations',
        'allowed_variation_type_id',        
        'weight',
        'created_at',
        'updated_at',
        'deleted_at',
        'publish_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'publish_by',
        'active'
    ];
}
