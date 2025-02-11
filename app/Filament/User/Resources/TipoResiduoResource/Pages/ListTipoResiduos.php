<?php

namespace App\Filament\User\Resources\TipoResiduoResource\Pages;

use App\Filament\User\Resources\TipoResiduoResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListTipoResiduos extends ListRecords
{
    protected static string $resource = TipoResiduoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Criar resíduo'),
        ];
    }
}
