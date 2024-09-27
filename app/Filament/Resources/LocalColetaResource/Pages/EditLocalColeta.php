<?php

namespace App\Filament\Resources\LocalColetaResource\Pages;

use App\Filament\Resources\LocalColetaResource;
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
