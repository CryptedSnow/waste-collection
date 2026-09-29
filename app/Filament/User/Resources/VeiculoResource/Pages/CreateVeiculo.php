<?php

namespace App\Filament\User\Resources\VeiculoResource\Pages;

use App\Filament\User\Resources\VeiculoResource;
use Filament\Actions;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Support\HtmlString;

class CreateVeiculo extends CreateRecord
{
    protected static string $resource = VeiculoResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getCreatedNotification(): ?Notification
    {
        $veiculo = $this->getRecord();

        return Notification::make()
            ->success()
            ->title('Veículo criado')
            ->body(new HtmlString("<strong>{$veiculo->placa_veiculo}</strong> foi criado."));
    }
}
