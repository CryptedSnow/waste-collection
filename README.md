<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## Local machine

Follow the steps to set the application on your local machine.

1 - Run the following commands below to install the dependencies (Check the existence of `Composer` on your machine).

```
composer install 
cp .env.example .env  
composer dump-autoload 
php artisan key:generate
```

2 - In `.env` file set the following snippet to connect the application to your database.
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

3 - Run the migrations.

```
php artisan migrate
```

4 - Use the commands to perfomate the Seeders.

```
php artisan db:seed
```

If you want perfomate migrations and seeders at same time.
```
php artisan migrate --seed
```

5 - View the migrations status.
```
php artisan migrate:status
```

6 - Run the following command to install `Vite` (Check the existence of `Node` and `NPM` on your machine).
```
npm install
```

7 - You need decide an option to start the `Vite`.
```
# Run Vite to server development
npm run dev
 
# Create and version assets for production... (I usually choose this in my local machine)
npm run build
```

8 - Run the following command to start Apache to run the application.
```
php artisan serve
```

<a id="laravel-spatie-info"></a> With help of **Laravel Spatie** and **Multi-tenancy**, exist two roles user: **Admin**, **User** and many companies. Making certains roles user has more privileges than others, it is very important you run the seeds to those users be created.

Panels (Admin and User)
- Admin: http://127.0.0.1:8000/admin/login
- User: http://127.0.0.1:8000/user/login

```
Name: Jonathan Joestar
Email: jonathan.joestar@email.com
Password: 12345678
Role: Admin
Permission: Many permissions
Companies: Scarlet Overdrive
```

```
Name: Dio Brando
Email: dio.brando@email.com
Password: 12345678
Role: Admin, User
Permission: Many permissions
Companies: Tusk, Ball Breaker, The World
```

```
Name: Johnny Joestar
Email: johnny.joestar@email.com
Password: 12345678
Role: User
Permission: Many permissions
Companies: Tusk
```

```
Name: Gyro Zeppeli
Email: gyro.zeppeli@email.com
Password: 12345678
Role: User
Permission: Many permissions
Companies: Ball Breaker
```

```
Name: Diego Brando
Email: diego.brando@email.com
Password: 12345678
Role: User
Permission: Many permissions
Companies: The World
```

## Docker environment

1 - Power on the containers:

**sail command way**

```
./vendor/bin/sail up -d
```

I prefere to shorten the command, you can use:
```
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
```

Doing this, you don't need write ```./vendor/bin/sail```, you can use a minor command: 
```
sail up -d
```

If you want see the sail commands, use: 
```
sail --help
```

**docker-compose command way**
```
docker-compose up -d
```

2 - Run the following commands below to install the necessary dependencies.

**sail command way**

```
sail composer install
sail cp .env.example .env
sail composer dump-autoload
sail artisan key:generate
```

**docker-compose command way**

```
docker-compose exec laravel.test composer install
docker-compose exec laravel.test cp .env.example .env
docker-compose exec laravel.test composer dump-autoload
docker-compose exec laravel.test artisan key:generate
```

3 - In ```.env``` file set the following snippet to connect the application to database container from Docker:

```
# MySQL
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=waste-collection
DB_USERNAME=sail
DB_PASSWORD=password

# PostgreSQL
DB_CONNECTION=pgsql
DB_HOST=pgsql
DB_PORT=5432
DB_DATABASE=waste-collection
DB_USERNAME=postgres
DB_PASSWORD=secret
```

4 - To performate the migrations, you need use the command:

**sail command way**

```
sail php artisan migrate --seed
```

**docker-compose command way**

```
docker-compose exec laravel.test php artisan migrate --seed
```

Or

**sail command way**

```
sail php artisan migrate
sail php db:seed
```

**docker-compose command way**

```
docker-compose exec laravel.test php artisan migrate
docker-compose exec laravel.test php artisan db:seed
```

5 - Run the following command to install `Vite`.

**sail command way**

```
sail npm install
```

**docker-compose command way**
```
docker-compose exec laravel.test npm install
```

6 - You need decide an option to start the `Vite`.

**sail command way**

```
# Run Vite to server development
sail npm run dev
 
# Create and version assets for production... (I usually choose it)
sail npm run build
```

**docker-compose command way**

```
# Run Vite to server development
docker-compose exec laravel.test npm run dev
 
# Create and version assets for production... (I usually choose it)
docker-compose exec laravel.test npm run build
```

The user credentials are the same, panels to Admin and User also, click <a href="#laravel-spatie-info">here</a> to see.

### Panels to Docker environment
- phpMyAdmin: http://localhost:8081
- pgAdmin 4: http://localhost:5050
    - User: `admin@admin.com`
    - Password: `admin`
