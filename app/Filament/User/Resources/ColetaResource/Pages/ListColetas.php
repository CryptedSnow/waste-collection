<?php

namespace App\Filament\User\Resources\ColetaResource\Pages;

use App\Filament\User\Resources\ColetaResource;
use App\Models\Coleta;
use Filament\Actions;
use Filament\Resources\Components\Tab;
use Illuminate\Database\Eloquent\Builder;
use Filament\Resources\Pages\ListRecords;
use Illuminate\Support\Facades\Auth;

class ListColetas extends ListRecords
{
    protected static string $resource = ColetaResource::class;

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

            "Em andamento" => Tab::make('Em andamento')
                ->modifyQueryUsing(fn (Builder $query) => $query->where('status', 'Em andamento')
                ->whereIn('empresa_id', $empresa))
                ->badge($this->statusCount('Em andamento', $empresa))->badgeColor('warning'),

            "Concluído" => Tab::make('Concluído')
                ->modifyQueryUsing(fn (Builder $query) => $query->where('status', 'Concluído')
                ->whereIn('empresa_id', $empresa))
                ->badge($this->statusCount('Concluído', $empresa))->badgeColor('success'),

            "Cancelado" => Tab::make('Cancelado')
                ->modifyQueryUsing(fn (Builder $query) => $query->where('status', 'Cancelado')
                ->whereIn('empresa_id', $empresa))
                ->badge($this->statusCount('Cancelado', $empresa))->badgeColor('danger'),
        ];
    }

    private function statusCount(?string $status, array $empresa): int
    {
        $query = Coleta::query()->whereIn('empresa_id', $empresa);

        if ($status) {
            $query->where('status', $status);
        }

        return $query->count();
    }
}
