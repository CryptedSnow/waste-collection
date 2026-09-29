<?php

namespace App\Filament\User\Resources\ClienteResource\Pages;

use App\Filament\User\Resources\ClienteResource;
use Filament\Actions;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Support\HtmlString;

class CreateCliente extends CreateRecord
{
    protected static string $resource = ClienteResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getCreatedNotification(): ?Notification
    {
        $cliente = $this->getRecord();

        return Notification::make()
            ->success()
            ->title('Cliente criado(a)')
            ->body(new HtmlString("<strong>{$cliente->nome}</strong> foi criado(a)."));
    }
}
