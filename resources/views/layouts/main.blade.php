<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{ asset('bootstrap/css/bootstrap.min.css') }}">
    <script src="{{ asset('bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <title>@yield('title', 'EduFun')</title>
</head>

<body>
    <div class="container-fluid m-0 p-0 w-100 h-100 bg-warning bg-opacity-10">
        @include('layouts.navbar')

        <div>
            @yield('main')
        </div>

        @include('layouts.footer')
    </div>
</body>

</html>
