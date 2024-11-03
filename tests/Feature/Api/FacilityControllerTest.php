<?php

namespace Tests\Feature\Api;

use App\Models\Facility;
use App\Models\Location;
use App\Models\Tag;
use App\Models\Employee;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\Artisan;
use Tests\TestCase;

class FacilityControllerTest extends TestCase
{
    use RefreshDatabase;

    private Location $location;
    private array $tags;
    private string $token;

    protected function setUp(): void
    {
        parent::setUp();

        Artisan::call('db:seed');

        $this->facilities = Facility::factory(15)->create();
        $this->location = Location::factory()->create();
        $this->tags = Tag::factory(3)->create()->pluck('id')->toArray();

        // Create a user and get token in setup
        $registerResponse = $this->postJson('/api/register', [
            'name' => 'Test User',
            'email' => 'test@test.com',
            'password' => 'testtest',
            'password_confirmation' => 'testtest'
        ]);
        $this->token = $registerResponse->json('access_token');
    }

    public function test_it_can_list_facilities(): void
    {
        $response = $this->getJson('/api/facilities');

        $response->assertOk()
            ->assertJsonStructure([
                'data' => [
                    '*' => [
                        'id',
                        'name',
                        'location' => [
                            'id',
                            'city',
                            'address',
                            'zip_code',
                            'country_code',
                            'phone_number',
                        ],
                        'tags',
                        'employees',
                        'created_at',
                        'updated_at',
                    ],
                ],
                'meta' => [
                    'total',
                    'per_page',
                    'current_page',
                    'last_page',
                ],
            ])
            ->assertJsonCount(15, 'data');
    }

    public function test_it_can_create_a_facility(): void
    {
        $facilityData = [
            'name' => 'Test Facility',
            'location_id' => $this->location->id,
            'tags' => $this->tags,
        ];

        $response = $this->withHeader('Authorization', 'Bearer ' . $this->token)
            ->postJson('/api/facilities', $facilityData);

        $response->assertCreated()
            ->assertJsonStructure([
                'data' => [
                    'id',
                    'name',
                    'location',
                    'tags',
                    'employees',
                ],
            ])
            ->assertJson([
                'data' => [
                    'name' => 'Test Facility',
                ],
            ]);

        $this->assertDatabaseHas('facilities', [
            'name' => 'Test Facility',
            'location_id' => $this->location->id,
        ]);
    }

    public function test_it_can_show_a_facility(): void
    {
        $facility = Facility::factory()
            ->has(Employee::factory()->count(2))
            ->for($this->location)
            ->create();

        $facility->tags()->attach($this->tags);

        $response = $this->getJson("/api/facilities/{$facility->id}");

        $response->assertOk()
            ->assertJsonStructure([
                'data' => [
                    'id',
                    'name',
                    'created_at',
                    'updated_at',
                    'location',
                    'tags',
                    'employees',
                ],
            ])
            ->assertJson([
                'data' => [
                    'id' => $facility->id,
                    'name' => $facility->name,
                ],
            ]);
    }

    public function test_it_can_update_a_facility(): void
    {
        $facility = Facility::factory()
            ->for($this->location)
            ->create();

        $facility->tags()->attach($this->tags);

        $updateData = [
            'name' => 'Updated Facility',
            'tags' => [$this->tags[0]],
        ];

        $response = $this->withHeader('Authorization', 'Bearer ' . $this->token)
            ->putJson("/api/facilities/{$facility->id}", $updateData);

        $response->assertOk()
            ->assertJson([
                'data' => [
                    'name' => 'Updated Facility',
                ],
            ]);

        $this->assertDatabaseHas('facilities', [
            'id' => $facility->id,
            'name' => 'Updated Facility',
        ]);
    }

    public function test_it_can_delete_a_facility(): void
    {
        $facility = Facility::factory()
            ->has(Employee::factory()->count(2))
            ->for($this->location)
            ->create();

        $facility->tags()->attach($this->tags);

        $response = $this->withHeader('Authorization', 'Bearer ' . $this->token)
            ->deleteJson("/api/facilities/{$facility->id}");

        $response->assertNoContent();
        $this->assertDatabaseMissing('facilities', ['id' => $facility->id]);
        $this->assertDatabaseMissing('employees', ['facility_id' => $facility->id]);
    }

    public function test_it_can_search_facilities(): void
    {
        $facility1 = Facility::factory()
            ->for(Location::factory()->create(['city' => 'Amsterdam']))
            ->create(['name' => 'Test Center']);

        $tag = Tag::factory()->create(['name' => 'restaurantje']);
        $facility1->tags()->attach($tag);

        $response = $this->getJson('/api/facilities/search?query=Test');

        $response->assertOk()
            ->assertJsonCount(1, 'data')
            ->assertJson([
                'data' => [
                    [
                        'name' => 'Test Center',
                    ],
                ],
            ]);

        $response = $this->getJson('/api/facilities/search?location=ams');

        $response->assertOk()
            ->assertJsonCount(15, 'data')
            ->assertJson([
                'data' => [
                    [
                        'location' => [
                            'city' => 'amsterdam',
                        ],
                    ],
                ],
            ]);

        $response = $this->getJson('/api/facilities/search?query=restaurantje');

        $response->assertOk()
            ->assertJsonCount(1, 'data');
    }
}
