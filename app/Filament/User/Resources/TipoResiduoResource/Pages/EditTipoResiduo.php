<?php

namespace App\Filament\User\Resources\TipoResiduoResource\Pages;

use App\Filament\User\Resources\TipoResiduoResource;
use Filament\Actions;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\EditRecord;
use Illuminate\Support\HtmlString;

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

    protected function getSavedNotification(): ?Notification
    {
        $tipoResiduo = $this->getRecord();

        return Notification::make()
            ->info()
            ->title('Resíduo alterado')
            ->body(new HtmlString("<strong>{$tipoResiduo->descricao}</strong> foi alterado."));
    }
}
