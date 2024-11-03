<?php

namespace Database\Seeders;

use App\Models\Employee;
use App\Models\Facility;
use Illuminate\Database\Seeder;

class EmployeeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $facilities = Facility::all();

        if ($facilities->isEmpty()) {
            $this->call(FacilitySeeder::class);
            $facilities = Facility::all();
        }

        foreach ($facilities as $facility) {
            $employeeCount = 3;
            Employee::factory()
                ->count($employeeCount)
                ->create([
                    'facility_id' => $facility->id
                ]);
        }
    }
}
