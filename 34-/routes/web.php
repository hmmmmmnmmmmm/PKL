<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DebugController;
use App\Http\Controllers\EmailController;
use App\Http\Controllers\PegawaiController;
use App\Http\Controllers\SiswaController;
use App\Http\Controllers\HaloController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/debug', [DebugController::class, 'index']);
Route::get('/debug/{nama}', [DebugController::class, 'index']);
Route::get('/kirimemail/', [EmailController::class, 'index']);
Route::get('/pegawai', [PegawaiController::class, 'index']);
Route::get('/pegawai/cetak_pdf', [PegawaiController::class, 'cetak_pdf']);
Route::get('/siswa', [SiswaController::class, 'index']);
Route::get('/siswa/export_excel', [SiswaController::class, 'export_excel']);
Route::post('/siswa/import_excel', [SiswaController::class, 'import_excel']);
// localization pilih bahasa
Route::get('/{locale}/form', function ($locale) {
    App::setLocale($locale);
    return view('biodata');
});
Route::get('halo/{nama}', [HaloController::class, 'halo'])->name('halo.halo');
Route::get('halo', [HaloController::class, 'panggil'])->name('halo.panggil');
