<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\{Model,SoftDeletes};

class LocalColeta extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'locais_coleta';
    protected $primaryKey = 'id';
    protected $fillable = [
        'cliente_id',
        'uf',
        'cidade',
        'bairro',
        'logradouro',
        'numero',
    ];

    public function cliente()
    {
        return $this->belongsTo(Cliente::class, 'cliente_id');
    }

    public function coleta()
    {
        return $this->hasMany(Coleta::class, 'coleta_id');
    }

}
