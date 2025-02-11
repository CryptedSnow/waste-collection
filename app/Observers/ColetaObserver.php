<?php

namespace App\Observers;

use App\Models\Coleta;
use Filament\Notifications\Notification;
use Illuminate\Support\Facades\Auth;

class ColetaObserver
{
    /**
     * Handle the Coleta "created" event.
     */
    public function created(Coleta $coleta): void
    {
        $recipient = Auth::user();

        if ($recipient) {
            Notification::make()
                ->title('Coleta criada')
                ->success()
                ->body("{$coleta->codigo_coleta} foi criada.")
                ->sendToDatabase($recipient);
        }
    }

    /**
     * Handle the Coleta "updated" event.
     */
    public function updated(Coleta $coleta): void
    {
        $recipient = Auth::user();

        if ($recipient) {
            Notification::make()
                ->title('Coleta atualizada')
                ->info()
                ->body("{$coleta->codigo_coleta} foi atualizada.")
                ->sendToDatabase($recipient);
        }
    }

    /**
     * Handle the Coleta "deleted" event.
     */
    public function deleted(Coleta $coleta): void
    {
        $recipient = Auth::user();

        if ($recipient) {
            Notification::make()
                ->title('Coleta inativa')
                ->warning()
                ->body("{$coleta->codigo_coleta} está na lixeira.")
                ->sendToDatabase($recipient);
        }
    }

    /**
     * Handle the Coleta "restored" event.
     */
    public function restored(Coleta $coleta): void
    {
        $recipient = Auth::user();

        if ($recipient) {
            Notification::make()
                ->title('Coleta restaurada')
                ->success()
                ->body("{$coleta->codigo_coleta} foi restaurada.")
                ->sendToDatabase($recipient);
        }
    }

    /**
     * Handle the Coleta "force deleted" event.
     */
    public function forceDeleted(Coleta $coleta): void
    {
        //
    }
}
