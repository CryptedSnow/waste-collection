<?php

namespace App\Observers;

use App\Models\User;
use Filament\Notifications\Notification;
use Illuminate\Support\Facades\Auth;

class UserObserver
{
    /**
     * Handle the User "created" event.
     */
    public function created(User $user): void
    {
        $recipient = Auth::user();

        if ($recipient) {
            Notification::make()
                ->title('Usuário(a) criado(a)')
                ->success()
                ->body("{$user->name} foi criado(a).")
                ->sendToDatabase($recipient);
        }
    }

    /**
     * Handle the User "updated" event.
     */
    public function updated(User $user): void
    {
        $recipient = Auth::user();

        if ($recipient) {
            Notification::make()
                ->title('Usuário(a) atualizado(a)')
                ->info()
                ->body("{$user->name} foi atualizado(a).")
                ->sendToDatabase($recipient);
        }
    }

    /**
     * Handle the User "deleted" event.
     */
    public function deleted(User $user): void
    {
        $recipient = Auth::user();

        if ($recipient) {
            Notification::make()
                ->title('Usuário(a) inativa(a)')
                ->warning()
                ->body("{$user->name} está na lixeira.")
                ->sendToDatabase($recipient);
        }
    }

    /**
     * Handle the User "restored" event.
     */
    public function restored(User $user): void
    {
        $recipient = Auth::user();

        if ($recipient) {
            Notification::make()
                ->title('Usuário(a) restaurado(a)')
                ->success()
                ->body("{$user->name} foi restaurado(a).")
                ->sendToDatabase($recipient);
        }
    }

    /**
     * Handle the User "force deleted" event.
     */
    public function forceDeleted(User $user): void
    {
        //
    }
}
