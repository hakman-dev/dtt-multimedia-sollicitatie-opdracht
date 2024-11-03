<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Artisan;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            LocationSeeder::class,
            TagSeeder::class,
            FacilitySeeder::class,
            EmployeeSeeder::class
        ]);

        Artisan::call('passport:client', [
            '--personal' => true,
            '--name' => 'Central Panel Personal Access Client',
        ]);
    }
}
