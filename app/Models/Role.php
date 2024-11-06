<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\{Model,SoftDeletes};
use Spatie\Permission\Models\Role as ModelsRole;
use Illuminate\Support\Str;

class Role extends ModelsRole
{
    use HasFactory, SoftDeletes;

    protected $table = 'roles';
    protected $primaryKey = 'id';

    protected $fillable = [
        'uuid',
        'name',
        'guard_name',
    ];

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
