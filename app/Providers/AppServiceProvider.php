<?php

namespace App\Providers;

use App\Models\{Coleta, Empresa, User};
use App\Observers\{ColetaObserver, EmpresaObserver, UserObserver};
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        User::observe(UserObserver::class);
        Empresa::observe(EmpresaObserver::class);
        Coleta::observe(ColetaObserver::class);
    }
}
