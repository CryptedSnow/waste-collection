<?php

namespace App\Providers;

use Illuminate\Auth\Notifications\{ResetPassword, VerifyEmail};
use Illuminate\Support\ServiceProvider;
use Filament\Support\Facades\FilamentView;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Support\Facades\Blade;

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
        FilamentView::registerRenderHook(
            'panels::auth.login.form.after',
            fn (): string => Blade::render('@vite(\'resources/css/custom-cover.css\')'),
        );

        VerifyEmail::toMailUsing(function($notifiable, $url) {
            return (new MailMessage)
                ->subject('Verifique seu e-mail')
                ->line('Por favor, clique no link abaixo para verificar seu e-mail.')
                ->action('Verificar e-mail', $url)
                ->line('Se você não criou uma conta, nenhuma ação é requerida.')
                ->salutation("Atenciosamente,\n\nWaste collection");
        });

        ResetPassword::toMailUsing(function($notifiable, $url) {
            $expires = config('auth.passwords.'.config('auth.defaults.passwords').'.expire');
            $primeiro_nome = explode(' ', trim($notifiable->name))[0];
            return (new MailMessage)
                ->greeting("Olá, $primeiro_nome!")
                ->subject('Notificação para resetar senha')
                ->line('Se você está recebendo esse e-mail, é por que recebemos um pedido de redefinição de senha para sua conta.')
                ->action('Resetar senha', $url)
                ->line("Este link de reset de senha vai expirar em $expires minutos.")
                ->line('Se você não requisitou o reset de senha, ignore essa mensagem.')
                ->salutation("Atenciosamente,\n\nWaste collection");
        });

    }
}
