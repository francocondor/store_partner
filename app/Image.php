<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    protected $table = 'tbl_image';

    protected $primaryKey = 'image_id';

    protected $fillable = [
        'image_id',
        'image_name',
        'image_description',
        'image_url',
        'imagem_url',
        'image_link',
        'image_type',
        'active'
    ];
}
