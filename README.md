With **Laravel Spatie** and **Multi-Tenancy**, exist two roles: **Admin** and **User**, and companies: **Scarlet Overdrive**, **Tusk**, **Ball Breaker** and **The World**. Making certains roles has more privileges than others, it's very important you run the seeds to those users be created.

Panels (Admin and User)
- Admin: http://localhost:8000/admin/login
- User: http://localhost:8000/user/login

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
```
docker-compose up -d
```

2 - Run the ```composer install``` command to create ```vendor``` folder:
```
docker-compose exec app composer install
```

3 - Create ```.env``` file:
```
docker-compose exec app cp .env.example .env  
```

4 - Generate crypted key (Fill ```APP_KEY=``` to ```.env``` file):
```
docker-compose exec app php artisan key:generate
```

You can't maintain two databases working at same time, it's necessary choose.
```
# Avoid conflict to mysql phpmyadmin
docker-compose stop pgsql pgadmin

# Avoid conflict to pgsql pgadmin
docker-compose stop mysql phpmyadmin
```

Remember, before you change of database, run ```docker-compose down```, modify the ```.env``` file snippet to connect the application to database container and run ```docker-compose up -d``` again.

5 - In ```.env``` file set the following snippet to connect the application to database container from **Docker**:
```
# MySQL
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=waste-collection
DB_USERNAME=user
DB_PASSWORD=password

# PostgreSQL
DB_CONNECTION=pgsql
DB_HOST=pgsql
DB_PORT=5432
DB_DATABASE=waste-collection
DB_USERNAME=postgres
DB_PASSWORD=secret
```

Before you perfomate the migrations, go to [notifications](https://github.com/CryptedSnow/waste-collection/blob/main/database/migrations/2024_11_30_113525_create_notifications_table.php) table to make a change in a specific line, it will avoid errors involving notifications and database.

```
# MySQL
$table->text('data');

# PostgreSQL
$table->json('data');
```

Case you want to use ```MySQL``` database, you can import this [file](https://github.com/CryptedSnow/waste-collection/tree/main/database/imports) (It's not necessary use ```migrations``` and ```seeders```, don't do step 6 and 7, go ahead to step 8):

6 - To performate the ```migrations```, you need use the command:
```
docker-compose exec app php artisan migrate
```

7 - Use the commands to perfomate the ```seeders```:
```
docker-compose exec app php artisan db:seed
```

8 - Use the command to add files to ```storage``` folder:
```
docker-compose exec app php artisan storage:link
```

9 - Run the following command to install ```JavaScript``` dependencies.
```
docker-compose exec app npm install
```

10 - Run the following command to ```compile``` and ```optimize``` JavaScript files for ```production```.
```
docker-compose exec app npm run build
```

11 - To ```switch off``` the containers before exit from application, use the command:

```
docker-compose down
```

### Docker environment addresses
- phpMyAdmin: http://localhost:8081
- pgAdmin: http://localhost:5050
    - User: `admin@admin.com`
    - Password: `admin`
