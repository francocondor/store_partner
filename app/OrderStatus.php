<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderStatus extends Model
{
    protected $table = 'tbl_order_status';

    protected $primaryKey = 'order_status_id';

    protected $fillable = [
        'order_status_id',
        'order_status_name',
        'weight',
        'weight2',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active'
    ];
}
