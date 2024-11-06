<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\{Model,SoftDeletes};
use Illuminate\Support\Str;

class Permission extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'permissions';
    protected $primaryKey = 'id';

    protected $fillable = [
        'uuid',
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

    protected static function boot()
    {
        parent::boot();
        static::creating(function ($model) {
            $model->uuid = (string) Str::uuid();
        });
    }

    public function getRouteKeyName()
    {
        return 'uuid';
    }
}
