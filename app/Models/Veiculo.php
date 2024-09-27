<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\{Model,SoftDeletes};

class Veiculo extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'veiculos';
    protected $primaryKey = 'id';
    protected $fillable = [
        'empresa_id',
        'placa_veiculo',
        'modelo',
        'capacidade_carga',
        'status',
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
