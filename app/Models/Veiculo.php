<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\{Model,SoftDeletes};
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Support\Str;

class Veiculo extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'veiculos';
    protected $primaryKey = 'id';
    protected $fillable = [
        'uuid',
        'empresa_id',
        'placa_veiculo',
        'modelo',
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

}
