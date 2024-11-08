<?php

namespace App\Filament\User\Resources\VeiculoResource\Pages;

use App\Filament\User\Resources\VeiculoResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Filament\Notifications\Notification;

class EditVeiculo extends EditRecord
{
    protected static string $resource = VeiculoResource::class;

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
        $veiculo = $this->record;

        return Notification::make()
            ->info()
            ->title('Veículo alterado')
            ->body("Veículo {$veiculo->placa_veiculo} foi alterado.");
    }
}
