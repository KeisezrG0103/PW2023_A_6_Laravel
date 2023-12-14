<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\api\AuthController;
use App\Http\Controllers\api\UserController;
use App\Http\Controllers\api\KursusController;
use App\Http\Controllers\api\WebinarController;
use App\Http\Controllers\api\Subscription;

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
    Route::put('/kursus/{id}', [KursusController::class, 'update']);
    Route::delete('/kursus/{id}', [KursusController::class, 'delete']);
    Route::get('/kursus/search/{bahasa}', [KursusController::class, 'findByBahasa']);

    Route::get('/webinar', [WebinarController::class, 'index']);
    Route::get('/webinar/{id}', [WebinarController::class, 'show']);
    Route::post('/webinar', [WebinarController::class, 'store']);
    Route::put('/webinar/{id}', [WebinarController::class, 'update']);
    Route::delete('/webinar/{id}', [WebinarController::class, 'delete']);

    Route::post('/subscribe/{id}', [Subscription::class, 'Subscribe']);
    Route::get('/user', [UserController::class, 'getUserLoggedIn']);
    Route::put('/user', [UserController::class, 'updateProfile']);

    Route::get('/webinar/user', [WebinarController::class, 'showAllWebinarByUser']);
    Route::post('/webinar/user', [WebinarController::class, 'ikutWebinar']);

});
