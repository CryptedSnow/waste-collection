<?php

namespace App\Filament\User\Resources\LocalColetaResource\Pages;

use App\Filament\User\Resources\LocalColetaResource;
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
