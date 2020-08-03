<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderStatusHistory extends Model
{
    protected $table = 'tbl_order_status_history';

    protected $primaryKey = 'order_status_history_id';

    protected $fillable = [
        'order_status_history_id',
        'order_id',
        'order_status_id',
        'notify_customer',
        'comment',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active'
    ];
}

