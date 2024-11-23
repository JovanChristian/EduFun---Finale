@extends('layouts.main')

@section('title')

@section('main')
    <div class="d-flex gap-4 mt-5" style="padding-left: 15.5rem">
        <img src="{{ asset('images/index-background.jpg') }}" class="w-5 h-5 rounded-circle" alt="" style="width: 5%; height: 5rem">
        <div class="d-flex flex-column align-items-center justify-content-center">
            <p class="fw-semibold">{{ $writer->name }}</p>
            <p>{{ $writer->profession }}</p>
        </div>
    </div>
    <div class="container-fluid d-flex flex-column justify-content-center align-items-center pt-5 gap-4">
        @include('layouts.card')
    </div>
@endsection
