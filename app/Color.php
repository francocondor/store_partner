<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Color extends Model
{
    protected $table = 'tbl_color';

    protected $primaryKey = 'color_id';

    protected $fillable = [
        'color_id',
        'color_name',
        'color_hexcode',
        'color_slug',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active'
    ];
}
