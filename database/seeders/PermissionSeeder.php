<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Str;

class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $permissions = [
            'admins:index',
            'admins:create',
            'admins:store',
            'admins:show',
            'admins:edit',
            'admins:update',
            'admins:destroy',
            'users:index',
            'users:create',
            'users:store',
            'users:show',
            'users:edit',
            'users:update',
            'users:destroy',
        ];

        foreach ($permissions as $permission_name) {
            Permission::firstOrCreate(
                ['name' => $permission_name],
                ['uuid' => Str::uuid()->toString()]
            );
        }
    }
}
