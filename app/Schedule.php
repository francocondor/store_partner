<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Schedule extends Model
{
    protected $table = 'tbl_schedule';

    protected $primaryKey = 'idschedule_id';

    protected $fillable = [
        'idschedule_id',
        'idschedule_name',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active'
    ];
}
