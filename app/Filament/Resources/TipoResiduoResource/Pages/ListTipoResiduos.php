<?php

namespace App\Filament\Resources\TipoResiduoResource\Pages;

use App\Filament\Resources\TipoResiduoResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListTipoResiduos extends ListRecords
{
    protected static string $resource = TipoResiduoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
