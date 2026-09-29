<?php

namespace App\Filament\User\Resources\TipoResiduoResource\Pages;

use App\Filament\User\Resources\TipoResiduoResource;
use Filament\Actions;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Support\HtmlString;

class CreateTipoResiduo extends CreateRecord
{
    protected static string $resource = TipoResiduoResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getCreatedNotification(): ?Notification
    {
        $tipoResiduo = $this->getRecord();

        return Notification::make()
            ->success()
            ->title('Resíduo criado')
            ->body(new HtmlString("<strong>{$tipoResiduo->descricao}</strong> foi criado."));
    }
}
