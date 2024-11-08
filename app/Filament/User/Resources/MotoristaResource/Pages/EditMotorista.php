<?php

namespace App\Filament\User\Resources\MotoristaResource\Pages;

use App\Filament\User\Resources\MotoristaResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Filament\Notifications\Notification;

class EditMotorista extends EditRecord
{
    protected static string $resource = MotoristaResource::class;

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
        $motorista = $this->record;

        return Notification::make()
            ->info()
            ->title('Motorista alterado')
            ->body("Motorista {$motorista->nome} foi alterado.");
    }
}
