<?php

namespace App\Filament\User\Resources\DepositoResiduoResource\Pages;

use App\Filament\User\Resources\DepositoResiduoResource;
use Filament\Actions;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\EditRecord;
use Illuminate\Support\HtmlString;

class EditDepositoResiduo extends EditRecord
{
    protected static string $resource = DepositoResiduoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            //Actions\DeleteAction::make(),
            Actions\ForceDeleteAction::make(),
            Actions\RestoreAction::make(),
        ];
    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getSavedNotification(): ?Notification
    {
        $depositoResiduo = $this->getRecord();

        return Notification::make()
            ->info()
            ->title('Depósito de resíduos alterado')
            ->body(new HtmlString("<strong>{$depositoResiduo->nome}</strong> foi alterado."));
    }
}
