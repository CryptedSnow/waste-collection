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
        $adminRole = Role::firstOrCreate(
            ['name' => 'Admin'],
            ['uuid' => Str::uuid()->toString()]
        );

        $userRole = Role::firstOrCreate(
            ['name' => 'User'],
            ['uuid' => Str::uuid()->toString()]
        );

        $superAdminRole = Role::firstOrCreate(
            ['name' => 'Super Admin'],
            ['uuid' => Str::uuid()->toString()]
        );

        $adminPermissions = Permission::whereIn('name', [
            'admins:index',
            'admins:create',
            'admins:store',
            'admins:show',
            'admins:edit',
            'admins:update',
            'admins:destroy',
        ])->get();

        $userPermissions = Permission::whereIn('name', [
            'users:index',
            'users:create',
            'users:store',
            'users:show',
            'users:edit',
            'users:update',
            'users:destroy',
        ])->get();

        $superAdminPermissions = Permission::whereIn('name', [
            'superadmins:index',
            'superadmins:create',
            'superadmins:store',
            'superadmins:show',
            'superadmins:edit',
            'superadmins:update',
            'superadmins:destroy',
        ])->get();

        $adminRole->syncPermissions($adminPermissions);
        $userRole->syncPermissions($userPermissions);
        $superAdminRole->syncPermissions($superAdminPermissions);
    }
}
