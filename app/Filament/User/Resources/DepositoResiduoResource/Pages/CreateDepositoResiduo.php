<?php

namespace App\Filament\User\Resources\DepositoResiduoResource\Pages;

use App\Filament\User\Resources\DepositoResiduoResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateDepositoResiduo extends CreateRecord
{
    protected static string $resource = DepositoResiduoResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
