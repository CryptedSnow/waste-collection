<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\{Model,SoftDeletes};

class Permission extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'permissions';
    protected $primaryKey = 'id';

    protected $fillable = [
        'name',
        'guard_name',
    ];

    protected static function booted()
    {
        static::creating(function ($permission) {
            if (empty($permission->guard_name)) {
                $permission->guard_name = 'web';
            }
        });
    }
}
