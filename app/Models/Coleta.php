<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\{Model,SoftDeletes};
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Support\Str;

class Coleta extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'coletas';
    protected $primaryKey = 'id';
    protected $fillable = [
        'uuid',
        'codigo_coleta',
        'local_coleta_id',
        'tipo_residuo_id',
        'motorista_id',
        'veiculo_id',
        'deposito_residuo_id',
        'quantidade_residuos',
        'data_coleta',
        'hora_coleta',
        'valor_coleta',
        'finalidade',
        'status',
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

    public function localColeta(): BelongsTo
    {
        return $this->belongsTo(LocalColeta::class, 'local_coleta_id');
    }

    public function tipoResiduo(): BelongsTo
    {
        return $this->belongsTo(TipoResiduo::class, 'tipo_residuo_id');
    }

    public function motorista(): BelongsTo
    {
        return $this->belongsTo(Motorista::class, 'motorista_id');
    }

    public function veiculo(): BelongsTo
    {
        return $this->belongsTo(Veiculo::class, 'veiculo_id');
    }

    public function depositoResiduo(): BelongsTo
    {
        return $this->belongsTo(DepositoResiduo::class, 'deposito_residuo_id');
    }

    public function cliente()
    {
        return $this->hasOneThrough(Cliente::class, LocalColeta::class, 'id', 'id', 'local_coleta_id', 'cliente_id');
    }

}
