<?php

namespace App\Enum;

use Filament\Support\Contracts\HasLabel;

enum StatusColetaEnum: string implements HasLabel
{
    case EM_ANDAMENTO = 'Em andamento';
    case CONCLUIDO = 'Concluído';
    case CANCELADO = 'CANCELADO';

    public function getLabel(): ?string
    {
        return match ($this) {
            self::EM_ANDAMENTO => 'Em andamento',
            self::CONCLUIDO => 'Concluído',
            self::CANCELADO => 'Cancelado',
            default => 'Status não encontrado',
        };
    }

}
