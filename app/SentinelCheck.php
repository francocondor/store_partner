<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SentinelCheck extends Model
{
    protected $table = 'tbl_sentinel_check';

    protected $primaryKey = 'sentinel_check_id';

    protected $fillable = [
        'sentinel_check_id',
        'status'
    ];
}
