<?php

namespace App\Filament\User\Resources\MotoristaResource\Pages;

use App\Filament\User\Resources\MotoristaResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;

class CreateMotorista extends CreateRecord
{
    protected static string $resource = MotoristaResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    public function getCreatedNotification(): ?Notification
    {
        $motorista = $this->record;

        return Notification::make()
            ->success()
            ->title('Motorista criado(a)')
            ->body("<strong>{$motorista->nome}</strong> foi criado(a).");
    }
}
