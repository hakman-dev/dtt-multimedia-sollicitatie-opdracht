<?php

namespace Database\Seeders;

use App\Models\Facility;
use App\Models\Location;
use App\Models\Tag;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FacilitySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $locations = Location::all();
        $tags = Tag::all();

        foreach ($locations as $location) {
            // Create 3 facilities per location
            $facilitiesCount = 3;

            for ($i = 0; $i < $facilitiesCount; $i++) {
                // Create facility
                $facility = Facility::factory()
                    ->create([
                        'location_id' => $location->id,
                        'name' => fake()->company() . ' ' . fake()->randomElement(['Center', 'Facility', 'Hub', 'Complex']) . ' ' . ($i + 1)
                    ]);

                // Attach random number of tags (0-5)
                $tagCount = rand(0, 5);
                if ($tagCount > 0) {
                    $facility->tags()->attach(
                        $tags->random($tagCount)->pluck('id')->toArray()
                    );
                }
            }
        }
    }
}
