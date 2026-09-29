<?php

namespace App\Filament\User\Resources\ClienteResource\Pages;

use App\Filament\User\Resources\ClienteResource;
use Filament\Actions;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\EditRecord;
use Illuminate\Support\HtmlString;

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

    protected function getSavedNotification(): ?Notification
    {
        $cliente = $this->getRecord();

        return Notification::make()
            ->info()
            ->title('Cliente alterado(a)')
            ->body(new HtmlString("<strong>{$cliente->nome}</strong> foi alterado(a)."));
    }
}
