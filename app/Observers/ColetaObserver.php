<?php

namespace App\Observers;

use App\Models\Coleta;
use Filament\Facades\Filament;
use Filament\Notifications\Notification;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class ColetaObserver
{
    public function created(Coleta $coleta): void
    {
        $this->sendNotification(
            title: 'Coleta criada',
            body: "{$coleta->codigo_coleta} foi criada.",
            status: 'success',
        );
    }

    public function updated(Coleta $coleta): void
    {
        $this->sendNotification(
            title: 'Coleta atualizada',
            body: "{$coleta->codigo_coleta} foi atualizada.",
            status: 'info',
        );
    }

    public function deleted(Coleta $coleta): void
    {
        $this->sendNotification(
            title: 'Coleta inativa',
            body: "{$coleta->codigo_coleta} está na lixeira.",
            status: 'warning',
        );
    }

    public function restored(Coleta $coleta): void
    {
        $this->sendNotification(
            title: 'Coleta restaurada',
            body: "{$coleta->codigo_coleta} foi restaurada.",
            status: 'success',
        );
    }

    public function forceDeleted(Coleta $coleta): void
    {
        //
    }

    protected function sendNotification(string $title, string $body, string $status = 'success'): void
    {
        $recipient = Auth::user();
        $tenant = Filament::getTenant();

        if (! $recipient || ! $tenant) {
            return;
        }

        $notification = Notification::make()
            ->title($title)
            ->body($body);

        match ($status) {
            'success' => $notification->success(),
            'info' => $notification->info(),
            'warning' => $notification->warning(),
            'danger' => $notification->danger(),
            default => $notification->success(),
        };

        $data = $notification->getDatabaseMessage();
        $data['tenant_id'] = $tenant->getKey();

        $recipient->notifications()->create([
            'id' => (string) Str::uuid(),
            'type' => 'Filament\Notifications\DatabaseNotification',
            'data' => $data,
        ]);
    }
}
