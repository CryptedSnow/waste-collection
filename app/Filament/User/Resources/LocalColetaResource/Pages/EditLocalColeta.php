<?php

namespace App\Filament\User\Resources\LocalColetaResource\Pages;

use App\Filament\User\Resources\LocalColetaResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Filament\Notifications\Notification;

class EditLocalColeta extends EditRecord
{
    protected static string $resource = LocalColetaResource::class;

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
        $local_coleta = $this->record;

        return Notification::make()
            ->info()
            ->title('Local de coleta alterado')
            ->body("Local {$local_coleta->logradouro}, {$local_coleta->numero} foi alterado.");
    }
}
