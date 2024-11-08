<?php

namespace App\Filament\User\Resources\TipoResiduoResource\Pages;

use App\Filament\User\Resources\TipoResiduoResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Filament\Notifications\Notification;

class EditTipoResiduo extends EditRecord
{
    protected static string $resource = TipoResiduoResource::class;

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
        $tipo_residuo = $this->record;

        return Notification::make()
            ->info()
            ->title('Resíduo alterado')
            ->body("Resíduo {$tipo_residuo->descricao} foi alterado.");
    }
}
