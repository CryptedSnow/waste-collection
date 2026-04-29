<?php

namespace App\Filament\User\Resources\LocalColetaResource\Pages;

use App\Filament\User\Resources\LocalColetaResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;

class CreateLocalColeta extends CreateRecord
{
    protected static string $resource = LocalColetaResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    public function getCreatedNotification(): ?Notification
    {
        $localColeta = $this->record;

        return Notification::make()
            ->success()
            ->title('Local de coleta criado')
            ->body("<strong>{$localColeta->logradouro}, {$localColeta->numero}</strong> foi criado.");
    }
}
