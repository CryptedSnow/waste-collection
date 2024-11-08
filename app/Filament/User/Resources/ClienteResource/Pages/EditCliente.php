<?php

namespace App\Filament\User\Resources\ClienteResource\Pages;

use App\Filament\User\Resources\ClienteResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Filament\Notifications\Notification;

class EditCliente extends EditRecord
{
    protected static string $resource = ClienteResource::class;

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

    public function getSavedNotification(): ?Notification
    {
        $cliente = $this->record;

        return Notification::make()
            ->info()
            ->title('Cliente alterado(a)')
            ->body("Cliente {$cliente->nome} foi alterado(a).");
    }
}
