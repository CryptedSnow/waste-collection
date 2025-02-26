<?php

namespace App\Enum;

use Filament\Support\Contracts\HasLabel;

enum StatusVeiculoEnum: string implements HasLabel
{
    case Disponivel = "Disponível";
    case Em_manutencao = "Em manutenção";

    public function getLabel(): ?string
    {
        return match ($this) {
            self::Disponivel => 'Disponível',
            self::Em_manutencao => 'Em manutenção',
            default => 'Status não encontrado',
        };
    }
}
