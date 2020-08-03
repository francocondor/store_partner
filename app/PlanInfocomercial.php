<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PlanInfocomercial extends Model
{
    protected $table = 'tbl_plan_infocomercial';

    protected $primaryKey = 'plan_infocomercial_id';

    protected $fillable = [
        'plan_infocomercial_id',
        'plan_id',
        'plan_infocomercial_img_url',
        'plan_infocomercial_descripcion',
        'plan_infocomercial_informacion_adicional',
        'plan_infocomercial_flag_cantidad',
        'weight',
        'tipo',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active'
    ];
}
