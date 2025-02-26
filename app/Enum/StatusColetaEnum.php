<?php

namespace App\Enum;

use Filament\Support\Contracts\HasLabel;

enum StatusColetaEnum: string implements HasLabel
{
    case Em_andamento = "Em andamento";
    case Concluido = "Concluído";
    case Cancelado = "Cancelado";

    public function getLabel(): ?string
    {
        return match ($this) {
            self::Em_andamento => 'Em andamento',
            self::Concluido => 'Concluído',
            self::Cancelado => 'Cancelado',
            default => 'Status não encontrado',
        };
    }

}
