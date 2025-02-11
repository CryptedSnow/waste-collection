<?php

namespace App\Filament\User\Resources\VeiculoResource\Pages;

use App\Filament\User\Resources\VeiculoResource;
use App\Models\Veiculo;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use Illuminate\Database\Eloquent\Builder;
use Filament\Resources\Components\Tab;
use Filament\Facades\Filament;

class ListVeiculos extends ListRecords
{
    protected static string $resource = VeiculoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Criar veículo'),
        ];
    }

    public function getTabs(): array
    {
        $tenant = Filament::getTenant();

        if (!$tenant) {
            return [];
        }

        $empresa_id = [$tenant->id];

        return [
            "Todos" => Tab::make('Todos')
                ->badge($this->statusCount(null, $empresa_id))
                ->badgeColor('info'),

            "Disponível" => Tab::make('Disponível')
                ->modifyQueryUsing(fn (Builder $query) => $query->where('status', 'Disponível')
                ->whereIn('empresa_id', $empresa_id))
                ->badge($this->statusCount('Disponível', $empresa_id))
                ->badgeColor('success'),

            "Em manutenção" => Tab::make('Em manutenção')
                ->modifyQueryUsing(fn (Builder $query) => $query->where('status', 'Em manutenção')
                ->whereIn('empresa_id', $empresa_id))
                ->badge($this->statusCount('Em manutenção', $empresa_id))
                ->badgeColor('warning'),
        ];
    }

    private function statusCount(?string $status, array $empresa): int
    {
        $query = Veiculo::query()->where('empresa_id', $empresa);

        if ($status) {
            $query->where('status', $status);
        }

        return $query->count();
    }
}
