<?php

namespace App\Enum;

use Filament\Support\Contracts\HasLabel;

enum CategoriaHabilitacaoEnum: string implements HasLabel
{
    case A = "A";
    case B = "B";
    case C = "C";
    case D = "D";
    case E = "E";

    public function getLabel(): ?string
    {
        return match ($this) {
            self::A => 'A',
            self::B => 'B',
            self::C => 'C',
            self::D => 'D',
            self::E => 'E',
            default => 'Categoria não encontrada',
        };
    }

}
