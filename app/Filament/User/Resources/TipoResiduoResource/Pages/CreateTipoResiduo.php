<?php

namespace App\Filament\User\Resources\TipoResiduoResource\Pages;

use App\Filament\User\Resources\TipoResiduoResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;

class CreateTipoResiduo extends CreateRecord
{
    protected static string $resource = TipoResiduoResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    public function getCreatedNotification(): ?Notification
    {
        $tipoResiduo = $this->record;

        return Notification::make()
            ->success()
            ->title('Resíduo criado')
            ->body("<strong>{$tipoResiduo->descricao}</strong> foi criado.");
    }
}
