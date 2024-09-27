<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\{Model,SoftDeletes};

class Cliente extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'clientes';
    protected $primaryKey = 'id';
    protected $fillable = [
        'nome',
        'cpf',
        'uf',
        'cidade',
        'bairro',
        'logradouro',
        'numero',
        'email',
        'telefone',
    ];

    public function local_coleta()
    {
        return $this->hasMany(LocalColeta::class, 'local_coleta_id');
    }

    public function coleta()
    {
        return $this->hasMany(Coleta::class, 'coleta_id');
    }

}
