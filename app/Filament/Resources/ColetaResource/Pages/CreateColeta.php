<?php

namespace App\Filament\Resources\ColetaResource\Pages;

use App\Filament\Resources\ColetaResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateColeta extends CreateRecord
{
    protected static string $resource = ColetaResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
