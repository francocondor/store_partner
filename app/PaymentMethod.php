<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PaymentMethod extends Model
{
    protected $table = 'tbl_payment_method';

    protected $primaryKey = 'payment_method_id';

    protected $fillable = [
        'payment_method_id',
        'method_name',
        'method_icon_url',
        'method_tip',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active'
    ];
}
