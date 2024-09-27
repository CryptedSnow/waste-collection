<?php

namespace App\Filament\Resources\TipoResiduoResource\Pages;

use App\Filament\Resources\TipoResiduoResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateTipoResiduo extends CreateRecord
{
    protected static string $resource = TipoResiduoResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
