<?php

use App\Http\Controllers\Api\FacilityController;
use Illuminate\Support\Facades\Route;

Route::get('facilities/search', [FacilityController::class, 'search']);
Route::apiResource('facilities', FacilityController::class);
