<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## Local machine

Follow the steps to set the application on your local machine.

Step N°1 - Run the following commands below to install the dependencies (Check the existence of `Composer` on your machine).

```
composer install 
cp .env.example .env 
php artisan cache:clear 
composer dump-autoload 
php artisan key:generate
```

Step N°2 - In `.env` file set the following snippet to connect the application to your database (Check your database, it is necessary create a database first to create the migrations).
```
# MySQL
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=waste-collection
DB_USERNAME=root
DB_PASSWORD=

# PostgreSQL
DB_CONNECTION=pgsql
DB_HOST=127.0.0.1
DB_PORT=5432
DB_DATABASE=waste-collection
DB_USERNAME=postgres
DB_PASSWORD=
```

Before you perfomate the migrations, go to [notifications](https://github.com/CryptedSnow/waste-collection/blob/main/database/migrations/2024_11_30_113525_create_notifications_table.php) table to make a change in a specific line, it will avoid errors involving notifications and database.
```
# MySQL
$table->text('data');

# PostgreSQL
$table->json('data');
```

Step N°3 - Run the migrations.

```
php artisan migrate
```

Step N°4 - Use the commands to perfomate the Seeders.

```
php artisan db:seed
```

If you want perfomate migrations and seeders at same time.
```
php artisan migrate --seed
```

Step N°5 - View the migrations status.
```
php artisan migrate:status
```

Step N°6 - Run the following command to install `Vite` (Check the existence of `Node` and `NPM` on your machine).
```
npm install
```

Step N°7 - You need decide an option to start the `Vite`.
```
# Run Vite to server development
npm run dev
 
# Create and version assets for production... (I usually choose this in my local machine)
npm run build
```

Step N°8 - Run the following command to start Apache to run the application.
```
php artisan serve
```

With help of **Laravel Spatie** and **Multi-tenancy**, exist two roles user: **Admin**, **User** and many companies. Making certains roles user has more privileges than others, it is very important you run the seeds to those users be created.

* User: Jonathan Joestar
```
Email: jonathan.joestar@email.com
Password: 12345678
Role: Admin
Permission: Many permissions
Companies: Scarlet Overdrive
```

* User: Dio Brando
```
Email: dio.brando@email.com
Password: 12345678
Role: Admin, User
Permission: Many permissions
Companies: Tusk, Ball Breaker, The World
```

* User: Johnny Joestar
```
Email: johnny.joestar@email.com
Password: 12345678
Role: User
Permission: Many permissions
Companies: Tusk
```

* User: Gyro Zeppeli
```
Email: gyro.zeppeli@email.com
Password: 12345678
Role: User
Permission: Many permissions
Companies: Ball Breaker
```

* User: Diego Brando
```
Email: diego.brando@email.com
Password: 12345678
Role: User
Permission: Many permissions
Companies: The World
```

Panels (Admin and User)
- Admin: http://127.0.0.1:8000/admin/login
- User: http://127.0.0.1:8000/user/login

## Environment Docker

```
# MySQL (Docker)
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=waste-collection
DB_USERNAME=sail
DB_PASSWORD=password

# PostgreSQL (Docker)
DB_CONNECTION=pgsql
DB_HOST=pgsql
DB_PORT=5432
DB_DATABASE=waste-collection
DB_USERNAME=postgres
DB_PASSWORD=secret
```

### Panels
- phpMyAdmin: http://localhost:8081
- pgAdmin 4: http://localhost:5050
    - User: `admin@admin.com`
    - Password: `admin`
