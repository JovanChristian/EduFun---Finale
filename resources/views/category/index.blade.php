@extends('layouts.main')

@section('title', 'Category')

@section('main')
    <h1 class="ps-5 ms-5 mt-5">{{ $category_name }}</h1>
    <div class="container-fluid d-flex flex-column justify-content-center align-items-center pt-5 gap-4">
        @include('layouts.card')
    </div>
@endsection
