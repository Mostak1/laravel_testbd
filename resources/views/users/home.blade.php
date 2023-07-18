@extends('users.layouts.main')
@section('style')
    <style>
        .home_heaing {
            background-image: url(assets/img/banner_1_bg_1687803374932.webp);
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
@endsection
@section('content')
    <div class="home_heaing">
        <div class="container">
            @php
                $user = Auth::user();
            @endphp
            <div class="row my-auto">
                <div class="col-md-3">
                    <div class="mt-3"><span class="fs-2 text-danger">LEARNING</span><br> <span>Is easy for you</span></div>

                </div>
                <div class="col-md-3">
                    <p>ACADEMIC LEARNING</p>
                </div>
                <div class="col-md-3">
                    <p>Skill LEARNING</p>
                </div>
                <div class="col-md-3">
                    <p>ADMISSION LEARNING</p>
                </div>
            </div>
            <div class="mx-auto text-center">
                @if (Auth::user())
                    Thanks For Using Our Service Mr. {{ $user->name }}
                @else
                    <a class="dropdown-item" href="{{ url('login') }}">Login</a> to Get Our
                    Service...
                @endif
            </div>


        </div>
    </div>
    <div class="container my-5">
        <!-- carousel starts here -->
        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="4000">
                    <img src="{{ asset('assets/img/ca1.jpg') }}" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="{{ asset('assets/img/ca2.jpg') }}" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="{{ asset('assets/img/ca3.jpg') }}" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <!-- --------------------------
                                                                        ---------------End Carousel-------
                                                                        -------------------------------- -->
        <div class="my-3 row">
            <div class="col-md-6">
                <lottie-player src="https://assets10.lottiefiles.com/packages/lf20_7WvWjFXF9K.json" background="transparent"
                    speed="1" style="width: 400px;" loop autoplay></lottie-player>
            </div>
            <div class="col-md-6">
                <lottie-player src="https://assets10.lottiefiles.com/packages/lf20_bwnHjUCsaL.json" background="transparent"
                    speed="1" style="width: 400px;" loop autoplay></lottie-player>
            </div>
        </div>
        <!-- testpaper title dynamic -->
        <div class="home_title">~Past Exam Papers~</div>
        <div class="exam_data"></div>
        <div class="my-3 row">
            <div class="col-md-6">
                <lottie-player src="https://assets10.lottiefiles.com/packages/lf20_yg29hewu.json" background="transparent"
                    speed="1" style="width: 600px; " loop autoplay></lottie-player>
            </div>
            <div class="col-md-6">
                <lottie-player src="https://assets10.lottiefiles.com/packages/lf20_1a8dx7zj.json" background="transparent"
                    speed="1" style="width: 600px;" loop autoplay></lottie-player>
            </div>
        </div>
    </div>
   
@endsection
