<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DosenController extends Controller
{
    public function index(){
        $nama = "Hmmmmm";
        $mapel = ["MTK","IPA","IPS"];
        return view('biodata', ['nama'=> $nama], ['pelajaran'=> $mapel]);
    }
}
