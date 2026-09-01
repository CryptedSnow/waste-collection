<?php

namespace App\Observers;

use App\Models\Empresa;
use Illuminate\Support\Facades\Storage;

class EmpresaObserver
{
    public function updating(Empresa $empresa): void
    {
        $avatarColumn = 'avatar_url';

        if ($empresa->isDirty($avatarColumn) && $empresa->getOriginal($avatarColumn)) {

            $oldAvatarPath = $empresa->getOriginal($avatarColumn);

            if (!str_starts_with($oldAvatarPath, 'logo-empresas/')) {
                $oldAvatarPath = 'logo-empresas/' . ltrim($oldAvatarPath, '/');
            }

            if (Storage::disk('public')->exists($oldAvatarPath)) {
                Storage::disk('public')->delete($oldAvatarPath);
            }
        }
    }

    public function deleting(Empresa $empresa): void
    {
        $avatarColumn = 'avatar_url';

        if (!$empresa->{$avatarColumn}) {
            return;
        }

        $avatarPath = $empresa->{$avatarColumn};

        if (!str_starts_with($avatarPath, 'logo-empresas/')) {
            $avatarPath = 'logo-empresas/' . ltrim($avatarPath, '/');
        }

        if (Storage::disk('public')->exists($avatarPath)) {
            Storage::disk('public')->delete($avatarPath);
        }
    }
}
