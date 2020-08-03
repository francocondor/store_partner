<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductImage extends Model
{
    protected $table = 'tbl_product_image';

    protected $primaryKey = 'product_image_id';

    protected $fillable = [
        'product_image_id',
        'stock_model_id',
        'product_image_url',
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
