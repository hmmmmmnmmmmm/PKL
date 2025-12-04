<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DebugController;
use App\Http\Controllers\EmailController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/debug', [DebugController::class, 'index']);
Route::get('/debug/{nama}', [DebugController::class, 'index']);
Route::get('/kirimemail/', [EmailController::class, 'index']);