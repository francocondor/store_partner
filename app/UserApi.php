<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserApi extends Model
{
    protected $table = 'tbl_user';

    protected $primaryKey = 'id';

    protected $fillable = [
        'id',
        'user_dni',
        'user_name',
        'user_email',
        'user_rol',
        'password',
        'remember_token',
        'created_at',
        'updated_at',
        'deleted_at',
        'created_by',
        'updated_by',
        'deleted_by',
        'active'
    ];
}
