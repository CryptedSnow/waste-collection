<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\{Model,SoftDeletes};

class Coleta extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'coletas';
    protected $primaryKey = 'id';
    protected $fillable = [
        'local_coleta_id',
        'tipo_residuo_id',
        'motorista_id',
        'veiculo_id',
        'quantidade_residuos',
        'data_coleta',
        'hora_coleta',
        'destinacao_final',
        'status',
    ];

    public function local_coleta()
    {
        return $this->belongsTo(LocalColeta::class, 'local_coleta_id');
    }

    public function tipo_residuo()
    {
        return $this->belongsTo(TipoResiduo::class, 'tipo_residuo_id');
    }

    public function motorista()
    {
        return $this->belongsTo(Motorista::class, 'motorista_id');
    }

    public function veiculo()
    {
        return $this->belongsTo(Veiculo::class, 'veiculo_id');
    }

    public function cliente()
    {
        return $this->hasOneThrough(Cliente::class, LocalColeta::class, 'id', 'id', 'local_coleta_id', 'cliente_id');
    }

}
