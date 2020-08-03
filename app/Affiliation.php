<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Affiliation extends Model
{
    protected $table = 'tbl_affiliation';

    protected $primaryKey = 'affiliation_id';

    protected $fillable = [
        'affiliation_id',
        'affiliation_name',
        'affiliation_slug',
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
