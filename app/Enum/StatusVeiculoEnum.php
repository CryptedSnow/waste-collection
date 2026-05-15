<?php

namespace App\Enum;

use Filament\Support\Contracts\HasLabel;

enum StatusVeiculoEnum: string implements HasLabel
{
    case DISPONIVEL = 'Disponível';
    case EM_MANUTENCAO = 'Em manutenção';

    public function getLabel(): ?string
    {
        return match ($this) {
            self::DISPONIVEL => 'Disponível',
            self::EM_MANUTENCAO => 'Em manutenção',
            default => 'Status não encontrado',
        };
    }
}
