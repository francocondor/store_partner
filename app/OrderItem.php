<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    protected $table = 'tbl_order_item';

    protected $primaryKey = 'order_item_id';

    protected $fillable = [
        'order_item_id',
        'order_id',
        'stock_model_id',
        'product_variation_id',
        'promo_id',
        'quantity',
        'subtotal',
        'subtotal_igv',        
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active',
        'equipo_plan'
    ];
}
