<!DOCTYPE html>
<html>
    <head>
        <title>Tutorial no 4</title>
    </head>
    <body>
        <h1>Tutorial Laravel</h1>
        <p>Credit : <a href="https://www.malasngoding.com/category/laravel">www.malasngoding.com</a></p>
    
        <br>

        <p>Nama : {{ $nama }}</p>
        <p>Mata Pelajaran</p>
        <ul>
            @foreach ($pelajaran as $m)
            <li>{{ $m }}</li>
            @endforeach
        </ul>
    </body>
</html>
