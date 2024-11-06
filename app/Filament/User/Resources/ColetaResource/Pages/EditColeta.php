<?php

namespace App\Filament\User\Resources\ColetaResource\Pages;

use App\Filament\User\Resources\ColetaResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditColeta extends EditRecord
{
    protected static string $resource = ColetaResource::class;

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
