<?php

namespace App\Filament\User\Resources\DepositoResiduoResource\Pages;

use App\Filament\User\Resources\DepositoResiduoResource;
use Filament\Actions;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Support\HtmlString;

class CreateDepositoResiduo extends CreateRecord
{
    protected static string $resource = DepositoResiduoResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getCreatedNotification(): ?Notification
    {
        $depositoResiduo = $this->getRecord();

        return Notification::make()
            ->success()
            ->title('Depósito de resíduos criado')
            ->body(new HtmlString("<strong>{$depositoResiduo->nome}</strong> foi criado."));
    }
}
