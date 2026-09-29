<?php

namespace App\Filament\User\Resources\ColetaResource\Pages;

use App\Filament\User\Resources\ColetaResource;
use Filament\Actions;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Support\HtmlString;

class CreateColeta extends CreateRecord
{
    protected static string $resource = ColetaResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getCreatedNotification(): ?Notification
    {
        $coleta = $this->getRecord();

        return Notification::make()
            ->success()
            ->title('Coleta criada')
            ->body(new HtmlString("<strong>{$coleta->codigo_coleta}</strong> foi criada."));
    }

}
