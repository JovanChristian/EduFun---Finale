<nav class="navbar navbar-expand-lg bg-light shadow-sm">
    <div class="container-fluid">
        <div class="w-50 ps-5">
            <a class="navbar-brand" href="{{ route('indexPage') }}">
                <img src="{{ asset('images/logo-navbar.png') }}" alt="">
            </a>
        </div>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse gap-3 w-50 fs-5" id="navbarText">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active {{ Request::is('/') ? 'text-decoration-underline text-primary' : ''}}" aria-current="page" href="{{ route('indexPage') }}">Home</a>
                </li>
                <li class="nav-item dropdown ps-4">
                    <a class="nav-link active dropdown-toggle {{ Request::is('category/*') || Request::is('course/*') ? 'text-decoration-underline text-primary' : '' }}" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Category</a>
                    <ul class="dropdown-menu">
                        @foreach ($categories as $category)
                            <li>
                                <a class="dropdown-item" href="{{ route('categoryPage', ['category_name'=>$category->name]) }}">{{ $category->name }}</a>
                            </li>
                        @endforeach
                    </ul>
                </li>
                <li class="nav-item ps-4">
                    <a class="nav-link active {{ Request::is('writer') || Request::is('writer/*') ? 'text-decoration-underline text-primary' : ''}}" aria-current="page" href="{{ route('writerPage') }}">Writers</a>
                </li>
                <li class="nav-item ps-4">
                    <a class="nav-link active {{ Request::is('about-us') ? 'text-decoration-underline text-primary' : ''}}" aria-current="page" href="{{ route('aboutUsPage') }}">About Us</a>
                </li>
                <li class="nav-item ps-4">
                    <a class="nav-link active link-offset-3 {{ Request::is('popular') ? 'text-decoration-underline text-primary' : ''}}" aria-current="page" href="{{ route('popularPage') }}">Popular</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
