@extends('layouts.main')

@section('title', 'Writers')

@section('main')
    <h2 class="mt-5 text-start w-100" style="padding-left: 19rem">Our Writers:</h2>
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 74.98vh;">
        <div class="row text-center d-flex w-75">
            @foreach ($writers as $writer)
                @include('layouts.writer')
            @endforeach
        </div>
    </div>
@endsection
