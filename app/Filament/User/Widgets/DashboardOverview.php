<?php

namespace App\Filament\User\Widgets;

use App\Models\{Cliente, Coleta, DepositoResiduo, LocalColeta, Motorista, TipoResiduo, Veiculo};
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use Filament\Facades\Filament;

class DashboardOverview extends BaseWidget
{
    protected function getStats(): array
    {
        $tenant = Filament::getTenant();
        return [
            Stat::make("Clientes", Cliente::where('empresa_id', $tenant->id)->count()),
            Stat::make("Depósito de resíduos", DepositoResiduo::where('empresa_id', $tenant->id)->count()),
            Stat::make("Tipos de resíduos", TipoResiduo::where('empresa_id', $tenant->id)->count()),
            Stat::make("Veículos", Veiculo::where('empresa_id', $tenant->id)->count()),
            Stat::make("Motoristas", Motorista::where('empresa_id', $tenant->id)->count()),
            Stat::make("Locais de coleta", LocalColeta::where('empresa_id', $tenant->id)->count()),
            Stat::make("Coletas", Coleta::where('empresa_id', $tenant->id)->count()),
        ];
    }
}
