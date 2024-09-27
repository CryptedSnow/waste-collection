<?php

namespace App\Filament\Resources\LocalColetaResource\Pages;

use App\Filament\Resources\LocalColetaResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateLocalColeta extends CreateRecord
{
    protected static string $resource = LocalColetaResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
