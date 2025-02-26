<?php

namespace App\Enum;

use Filament\Support\Contracts\HasLabel;

enum FinalidadeColetaEnum: string implements HasLabel
{
    case Reciclagem = "Reciclagem";
    case Incineiracao = "Incineiração";
    case Compostagem = "Compostagem";
    case Coprocessamento = "Coprocessamento";
    case Aterro_controlado = "Aterro controlado";

    public function getLabel(): ?string
    {
        return match ($this) {
            self::Reciclagem => 'Reciclagem',
            self::Incineiracao => 'Incineiração',
            self::Compostagem => 'Compostagem',
            self::Coprocessamento => 'Coprocessamento',
            self::Aterro_controlado => 'Aterro controlado',
            default => 'Finalidade não encontrada',
        };
    }

}
