<?php

namespace App\Filament\User\Resources\LocalColetaResource\Pages;

use App\Filament\User\Resources\LocalColetaResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditLocalColeta extends EditRecord
{
    protected static string $resource = LocalColetaResource::class;

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
