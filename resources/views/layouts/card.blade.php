@foreach ($courses as $course)
    <div class="gap-3 d-flex flex-row w-75">
        <div class="w-25">
            <img src="{{ asset('images/courses/'.$course->image) }}" class="card-img-top h-75 img-fluid rounded rounded-5" alt="...">
        </div>
        <div class="card-body w-100 mt-4">
            <h5 class="card-title fs-2">{{ $course->name }}</h5>
            <p class="m-0">{{ $course->created_at->format('d M Y') }} | by: {{ $course->writer->name}}</p>
            <p class="card-text fs-5">{{ Str::limit($course->description, 150) }}</p>
            <div class="d-flex justify-content-end">
                <a href="{{ route('courseDetail', ['course_name'=>$course->name]) }}" class="btn rounded rounded-5 bg-dark text-light w-25">read more...</a>
            </div>
        </div>
    </div>
@endforeach
