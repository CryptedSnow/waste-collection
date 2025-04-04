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
            'Estudar Inglês',
            'Estudar Italiano',
            'Estudar Livewire',
            'Estudar Cybersecurity',
            'Estudar MongoDB',
            'Estudar Filament v.3',
        ];

        foreach ($permissions as $permission_name) {
            Permission::firstOrCreate(
                ['name' => $permission_name],
                ['uuid' => Str::uuid()->toString()]
            );
        }
    }
}
