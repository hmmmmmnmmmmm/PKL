<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TesController;
use App\Http\Controllers\NotifController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('session/tampil', [TesController::class, 'tampilkanSession']);
Route::get('session/buat', [TesController::class, 'buatSession']);
Route::get('session/hapus', [TesController::class, 'hapusSession']);
Route::get('/pesan', [NotifController::class, 'index']);
Route::get('/pesan/sukses', [NotifController::class, 'sukses']);
Route::get('/pesan/peringatan', [NotifController::class, 'peringatan']);
Route::get('/pesan/gagal', [NotifController::class, 'gagal']);