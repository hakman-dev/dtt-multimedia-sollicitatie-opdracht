<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\SearchFacilityRequest;
use App\Http\Requests\StoreFacilityRequest;
use App\Http\Requests\UpdateFacilityRequest;
use App\Http\Resources\FacilityResource;
use App\Http\Resources\FacilityCollection;
use App\Models\Facility;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\JsonResponse;
use Symfony\Component\HttpFoundation\Response as ResponseAlias;

class FacilityController extends Controller
{
    public function index(): FacilityCollection
    {
        $facilities = Facility::with(['location', 'tags', 'employees'])->latest()->paginate();

        return new FacilityCollection($facilities);
    }

    public function store(StoreFacilityRequest $request): FacilityResource
    {
        $facility = Facility::create(array_map('sanitizeInput', $request->validated()));

        if ($request->has('tags')) {
            $facility->tags()->sync($request->tags);
        }

        $facility->load(['location', 'tags', 'employees']);

        return new FacilityResource($facility);
    }

    public function show(Facility $facility): FacilityResource
    {
        $facility->load(['location', 'tags', 'employees']);

        return new FacilityResource($facility);
    }

    public function update(UpdateFacilityRequest $request, Facility $facility): FacilityResource
    {
        $facility->update(array_map('sanitizeInput', $request->validated()));

        if ($request->has('tags')) {
            $facility->tags()->sync($request->tags);
        }

        $facility->load(['location', 'tags', 'employees']);

        return new FacilityResource($facility);
    }

    public function destroy(Facility $facility): JsonResponse
    {
        $facility->delete();

        return response()->json(null, ResponseAlias::HTTP_NO_CONTENT);
    }

    public function search(SearchFacilityRequest $request): FacilityCollection
    {
        $facilities = Facility::with(['location', 'tags', 'employees'])
            ->when($request->filled('facility_name'), function (Builder $query) use ($request) {
                $query->where('name', 'like', "%{$request->facility_name}%");
            })
            ->when($request->filled('location'), function (Builder $query) use ($request) {
                $query->whereHas('location', function (Builder $locationQuery) use ($request) {
                    $locationQuery->where('city', 'like', "%{$request->location}%");
                });
            })
            ->when($request->filled('tag'), function (Builder $query) use ($request) {
                $query->whereHas('tags', function (Builder $tagQuery) use ($request) {
                    $tagQuery->where('name', 'like', "%{$request->tag}%");
                });
            })
            ->when($request->filled('employee_name'), function (Builder $query) use ($request) {
                $query->whereHas('employees', function (Builder $tagQuery) use ($request) {
                    $tagQuery->where('name', 'like', "%{$request->employee_name}%");
                });
            })
            // User Story 3 didnt include a general search, so i added it anyways since it was not really extra time.
            ->when($request->filled('query'), function (Builder $query) use ($request) {
                $searchTerm = $request->query('query');

                $query->where(function (Builder $q) use ($searchTerm) {
                    $q->where('name', 'like', "%{$searchTerm}%")
                        ->orWhereHas('location', function (Builder $locationQuery) use ($searchTerm) {
                            $locationQuery->where('city', 'like', "%{$searchTerm}%");
                        })
                        ->orWhereHas('tags', function (Builder $tagQuery) use ($searchTerm) {
                            $tagQuery->where('name', 'like', "%{$searchTerm}%");
                        });
                });
            })
            ->latest()
            ->paginate($request->per_page ?? 15);

        return new FacilityCollection($facilities);
    }
}
