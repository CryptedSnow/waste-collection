<?php

namespace App\Filament\User\Resources\MotoristaResource\Pages;

use App\Filament\User\Resources\MotoristaResource;
use Filament\Actions;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Support\HtmlString;

class CreateMotorista extends CreateRecord
{
    protected static string $resource = MotoristaResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getCreatedNotification(): ?Notification
    {
        $motorista = $this->getRecord();

        return Notification::make()
            ->success()
            ->title('Motorista criado(a)')
            ->body(new HtmlString("<strong>{$motorista->nome}</strong> foi criado(a)."));
    }
}
