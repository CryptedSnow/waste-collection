<?php

namespace App\Filament\User\Resources\DepositoResiduoResource\Pages;

use App\Filament\User\Resources\DepositoResiduoResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListDepositoResiduos extends ListRecords
{
    protected static string $resource = DepositoResiduoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Criar depósito'),
        ];
    }
}
