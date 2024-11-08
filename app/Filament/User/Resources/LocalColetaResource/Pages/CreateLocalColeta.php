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
        $local_coleta = $this->record;

        return Notification::make()
            ->success()
            ->title('Local de coleta criado')
            ->body("Local {$local_coleta->logradouro}, {$local_coleta->numero} foi criado.");
    }
}
