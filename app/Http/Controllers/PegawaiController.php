<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PegawaiController extends Controller
{
    public function index(){
        // Ambil data dari table
        $pegawai = DB::table('pegawai')->paginate(10);

        //kirim ke view index
        return view('index',['pegawai'=>$pegawai]);
    }

    public function tambah(){
        //kirim ke view index
        return view('tambah');
    }
    public function store(Request $request){
        // insert data ke table pegawai
        DB::table('pegawai')->insert([
            'pegawai_nama' => $request->nama,
            'pegawai_jabatan' => $request->jabatan,
            'pegawai_umur' => $request->umur,
            'pegawai_alamat' => $request->alamat
        ]);
        // kembali ke halaman pegawai
        return redirect('/pegawai');
    }

    public function edit($id){
        // Ambil data dari table berdasarkan data yang dipilih
        $pegawai = DB::table('pegawai')->where('pegawai_id' ,$id)->get();

        //kirim ke view edit
        return view('edit',['pegawai'=>$pegawai]);
    }

    public function hapus($id){
        // hapus data pegawai dari table berdasarkan id yang dipilih
        DB::table('pegawai')->where('pegawai_id' ,$id)->delete();

        //kirim ke view edit
        return redirect('/pegawai');
    }

        public function update(Request $request){
        // update data pegawai
        DB::table('pegawai')->where('pegawai_id', $request->id)->update([
            'pegawai_nama' => $request->nama,
            'pegawai_jabatan' => $request->jabatan,
            'pegawai_umur' => $request->umur,
            'pegawai_alamat' => $request->alamat
        ]);
        // kembali ke halaman pegawai
        return redirect('/pegawai');
    }

        public function cari(Request $request){
        //menangkap data pencarian
        $cari = $request->cari;
        
        //ambil data sesuai pencarian data
        $pegawai = DB::table('pegawai')
        ->where('pegawai_nama','like',"%".$cari."%")
        ->paginate();

        // mengirim data ke view index
        return view('index', ['pegawai' => $pegawai]);
    }
}

?>