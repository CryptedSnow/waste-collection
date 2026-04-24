<?php

namespace App\Observers;

use App\Models\Coleta;
use Filament\Notifications\Notification;
use Illuminate\Support\Facades\Auth;

class ColetaObserver
{
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

    public function forceDeleted(Coleta $coleta): void
    {
        //
    }

}
