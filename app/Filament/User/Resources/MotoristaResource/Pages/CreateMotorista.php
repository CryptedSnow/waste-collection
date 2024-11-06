<?php

namespace App\Filament\User\Resources\MotoristaResource\Pages;

use App\Filament\User\Resources\MotoristaResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateMotorista extends CreateRecord
{
    protected static string $resource = MotoristaResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
