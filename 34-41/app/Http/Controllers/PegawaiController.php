<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Models\Pegawai;

class PegawaiController extends Controller
{
    public function index(){
        $pegawai = Pegawai::all();
        return view("pegawai",['pegawai'=>$pegawai]);
    }
    public function cetak_pdf(){
        $pegawai = Pegawai::all();

        $pdf = PDF::loadView('pegawai_pdf',['pegawai'=>$pegawai]);
        return $pdf->stream();
        //return $pdf->download('laporan-pegawai-php');
    }
}
