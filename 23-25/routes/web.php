<?php

use App\Http\Controllers\PenggunaController;
use App\Http\Controllers\WebController;
use App\Http\Controllers\MTMController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});


Route::get('/pengguna/', [PenggunaController::class, 'index']);
Route::get('/article/', [WebController::class, 'index']);
Route::get('/anggota/', [MTMController::class, 'index']);