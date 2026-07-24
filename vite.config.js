import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/css/app.css',
                'resources/js/app.js',
                'resources/css/custom-cover-admin.css',
                'resources/css/custom-cover-user.css'
            ],
            refresh: true,
        }),
    ],
});
