<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Spatie\Permission\Models\{Role,Permission};
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Role::create([
            'uuid' => Str::uuid()->toString(),
            'name' => 'Admin'
        ]);

        Role::create([
            'uuid' => Str::uuid()->toString(),
            'name' => 'User'
        ]);

        Permission::create([
            'uuid' => Str::uuid()->toString(),
            'name' => 'Estudar Inglês'
        ]);

        Permission::create([
            'uuid' => Str::uuid()->toString(),
            'name' => 'Estudar Espanhol'
        ]);

        Permission::create([
            'uuid' => Str::uuid()->toString(),
            'name' => 'Estudar Vue 3'
        ]);

        Permission::create([
            'uuid' => Str::uuid()->toString(),
            'name' => 'Estudar Cybersecurity'
        ]);

        Permission::create([
            'uuid' => Str::uuid()->toString(),
            'name' => 'Estudar MongoDB'
        ]);

        Permission::create([
            'uuid' => Str::uuid()->toString(),
            'name' => 'Estudar Filament 3'
        ]);
    }
}
