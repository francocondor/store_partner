<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'tbl_order';

    protected $primaryKey = 'order_id';

    protected $fillable = [
        'order_id',
        'idtype_id',
        'payment_method_id',
        'branch_id',
        'tracking_code',
        'first_name',
        'last_name',
        'id_number',
        'billing_district',
        'billing_phone',
        'source_operator',
        'porting_phone',
        'delivery_address',
        'delivery_district',
        'contact_email',
        'contact_phone',
        'credit_status',
        'service_type',
        'affiliation_type',
        'type_number_carry',
        'has_debt',
        'isdn_status',
        'porting_request_id',
        'mnp_request_id',
        'porting_state_code',
        'porting_status',
        'porting_status_desc',
        'total',
        'total_igv',
        'terminos_condiciones',
        'idschedule_id',
        'store_id',        
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active',
        'source'
    ];
}
