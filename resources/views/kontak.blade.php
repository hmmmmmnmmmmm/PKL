<!-- Menghubungkan dengan view template master -->
@extends('master')


<!-- isi bagian judul halaman -->
<!-- cara penulisan isi section yang pendek -->
@section('judul_halaman', 'Halaman Home')

<!-- isi bagian konten -->
<!-- cara penulisan isi section yang panjang -->
@section('konten')
    <p>Halaman Kontak</p>
    <table border="1">
        <tr>
            <td>Email</td>
            <td>:</td>
            <td>hmmmmm@gmail.com</td>  
        </tr>
        <tr>
            <td>Hp</td>
            <td>:</td>
            <td>08080808080808</td>  
        </tr>
    </table>
@endsection