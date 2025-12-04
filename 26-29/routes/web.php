<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ControlController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::get('/enkripsi', [ControlController::class, 'enkripsi']);
Route::get('/data', [ControlController::class, 'data']);
Route::get('/data/{data_rahasia}', [ControlController::class, 'data_proses']);
Route::get('/hash', [ControlController::class, 'hash']);

require __DIR__.'/auth.php';
