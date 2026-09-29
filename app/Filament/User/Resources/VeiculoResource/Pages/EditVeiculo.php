<?php

namespace App\Filament\User\Resources\VeiculoResource\Pages;

use App\Filament\User\Resources\VeiculoResource;
use Filament\Actions;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\EditRecord;
use Illuminate\Support\HtmlString;

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

    protected function getSavedNotification(): ?Notification
    {
        $veiculo = $this->getRecord();

        return Notification::make()
            ->info()
            ->title('Veículo alterado')
            ->body(new HtmlString("<strong>{$veiculo->placa_veiculo}</strong> foi alterado."));
    }
}
