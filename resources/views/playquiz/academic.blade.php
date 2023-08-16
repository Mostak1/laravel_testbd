@extends('users.layouts.main')

{{-- main content add here --}}
@section('content')
    <!-- Facilities Start -->
    <div class="afterNav container-fluid pt-5">
        <div class="container pb-3">
            <div class="row row-cols-1 row-cols-md-3 g-4">

                @foreach ($cats as $cs)
                    {{-- {{dd($cs);}} animation_lkt38hd2.mp4 --}}
                    <div class="col">
                        <div class="card h-100">
                            {{-- <video class="card-img-top" autoplay src="{{asset('assets/video/animation_lkt38hd2.mp4')}}"></video> --}}
                            <img src="{{ asset('assets/img/cat.jpg') }}" alt="...">
                            <div class="card-body">
                                <h3 class="card-title">{{ $cs->name }}</h3>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to
                                    additional content. This content is a little bit longer.</p>
                                <h5 class="card-title text-end">
                                    
                                            <a href="{{ url('playquiz/cat/' . $cs->id) }}">Go Details</a>
                                       
                                        {{-- <a href="{{ url('uenroll/' . $cs->id) }}">Enroll Now</a> --}}
                                   
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
