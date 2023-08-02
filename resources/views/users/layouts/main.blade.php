<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test BD</title>
    <meta name="csrf-token" content="<?php echo csrf_token(); ?>" id="token">
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    @vite(['resources/scss/home.scss'])

    @yield('style')
</head>

<body>
    @php
        $user = Auth::user();
    @endphp
    <nav id="navCustom" class="customBac navbar fixed-top navbar-expand-lg navbar shadow px-0 py-3">
        <div class="container-xl">
            <!-- Logo -->
            <a class="navbar-brand customNav" href="#">
                <span class="bc">Test</span>BD
            </a>
            <!-- Navbar toggle -->
            <button class="navbar-toggler wc" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa-solid fa-bars fa-beat-fade wc"></i>
            </button>
            <!-- Collapse -->
            <div class="collapse navbar-collapse wc" id="navbarCollapse">
                <!-- Nav -->
                <div class="navbar-nav mx-lg-auto wc">
                    <a class="customNav  me-4 fs-5  " href="{{ url('') }}">Home</a>
                    <a class="customNav  me-4 fs-5 " href="{{ url('skill') }}">Skill Devlopment</a>
                    <a class="customNav  me-4 fs-5 " href="{{url('playquiz')}}">Quiz</a>
                    <a class="customNav  me-4 fs-5 " href="#">Questions</a>
                    <div class="dropdown">
                        <a class=" dropdown-toggle wc" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Quiz
                        </a>
                      
                        <ul class="dropdown-menu wc customBac">
                          <li><a class="dropdown-item wc" href="{{url('playquiz')}}">Quiz All</a></li>
                          <li><a class="dropdown-item wc" href="{{url('showquiz')}}">Dynamicquiz</a></li>
                          <li><a class="dropdown-item wc" href="{{url('quiz/qz/qshow')}}">Quiz Show</a></li>
                          <li><a class="dropdown-item wc" href="{{url('playquiz/qimage')}}">Quiz Image</a></li>
                        </ul>
                      </div>
                </div>
                <!-- Right navigation -->
                <ul class="navbar-nav mt-2 mb-lg-0">
                    <li class="nav-item  dropdown">
                        <a class=" dropdown-toggle wc" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            @if (Auth::check())
                                {{ $user->name }}
                            @else
                                Account
                            @endif
                        </a>
                        <ul class="dropdown-menu customBac dropdown-menu-end">
                            @if (Auth::check() && $user->role == 2)
                                <li><a class="dropdown-item customNav" href="{{ url('profile') }}">Profile</a></li>
                                <li><a class="dropdown-item customNav" href="{{ url('dashboard') }}"
                                        target="_blank">Dashboard</a>
                                </li>
                                @include('components.logout')
                            @elseif (Auth::check())
                                <li><a class="dropdown-item customNav" href="{{ url('profile') }}">Profile</a></li>
                                @include('components.logout')
                            @else
                                <li><a class="dropdown-item customNav" href="{{ url('login') }}">Login</a></li>
                                <li><a class="dropdown-item customNav" href="{{ url('register') }}">Register</a></li>
                            @endif

                        </ul>
                    </li>
                    <div class="">
                        <a href="{{ url('checkout') }}" class=" customNav position-relative">
                            Buy Item
                            <span id="additm"
                                class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                <span class="visually-hidden">unread messages</span>
                            </span>
                        </a>
                    </div>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Header End -->
    <!-- Main Content -->
    @include('layouts.flash')

    @yield('content')

    <!-- Footer -->
    @include('users.layouts.footer')


    <!-- jQuery CDN Here -->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="{{ asset('assets/js/bootstrap.bundle.min.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


    
    <script>
       $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': jQuery('meta[name="X-CSRF-TOKEN"]').attr('content')
            }
        });
    </script>
    <script>
        $(document).ready(function() {
            let cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
            let itemCount = cartItems.length;
            $('#additm').text(itemCount);
        });
    </script>

<script>
    $(document).ready(function() {

        // show the alert
        setTimeout(function() {
            $(".alert").alert('close');
        }, 2000);
        // =========
        // for subcats as cats
        function selectscat(ob) {
            $("#subcategory_id").empty().append('<option value = "0">All');

            let html = "<option value='0'>All</option>";
            for (const key in ob) {
                if (Object.hasOwnProperty.call(ob, key)) {
                    html += "<option value='" + key + "'>" + ob[key] + "</option>";
                }
            }
            $("#subcategory_id").html(html);
        }
        $("#category_id").change(function() {
            // console.log( $(this).val() )
            let URL = "{{ url('subcats') }}";
            $.ajax({
                type: "post",
                url: URL + '/' + $(this).val(),
                data: "data",
                dataType: "json",
                success: function(response) {
                    selectscat(response);
                }
            });
        });

        // for topics as subcats
        function selecttopic(ot) {
            // $("#topic_id").html("");
            let html = "<option value='0'>All</option>";
            for (const k in ot) {
                if (Object.hasOwnProperty.call(ot, k)) {

                    html += "<option value='" + k + "'>" + ot[k] + "</option>";
                }
            }
            $("#topic_id").html(html);
        }
        $("#subcategory_id").on('change', function() {

            // })
            // $("#subcategory_id").change(function() {
            if ($(this).val() == "null") {
                $("#topic_id").empty().append('<option value = "0">All');
                return;
            }
            // console.log( $(this).val() )
            let URL = "{{ url('topics') }}";
            $.ajax({
                type: "post",
                url: URL + '/' + $(this).val(),
                data: "data",
                dataType: "json",
                success: function(response) {
                    selecttopic(response);
                }
            });
        });

    });
   
</script>
@yield('script')
</body>

</html>
