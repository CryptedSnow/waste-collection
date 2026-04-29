<?php

namespace App\Filament\User\Resources\DepositoResiduoResource\Pages;

use App\Filament\User\Resources\DepositoResiduoResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;

class CreateDepositoResiduo extends CreateRecord
{
    protected static string $resource = DepositoResiduoResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    public function getCreatedNotification(): ?Notification
    {
        $depositoResiduo = $this->record;

        return Notification::make()
            ->success()
            ->title('Depósito de resíduos criado')
            ->body("<strong>{$depositoResiduo->nome}</strong> foi criado.");
    }
}
