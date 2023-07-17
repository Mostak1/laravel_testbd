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
                    <p>LEARNING</p>
                </div>
                <div class="col-md-3">
                    <p>LEARNING</p>
                </div>
                <div class="col-md-3">
                    <p>LEARNING</p>
                </div>
            </div>
            <div class="mx-auto text-center">Register to Get Our Service...</div>
            @if ($user)
            @endif
        </div>
    </div>
    <h3>Home Controler</h3>
@endsection
