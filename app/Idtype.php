<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Idtype extends Model
{
    protected $table = 'tbl_idtype';

    protected $primaryKey = 'idtype_id';

    protected $fillable = [
        'idtype_id',
        'idtype_name',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active'
    ];
}
