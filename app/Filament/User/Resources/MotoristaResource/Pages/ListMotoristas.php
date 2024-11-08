<?php

namespace App\Filament\User\Resources\MotoristaResource\Pages;

use App\Filament\User\Resources\MotoristaResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListMotoristas extends ListRecords
{
    protected static string $resource = MotoristaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
