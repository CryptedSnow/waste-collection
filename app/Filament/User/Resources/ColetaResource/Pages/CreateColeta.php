<?php

namespace App\Filament\User\Resources\ColetaResource\Pages;

use App\Filament\User\Resources\ColetaResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;

class CreateColeta extends CreateRecord
{
    protected static string $resource = ColetaResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    public function getCreatedNotification(): ?Notification
    {
        $coleta = $this->record;

        return Notification::make()
            ->success()
            ->title('Coleta criada')
            ->body("Coleta {$coleta->codigo_coleta} foi criada.");
    }

}
