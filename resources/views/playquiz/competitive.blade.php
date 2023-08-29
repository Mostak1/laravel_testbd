@extends('users.layouts.main')

{{-- main content add here --}}
@section('content')
    <!-- Facilities Start -->
    <div class="afterNav  pt-5">
        <div class="container pb-3">
            <div class="text-center fs-2 rcourse">Competitive Exam Courses</div>
            <div class="row row-cols-1 row-cols-md-3 g-4 overflow-hidden" >
                @foreach ($cats as $cs)
                    {{-- {{dd($cs);}} animation_lkt38hd2.mp4 --}}
                    <div class="col">
                        <div class="card h-100">
                            {{-- <video class="card-img-top" autoplay src="{{asset('assets/video/animation_lkt38hd2.mp4')}}"></video> --}}
                            <img data-aos="zoom-out" data-aos-duration="3000" src="{{ asset('assets/img/category') }}/{{$cs->image}}" class="img-fluid" alt="Image Uploading..">
                            <div class="card-body">
                                <h3 class="card-title" data-aos="flip-left" data-aos-duration="3000">{{ $cs->name }}</h3>
                                <p class="card-text">{{$cs->description}}</p>
                                <h5 class="card-title text-end">
                                   
                                            <a href="{{ url('playquiz/cat/' . $cs->id) }}">Go Details</a>
                                      

                                </h5>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
    <!-- Facilities End -->
@endsection
