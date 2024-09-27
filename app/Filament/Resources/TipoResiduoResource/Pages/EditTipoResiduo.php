<?php

namespace App\Filament\Resources\TipoResiduoResource\Pages;

use App\Filament\Resources\TipoResiduoResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

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
}
