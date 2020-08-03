<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderStatusFlux extends Model
{
    protected $table = 'tbl_order_status_flux';

    protected $primaryKey = 'order_status_flux_id';

    protected $fillable = [
        'order_status_flux_id',
        'order_status_origin_id',
        'order_status_destination_id',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active'
    ];
}
