<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\{Model,SoftDeletes};

class TipoResiduo extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'tipos_residuos';
    protected $primaryKey = 'id';
    protected $fillable = [
        'descricao',
    ];

    public function coleta()
    {
        return $this->hasMany(Coleta::class, 'coleta_id');
    }
}
