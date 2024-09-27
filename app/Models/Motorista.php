<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\{Model,SoftDeletes};

class Motorista extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'motoristas';
    protected $primaryKey = 'id';
    protected $fillable = [
        'nome',
        'cpf',
        'empresa_id',
        'cnh',
        'categoria',
        'email',
        'telefone',
    ];

    public function empresa()
    {
        return $this->belongsTo(Empresa::class, 'empresa_id');
    }

    public function coleta()
    {
        return $this->hasMany(Coleta::class, 'coleta_id');
    }
}
