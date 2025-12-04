<?php
use App\Http\Controllers\PegawaiController;
use App\Http\Controllers\GuruController;

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});


Route::get('/pegawai/', [PegawaiController::class, 'index']);
Route::get('/pegawai/cari', [PegawaiController::class, 'cari']);
Route::get('/pegawai/tambah', [PegawaiController::class, 'tambah']);
Route::get('/pegawai/edit/{id}', [PegawaiController::class, 'edit']);
Route::get('/pegawai/hapus/{id}', [PegawaiController::class, 'delete']);
Route::put('/pegawai/update/{id}', [PegawaiController::class, 'update']);
Route::post('/pegawai/store', [PegawaiController::class, 'store']);
Route::get('/pegawai/tambah', [PegawaiController::class, 'tambah']);

Route::get('/guru', [GuruController::class, 'index']);
Route::get('/guru/kembalikan/{id}', [GuruController::class, 'kembalikan']);
Route::get('/guru/kembalikan_semua', [GuruController::class, 'kembalikan_semua']);
Route::get('/guru/hapus_permanen_semua', [GuruController::class, 'hapus_permanen_semua']);
Route::get('/guru/hapus/{id}', [GuruController::class, 'hapus']);
Route::get('/guru/trash', [GuruController::class, 'trash']);
Route::put('/guru/update/{id}', [GuruController::class, 'update']);
Route::post('/guru/store', [GuruController::class, 'store']);