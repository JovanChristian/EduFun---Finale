@extends('layouts.main')

@section('title', 'Course Detail')

@section('main')
    <h1 class="ps-5 ms-5 mt-5">{{ $course->category->name }}</h1>
    <div class="d-flex flex-column align-items-center mt-4">
        <img src="{{ asset('images/courses/'.$course->image) }}" alt="" class="rounded-5" style="width: 75%; height: 30rem">
        <div class="mt-3" style="width: 75%">
            <p>{{ $course->created_at->format('d M Y') }} | {{ $course->writer->name }}</p>
            <p>{!! nl2br($course->description) !!}</p>
        </div>
    </div>
@endsection
