<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Tag>
 */
class TagFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => fake()->unique()->randomElement(self::$predefinedTags),
            'created_at' => fake()->dateTimeBetween('-1 year'),
            'updated_at' => fake()->dateTimeBetween('-6 months'),
        ];
    }

    private static array $predefinedTags = [
        'Restaurant', 'Banquet Hall', 'Cloud Kitchen', 'Food Truck', 'Commissary Kitchen',
        'Central Kitchen', 'Ghost Kitchen', 'Cafeteria', 'Catering Hub',
    ];
}
