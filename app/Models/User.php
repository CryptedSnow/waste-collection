<?php

namespace App\Models;

use App\Observers\UserObserver;
use Filament\Models\Contracts\{FilamentUser, HasAvatar};
use Illuminate\Support\Facades\Storage;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Spatie\Permission\Traits\HasRoles;
use Filament\Panel;
use Illuminate\Support\Str;
use Filament\Models\Contracts\HasTenants;
use Illuminate\Support\Collection;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;
use Filament\Facades\Filament;
use Illuminate\Notifications\DatabaseNotification;
use Illuminate\Database\Eloquent\Relations\MorphMany;

class User extends Authenticatable implements FilamentUser, HasTenants, HasAvatar, MustVerifyEmail
{
    use HasFactory, Notifiable, SoftDeletes, HasRoles, HasApiTokens;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'uuid',
        'name',
        'email',
        'password',
        'avatar_url',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    protected static function boot()
    {
        parent::boot();
        static::creating(function ($model) {
            $model->uuid = (string) Str::uuid();
        });
        static::observe(UserObserver::class);
    }

    public function getRouteKeyName()
    {
        return 'uuid';
    }

    public function empresas()
    {
        return $this->belongsToMany(Empresa::class, 'users_empresas');
    }

    public function getTenants(Panel $panel): Collection
    {
        return $this->empresas;
    }

    public function canAccessTenant(Model $tenant): bool
    {
        return $this->empresas()->whereKey($tenant)->exists();
    }

    public function canAccessPanel(Panel $panel): bool
    {
        $panelRoles = [
            'admin' => ['Admin', 'Super Admin'],
            'user'  => ['User'],
        ];

        $requiredRoles = $panelRoles[$panel->getId()] ?? null;

        if ($requiredRoles === null) {
            return false;
        }

        return $this->hasAnyRole($requiredRoles);
    }

    public function getFilamentAvatarUrl(): ?string
    {
        if (empty($this->avatar_url)) {
            return null;
        }

        $path = $this->avatar_url;

        if (!str_starts_with($path, 'avatars/')) {
            $path = 'avatars/' . ltrim($path, '/');
        }

        return Storage::disk('public')->url($path);
    }

    public function notifications(): MorphMany
    {
        $relation = $this->morphMany(DatabaseNotification::class, 'notifiable')->latest();

        $panel = Filament::getCurrentPanel();
        $tenant = Filament::getTenant();

        if ($panel?->getId() === 'admin') {
            return $relation->whereRaw('1 = 0');
        }

        if ($tenant) {
            $relation->where('data->tenant_id', $tenant->getKey());
        }

        return $relation;
    }

}
