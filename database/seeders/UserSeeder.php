<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $this->createUser('Jonathan Joestar', 'jonathan.joestar@email.com', ['Admin']);
        $this->createUser('Dio Brando', 'dio.brando@email.com', ['Admin', 'User']);
        $this->createUser('Johnny Joestar', 'johnny.joestar@email.com', ['User']);
        $this->createUser('Gyro Zeppeli', 'gyro.zeppeli@email.com', ['User']);
        $this->createUser('Diego Brando', 'diego.brando@email.com', ['User']);
        $this->createUser('Hirohiko Araki', 'hirohiko.araki@email.com', ['Super Admin']);
    }

    private function createUser(string $name, string $email, array $roles): void
    {
        $user = User::firstOrCreate(
            ['email' => $email],
            [
                'uuid' => Str::uuid()->toString(),
                'name' => $name,
                'email_verified_at' => now(),
                'password' => Hash::make('12345678'),
            ]
        );

        $user->syncRoles($roles);
    }
}
