<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Spatie\Permission\Models\{Role, Permission};
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $admin_role = Role::firstOrCreate(
            ['name' => 'Admin'],
            ['uuid' => Str::uuid()->toString()]
        );

        $user_role = Role::firstOrCreate(
            ['name' => 'User'],
            ['uuid' => Str::uuid()->toString()]
        );

        $admin_permissions = Permission::whereIn('name', [
            'Estudar Inglês',
            'Estudar Italiano',
            'Estudar Livewire',
        ])->get();

        $user_permissions = Permission::whereIn('name', [
            'Estudar Cybersecurity',
            'Estudar MongoDB',
            'Estudar Filament v.3',
        ])->get();

        $admin_role->syncPermissions($admin_permissions);
        $user_role->syncPermissions($user_permissions);
    }
}
