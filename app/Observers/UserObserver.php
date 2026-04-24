<?php

namespace App\Observers;

use App\Models\User;
use Filament\Notifications\Notification;
use Illuminate\Support\Facades\{Auth, Storage};

class UserObserver
{
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

    public function forceDeleted(User $user): void
    {
        //
    }

    public function updating(User $user): void
    {
        $avatarColumn = config('filament-edit-profile.avatar_column', 'avatar_url');

        if ($user->isDirty($avatarColumn) && $user->getOriginal($avatarColumn)) {

            $oldAvatarPath = $user->getOriginal($avatarColumn);

            if (!str_starts_with($oldAvatarPath, 'avatars/')) {
                $oldAvatarPath = 'avatars/' . ltrim($oldAvatarPath, '/');
            }

            if (Storage::disk('public')->exists($oldAvatarPath)) {
                Storage::disk('public')->delete($oldAvatarPath);
            }

        }
    }
}
