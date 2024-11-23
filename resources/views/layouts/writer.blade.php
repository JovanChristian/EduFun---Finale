<a href="{{ route('writerDetailPage', ['writer_id'=>$writer->id]) }}" class="col-md-4 mb-4 text-decoration-none">
    <div class="writer-image mb-3">
        <img src="{{ asset('images/writers/'.$writer->image) }}"  style="width: 15rem; height: 15rem; border-radius: 50%;" alt="Abi Firmansyah">
    </div>
    <h5 class="card-title text-dark">{{ $writer->name }}</h5>
    <p class="card-text text-body">{{ $writer->profession }}</p>
</a> 
