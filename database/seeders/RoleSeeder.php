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
            'admins:index',
            'admins:create',
            'admins:store',
            'admins:show',
            'admins:edit',
            'admins:update',
            'admins:destroy',
        ])->get();

        $user_permissions = Permission::whereIn('name', [
            'users:index',
            'users:create',
            'users:store',
            'users:show',
            'users:edit',
            'users:update',
            'users:destroy',
        ])->get();

        $admin_role->syncPermissions($admin_permissions);
        $user_role->syncPermissions($user_permissions);
    }
}
