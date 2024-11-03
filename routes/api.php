<?php

use App\Http\Controllers\Api\FacilityController;
use App\Http\Controllers\Api\RegisterController;
use Illuminate\Support\Facades\Route;

Route::post('register', [RegisterController::class, 'register']);
Route::post('login', [RegisterController::class, 'login']);

// Public routes
Route::get('facilities/search', [FacilityController::class, 'search']);
Route::get('facilities', [FacilityController::class, 'index']);
Route::get('facilities/{facility}', [FacilityController::class, 'show']);

// Protected routes under auth:api middleware
Route::middleware('auth:api')->group(function () {
    Route::post('facilities', [FacilityController::class, 'store']);
    Route::put('facilities/{facility}', [FacilityController::class, 'update']);
    Route::delete('facilities/{facility}', [FacilityController::class, 'destroy']);
});
