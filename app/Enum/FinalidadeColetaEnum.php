<?php

namespace App\Enum;

use Filament\Support\Contracts\HasLabel;

enum FinalidadeColetaEnum: string implements HasLabel
{
    case RECICLAGEM = 'Reciclagem';
    case INCINEIRACAO = 'Incineiração';
    case COMPOSTAGEM = 'Compostagem';
    case COPROCESSAMENTO = 'Coprocessamento';
    case ATERRO_CONTROLADO = 'Aterro controlado';

    public function getLabel(): ?string
    {
        return match ($this) {
            self::RECICLAGEM => 'Reciclagem',
            self::INCINEIRACAO => 'Incineiração',
            self::COMPOSTAGEM => 'Compostagem',
            self::COPROCESSAMENTO => 'Coprocessamento',
            self::ATERRO_CONTROLADO => 'Aterro controlado',
            default => 'Finalidade não encontrada',
        };
    }

}
