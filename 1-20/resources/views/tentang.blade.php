<!-- Menghubungkan dengan view template master -->
@extends('master')


<!-- isi bagian judul halaman -->
<!-- cara penulisan isi section yang pendek -->
@section('judul_halaman', 'Halaman Home')

<!-- isi bagian konten -->
<!-- cara penulisan isi section yang panjang -->
@section('konten')
    <p>Halaman Tentang</p>
    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Assumenda neque quia nihil laudantium ratione adipisci non corrupti perspiciatis. Nobis cumque recusandae doloribus culpa iusto facilis? Excepturi suscipit quasi vel numquam.</p>
@endsection