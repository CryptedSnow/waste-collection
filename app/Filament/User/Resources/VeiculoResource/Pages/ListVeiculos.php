<?php

namespace App\Filament\User\Resources\VeiculoResource\Pages;

use App\Filament\User\Resources\VeiculoResource;
use App\Models\Veiculo;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use Illuminate\Database\Eloquent\Builder;
use Filament\Resources\Components\Tab;
use Illuminate\Support\Facades\Auth;

class ListVeiculos extends ListRecords
{
    protected static string $resource = VeiculoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }

    public function getTabs(): array
    {
        $user = Auth::user();
        $empresa = $user->empresas->pluck('id')->toArray();

        return [
            "Todos" => Tab::make('Todos')
                ->badge($this->statusCount(null, $empresa))
                ->badgeColor('info'),

            "Disponível" => Tab::make('Disponível')
                ->modifyQueryUsing(fn (Builder $query) => $query->where('status', 'Disponível')
                ->whereIn('empresa_id', $empresa))
                ->badge($this->statusCount('Disponível', $empresa))
                ->badgeColor('success'),

            "Em manutenção" => Tab::make('Em manutenção')
                ->modifyQueryUsing(fn (Builder $query) => $query->where('status', 'Em manutenção')
                ->whereIn('empresa_id', $empresa))
                ->badge($this->statusCount('Em manutenção', $empresa))
                ->badgeColor('warning'),
        ];
    }

    private function statusCount(?string $status, array $empresa): int
    {
        $query = Veiculo::query()->whereIn('empresa_id', $empresa);

        if ($status) {
            $query->where('status', $status);
        }

        return $query->count();
    }
}
