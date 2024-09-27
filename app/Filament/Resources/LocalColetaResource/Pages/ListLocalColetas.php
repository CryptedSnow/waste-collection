<?php

namespace App\Filament\Resources\LocalColetaResource\Pages;

use App\Filament\Resources\LocalColetaResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListLocalColetas extends ListRecords
{
    protected static string $resource = LocalColetaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
