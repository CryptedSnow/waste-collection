<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\{Model, SoftDeletes};
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Support\Str;

class DepositoResiduo extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'depositos_residuos';
    protected $primaryKey = 'id';
    protected $fillable = [
        'uuid',
        'empresa_id',
        'nome',
        'cnpj',
        'uf',
        'cidade',
        'bairro',
        'logradouro',
        'numero',
        'email',
        'telefone',
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
}
