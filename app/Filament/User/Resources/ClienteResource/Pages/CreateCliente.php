<?php

namespace App\Filament\User\Resources\ClienteResource\Pages;

use App\Filament\User\Resources\ClienteResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;

class CreateCliente extends CreateRecord
{
    protected static string $resource = ClienteResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    public function getCreatedNotification(): ?Notification
    {
        $cliente = $this->record;

        return Notification::make()
            ->success()
            ->title('Cliente criado(a)')
            ->body("<strong>{$cliente->nome}</strong> foi criado(a).");
    }
}
