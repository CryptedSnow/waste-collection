<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\{Model,SoftDeletes};

class Empresa extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'empresas';
    protected $primaryKey = 'id';
    protected $fillable = [
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

    public function veiculo()
    {
        return $this->hasMany(Veiculo::class, 'veiculo_id');
    }

    public function motorista()
    {
        return $this->hasMany(Motorista::class, 'motorista_id');
    }

    public function coleta()
    {
        return $this->hasMany(Coleta::class, 'coleta_id');
    }

    public function user_empresa()
    {
        return $this->hasMany(UserEmpresa::class, 'user_empresa_id');
    }

    public function cliente_empresa()
    {
        return $this->hasMany(ClienteEmpresa::class, 'cliente_empresa_id');
    }

}
