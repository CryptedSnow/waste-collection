<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\{Model,SoftDeletes};
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Support\Str;

class LocalColeta extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'locais_coleta';
    protected $primaryKey = 'id';
    protected $fillable = [
        'uuid',
        'empresa_id',
        'cliente_id',
        'uf',
        'cidade',
        'bairro',
        'logradouro',
        'numero',
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

    public function empresa(): BelongsTo
    {
        return $this->belongsTo(Empresa::class);
    }

    public function clientes(): BelongsTo
    {
        return $this->belongsTo(Cliente::class, 'cliente_id');
    }

}
