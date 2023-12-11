<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\api\AuthController;
use App\Http\Controllers\api\UserController;
use App\Http\Controllers\api\KursusController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::post('/register', [AuthController::class, 'Register']);
Route::post('/login', [AuthController::class, 'Login']);


Route::group(['middleware' => ['auth:api']], function () {
    Route::get('/admin', [UserController::class, 'isAdmin']);
    Route::get('/users', [UserController::class, 'getAllUsers']);
    Route::delete('/user/{id}', [UserController::class, 'deleteUser']);

    Route::post('/kursus', [KursusController::class, 'create']);
    Route::get('/kursus', [KursusController::class, 'readAll']);
    Route::get('/kursus/{id}', [KursusController::class, 'readByid']);
    Route::patch('/kursus/{id}', [KursusController::class, 'update']);
    Route::delete('/kursus/{id}', [KursusController::class, 'delete']);

});
