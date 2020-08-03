<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'tbl_category';

    protected $primaryKey = 'category_id';

    protected $fillable = [
        'category_id',
        'category_name',
        'category_slug',
        'allow_variation',
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
