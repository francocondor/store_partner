<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StockModel extends Model
{
    protected $table = 'tbl_stock_model';

    protected $primaryKey = 'stock_model_id';

    protected $fillable = [
        'stock_model_id',
        'product_id',
        'color_id',
        'stock_model_code',        
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active'
    ];
}
