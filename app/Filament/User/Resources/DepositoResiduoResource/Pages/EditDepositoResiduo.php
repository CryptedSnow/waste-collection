<?php

namespace App\Filament\User\Resources\DepositoResiduoResource\Pages;

use App\Filament\User\Resources\DepositoResiduoResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditDepositoResiduo extends EditRecord
{
    protected static string $resource = DepositoResiduoResource::class;

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
