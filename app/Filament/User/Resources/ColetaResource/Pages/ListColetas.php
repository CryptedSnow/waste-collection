<?php

namespace App\Filament\User\Resources\ColetaResource\Pages;

use App\Filament\User\Resources\ColetaResource;
use App\Models\Coleta;
use Filament\Actions;
use Filament\Resources\Components\Tab;
use Illuminate\Database\Eloquent\Builder;
use Filament\Resources\Pages\ListRecords;
use Filament\Facades\Filament;

class ListColetas extends ListRecords
{
    protected static string $resource = ColetaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Criar coleta'),
        ];
    }

    public function getTabs(): array
    {
        $tenant = Filament::getTenant();

        if (!$tenant) {
            return [];
        }

        $empresa_id = $tenant->id;

        return [

            "Todos" => Tab::make('Todos')
                ->badge($this->statusCount(null, $empresa_id))
                ->badgeColor('info'),

            "Em andamento" => Tab::make('Em andamento')
                ->modifyQueryUsing(fn (Builder $query) => $query->where('status', 'Em andamento')
                    ->where('empresa_id', $empresa_id))
                ->badge($this->statusCount('Em andamento', $empresa_id))->badgeColor('warning'),

            "Concluído" => Tab::make('Concluído')
                ->modifyQueryUsing(fn (Builder $query) => $query->where('status', 'Concluído')
                    ->where('empresa_id', $empresa_id))
                ->badge($this->statusCount('Concluído', $empresa_id))->badgeColor('success'),

            "Cancelado" => Tab::make('Cancelado')
                ->modifyQueryUsing(fn (Builder $query) => $query->where('status', 'Cancelado')
                    ->where('empresa_id', $empresa_id))
                ->badge($this->statusCount('Cancelado', $empresa_id))->badgeColor('danger'),

        ];
    }

    private function statusCount(?string $status, int $empresa): int
    {
        $query = Coleta::query()->where('empresa_id', $empresa);

        if ($status) {
            $query->where('status', $status);
        }

        return $query->count();
    }
}
