<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VariationType extends Model
{
    protected $table = 'tbl_variation_type';

    protected $primaryKey = 'variation_type_id';

    protected $fillable = [
        'variation_type_id',
        'variation_type_name',
        'variation_type_slug',
        'allow_plan',
        'allow_affiliation',
        'allow_contract',    
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
