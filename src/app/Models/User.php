<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'user';
    protected $primaryKey = 'userId';
    protected $fillable = [
        'username', 'avatar', 'phone', 'address', 'permission', 'password'
    ];
    protected $hidden = [
        'password', 'remember_token',
    ];

}
