<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Api Routes
|--------------------------------------------------------------------------
|
| Here is where you can register Api routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your Api!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

//Setting the Route for version 1 of my api
    Route::group(['prefix'=>'v1','namespace'=>'App\Http\Controllers\Api\V1'],function(){
        Route::apiResource('vessels',\App\Http\Controllers\Api\V1\VesselController::class);
        Route::apiResource('voyages',\App\Http\Controllers\Api\V1\VoyageController::class);
        Route::apiResource('vessel_opex',\App\Http\Controllers\Api\V1\VesselOpexController::class);
});

