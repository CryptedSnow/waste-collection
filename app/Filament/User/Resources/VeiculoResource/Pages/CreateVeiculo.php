<?php

namespace App\Filament\User\Resources\VeiculoResource\Pages;

use App\Filament\User\Resources\VeiculoResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;

class CreateVeiculo extends CreateRecord
{
    protected static string $resource = VeiculoResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    public function getCreatedNotification(): ?Notification
    {
        $veiculo = $this->record;

        return Notification::make()
            ->success()
            ->title('Veículo criado')
            ->body("Veículo {$veiculo->placa_veiculo} foi criado.");
    }
}
