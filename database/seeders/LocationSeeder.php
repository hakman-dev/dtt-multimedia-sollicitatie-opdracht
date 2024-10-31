<?php

namespace Database\Seeders;

use App\Models\Location;
use Illuminate\Database\Seeder;

class LocationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Location::factory()
            ->count(10)
            ->sequence(
                ['country_code' => 'NL', 'city' => 'amsterdam'],
                ['country_code' => 'ES', 'city' => 'benidorm'],
                ['country_code' => 'DE', 'city' => 'munchen']
            )
            ->create();
    }
}
