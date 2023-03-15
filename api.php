<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\controllers\LoginController;
use App\Http\Controllers\Api\V1\TrabajadorController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/agregar',[LoginController::class,'consultar'])->name('usuario.consultar');

Route::apiResource('v1/Trabajadors', TrabajadorsV1::class)
      ->only(['index','show', 'destroy'])
      ->middleware('auth:sanctum');


      Route::post('login', [App\Http\Controllers\Api\LoginController::class, 'login']);