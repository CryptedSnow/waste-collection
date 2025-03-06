<?php

namespace App\Models;

use Filament\Models\Contracts\HasName;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\{Model, SoftDeletes};
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Support\Str;

class Empresa extends Model implements HasName
{
    use HasFactory, SoftDeletes;

    protected $table = 'empresas';
    protected $primaryKey = 'id';
    protected $fillable = [
        'uuid',
        'nome',
        'cnpj',
        'cep',
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

    public function getFilamentName(): string
    {
        return "{$this->nome}";
    }

    public function clienteTenant(): HasMany
    {
        return $this->hasMany(Cliente::class);
    }

    public function veiculoTenant(): HasMany
    {
        return $this->hasMany(Veiculo::class);
    }

    public function motoristaTenant(): HasMany
    {
        return $this->hasMany(Veiculo::class);
    }

    public function tipoResiduoTenant(): HasMany
    {
        return $this->hasMany(TipoResiduo::class);
    }

    public function depositoResiduoTenant(): HasMany
    {
        return $this->hasMany(DepositoResiduo::class);
    }

    public function localColetaTenant(): HasMany
    {
        return $this->hasMany(LocalColeta::class);
    }

    public function coletaTenant(): HasMany
    {
        return $this->hasMany(Coleta::class);
    }

}
