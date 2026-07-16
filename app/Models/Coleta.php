<?php

namespace App\Models;

use App\Observers\ColetaObserver;
use Illuminate\Database\Eloquent\{Model, SoftDeletes};
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\{BelongsTo, HasOneThrough};
use Illuminate\Support\Str;
use Carbon\Carbon;

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
        'valor_diaria',
        'dias_diaria',
        'data_coleta',
        'hora_coleta',
        'valor_coleta',
        'finalidade',
        'status',
    ];

    protected $casts = [
        'dias_diaria' => 'integer',
        'valor_diaria' => 'decimal:2',
        'valor_coleta' => 'decimal:2',
    ];

    protected static function boot()
    {
        parent::boot();
        static::creating(function ($model) {
            $model->uuid = (string) Str::uuid();
        });
        static::observe(ColetaObserver::class);
    }

    public function getRouteKeyName()
    {
        return 'uuid';
    }

    public function empresa(): BelongsTo
    {
        return $this->belongsTo(Empresa::class);
    }

    public function localColetas(): BelongsTo
    {
        return $this->belongsTo(LocalColeta::class, 'local_coleta_id');
    }

    public function tipoResiduos(): BelongsTo
    {
        return $this->belongsTo(TipoResiduo::class, 'tipo_residuo_id');
    }

    public function motoristas(): BelongsTo
    {
        return $this->belongsTo(Motorista::class, 'motorista_id');
    }

    public function veiculos(): BelongsTo
    {
        return $this->belongsTo(Veiculo::class, 'veiculo_id');
    }

    public function depositoResiduos(): BelongsTo
    {
        return $this->belongsTo(DepositoResiduo::class, 'deposito_residuo_id');
    }

    public function clientes(): HasOneThrough
    {
        return $this->hasOneThrough(Cliente::class, LocalColeta::class, 'id', 'id', 'local_coleta_id', 'cliente_id');
    }

    public function getDataFimColetaAttribute(): ?string
    {
        if (! $this->data_coleta || ! $this->dias_diaria) {
            return null;
        }
        $inicio = Carbon::parse($this->data_coleta);
        $fim = $inicio->copy()->addDays((int) $this->dias_diaria);
        return $fim->format('d/m/Y');
    }

}
