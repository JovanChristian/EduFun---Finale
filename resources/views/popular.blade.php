@extends('layouts.main')

@section('title', 'Popular')

@section('main')
    <h1 class="ps-5 ms-5 mt-5">Popular</h1>
    <div class="container-fluid d-flex flex-column justify-content-center align-items-center pt-5 gap-4">
        @include('layouts.card')
        {{ $courses->links() }}
    </div>
@endsection
