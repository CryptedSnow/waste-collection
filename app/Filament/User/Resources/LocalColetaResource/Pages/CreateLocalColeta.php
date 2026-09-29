<?php

namespace App\Filament\User\Resources\LocalColetaResource\Pages;

use App\Filament\User\Resources\LocalColetaResource;
use Filament\Actions;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Support\HtmlString;

class CreateLocalColeta extends CreateRecord
{
    protected static string $resource = LocalColetaResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getCreatedNotification(): ?Notification
    {
        $localColeta = $this->getRecord();

        return Notification::make()
            ->success()
            ->title('Local de coleta criado')
            ->body(new HtmlString("<strong>{$localColeta->logradouro}, {$localColeta->numero}</strong> foi criado."));
    }
}
