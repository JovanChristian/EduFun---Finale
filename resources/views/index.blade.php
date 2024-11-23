@extends('layouts.main')

@section('title', 'Home')

@section('main')
    <img src="{{ asset('images/index-background.jpg') }}" class="img-fluid w-100" alt="index bg" style="height: 50vh">
    <div class="container-fluid d-flex flex-column justify-content-center align-items-center mt-5 gap-4">
        @include('layouts.card')
    </div>
@endsection
