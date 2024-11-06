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
        User::create([
            'uuid' => Str::uuid()->toString(),
            'name' => 'Jonathan Joestar',
            'email' => 'jonathan.joestar@email.com',
            'email_verified_at' => now(),
            'password' => Hash::make('12345678'),
        ])->assignRole('Admin');

        User::create([
            'uuid' => Str::uuid()->toString(),
            'name' => 'Johnny Joestar',
            'email' => 'johnny.joestar@email.com',
            'email_verified_at' => now(),
            'password' => Hash::make('12345678'),
        ])->assignRole('User');

        User::create([
            'uuid' => Str::uuid()->toString(),
            'name' => 'Gyro Zeppeli',
            'email' => 'gyro.zeppeli@email.com',
            'email_verified_at' => now(),
            'password' => Hash::make('12345678'),
        ])->assignRole('User');

    }
}
