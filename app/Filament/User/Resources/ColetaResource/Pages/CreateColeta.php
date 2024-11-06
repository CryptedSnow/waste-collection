<?php

namespace App\Filament\User\Resources\ColetaResource\Pages;

use App\Filament\User\Resources\ColetaResource;
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
