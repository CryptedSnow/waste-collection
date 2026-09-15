<?php

namespace App\Providers\Filament;

use App\Filament\Resources\ActivitylogResource;
use Filament\Facades\Filament;
use Filament\Http\Middleware\Authenticate;
use Filament\Http\Middleware\DisableBladeIconComponents;
use Filament\Http\Middleware\DispatchServingFilamentEvent;
use Filament\Navigation\MenuItem;
use Filament\Pages;
use Filament\Pages\Auth\EmailVerification\EmailVerificationPrompt;
use Filament\Panel;
use Filament\PanelProvider;
use Filament\Support\Colors\Color;
use Filament\View\PanelsRenderHook;
use Filament\Widgets;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use Illuminate\Cookie\Middleware\EncryptCookies;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Routing\Middleware\SubstituteBindings;
use Illuminate\Session\Middleware\AuthenticateSession;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\Support\Facades\Blade;
use Illuminate\View\Middleware\ShareErrorsFromSession;
use Joaopaulolndev\FilamentEditProfile\FilamentEditProfilePlugin;
use Joaopaulolndev\FilamentEditProfile\Pages\EditProfilePage;
use Rmsramos\Activitylog\ActivitylogPlugin;

class AdminPanelProvider extends PanelProvider
{
    public function panel(Panel $panel): Panel
    {
        return $panel
            ->default()
            ->id('admin')
            ->path('admin')
            ->favicon(asset('images/favicon.png'))
            ->brandLogo(asset('images/logo.png'))
            ->brandLogoHeight('3rem')
            ->login()
            ->passwordReset()
            ->databaseNotifications()
            ->emailVerification()
            ->sidebarCollapsibleOnDesktop()
            ->darkMode(false)
            ->renderHook(
                PanelsRenderHook::AUTH_LOGIN_FORM_AFTER,
                fn (): string => Blade::render('@vite(\'resources/css/custom-cover-admin.css\')')
            )
            ->renderHook(
                PanelsRenderHook::AUTH_PASSWORD_RESET_REQUEST_FORM_AFTER,
                fn (): string => Blade::render('@vite(\'resources/css/custom-cover-admin.css\')')
            )
            ->renderHook(
                PanelsRenderHook::AUTH_PASSWORD_RESET_RESET_FORM_AFTER,
                fn (): string => Blade::render('@vite(\'resources/css/custom-cover-admin.css\')')
            )
            ->renderHook(
                PanelsRenderHook::SIMPLE_PAGE_START,
                fn (): string => Blade::render('@vite(\'resources/css/custom-cover-admin.css\')'),
                scopes: EmailVerificationPrompt::class,
            )
            ->renderHook(
                PanelsRenderHook::BODY_END,
                fn (): string => auth()->check() ? Blade::render("@include('custom-footer')") : '',
            )
            ->colors([
                'primary' => "#F7931A",
            ])
            ->discoverResources(in: app_path('Filament/Resources'), for: 'App\\Filament\\Resources')
            ->discoverPages(in: app_path('Filament/Pages'), for: 'App\\Filament\\Pages')
            ->pages([
                //Pages\Dashboard::class,
            ])
            ->discoverWidgets(in: app_path('Filament/Widgets'), for: 'App\\Filament\\Widgets')
            ->widgets([
                //Widgets\AccountWidget::class,
                //Widgets\FilamentInfoWidget::class,
            ])
            ->middleware([
                EncryptCookies::class,
                AddQueuedCookiesToResponse::class,
                StartSession::class,
                AuthenticateSession::class,
                ShareErrorsFromSession::class,
                VerifyCsrfToken::class,
                SubstituteBindings::class,
                DisableBladeIconComponents::class,
                DispatchServingFilamentEvent::class,
            ])
            ->authMiddleware([
                Authenticate::class,
            ])
            ->plugins([
                FilamentEditProfilePlugin::make()
                    ->slug('edit-profile')
                    ->setTitle('Meu Perfil')
                    ->setNavigationLabel('Meu Perfil')
                    ->setIcon('heroicon-o-user')
                    ->shouldRegisterNavigation(false)
                    ->shouldShowAvatarForm(true, 'avatars', 'mimes:jpeg,png,jpg|max:1024')
                    ->shouldShowDeleteAccountForm(false)
                    ->shouldShowSanctumTokens(false)
                    ->shouldShowBrowserSessionsForm(true),
                ActivitylogPlugin::make()
                    ->resource(ActivitylogResource::class)
                    ->navigationIcon('heroicon-o-shield-check')
                    ->label('Log')
                    ->pluralLabel('Logs')
                    ->translateSubject(fn($label) => __("yourCustomLangFile.".$label))
                    ->navigationItem(true)
                    ->navigationSort(5)
                    ->dateFormat('d/m/Y')
                    ->datetimeFormat('d/m/Y H:i:s')
                    ->customizeDatePicker(function ($field) {
                        return $field
                            ->native(false)
                            ->displayFormat('d/m/Y')
                            ->format('Y-m-d');
                    })
            ])
            ->userMenuItems([
                'profile' => MenuItem::make()
                    ->label(fn () => auth()->user()->name ?? 'Perfil')
                    ->url(fn () => EditProfilePage::getUrl())
                    ->icon('heroicon-m-user-circle')
            ]);
    }
}
