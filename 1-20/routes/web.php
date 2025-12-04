<?php

use App\Http\Controllers\DosenController;
use App\Http\Controllers\PegawaiController;
use App\Http\Controllers\ValidasiController;
use App\Http\Controllers\BlogController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('halo', function () {
    return ('w speed');
});


Route::get('dosen', [DosenController::class, 'index']);
Route::get('input', [ValidasiController::class, 'input']);
Route::post('/proses', [ValidasiController::class, 'proses']);
Route::get('/pegawai/', [PegawaiController::class, 'index']);
Route::get('/pegawai/cari', [PegawaiController::class, 'cari']);
Route::get('/pegawai/tambah', [PegawaiController::class, 'tambah']);
Route::get('/pegawai/edit/{id}', [PegawaiController::class, 'edit/{id}']);
Route::get('/pegawai/hapus/{id}', [PegawaiController::class, 'hapus']);
Route::post('/pegawai/update', [PegawaiController::class, 'update']);
Route::post('/pegawai/store', [PegawaiController::class, 'store']);
Route::get('/formulir', [PegawaiController::class, 'formulir']);
Route::post('/formulir/proses', [PegawaiController::class, 'proses']);
Route::get('/blog', [BlogController::class, 'home']);
Route::get('/blog/tentang', [BlogController::class, 'tentang']);
Route::get('/blog/kontak', [BlogController::class, 'kontak']);