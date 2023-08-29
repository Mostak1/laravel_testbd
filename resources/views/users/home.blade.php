@extends('users.layouts.main')
@section('style')
    <style>
        .home_heaing {
            background-image: url(assets/img/banner_1_bg_1687803374932.webp);
            background-repeat: no-repeat;
            background-size: cover;
        }

        .message_section {
            background-image: url(assets/images/coming-soon-bg.jpg);
            background-repeat: no-repeat;
            background-size: cover;

        }

        .message_overlay {
            padding: 30px 0 50px 0;
        }
    </style>
@endsection
@section('content')
    {{-- main banner for home page --}}
    <div class="section main-banner" id="top">
        <video autoplay muted loop id="bg-video" src="{{ asset('assets/images/course-video.mp4') }}"></video>
        <div class="video-overlay header-text overflow-hidden">
            <div class="caption aos-init overflow-hidden">
                <h6 class=" aos-init" data-aos="fade-up" data-aos-duration="3000">You Have a <span
                        class="bc wow bounceInUp">Smartphone</span> or
                    <span class="bc">Personl Computer!</span><br> Get
                    a<span class="bc">Smart Decision</span> and <span class="bc">Develop Your Skill</span>
                </h6>
                <h2 class=" aos-init" data-aos="fade-down" data-aos-duration="3000"><em>Your</em> Classroom</h2>

                <div class="main-button">
                    <div class="scroll-to-section">
                        <a class="cbtn" href="#section2">Discover more</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container my-5">
        <div class="text-center fs-2 rcourse">Our Running Courses</div>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            @foreach ($cats as $cs)
                {{-- {{dd($cs);}} animation_lkt38hd2.mp4 --}}
                <div class="col aos-init overflow-hidden">
                    <div class="card h-100 aos-init overflow-hiden">
                        {{-- <video class="card-img-top" autoplay src="{{asset('assets/video/animation_lkt38hd2.mp4')}}"></video> --}}
                        <img data-aos="zoom-out" class="aos aos-init" data-aos-duration="3000"
                            src="{{ asset('assets/img/category') }}/{{ $cs->image }}" class="img-fluid"
                            alt="Image Uploading..">
                        <div class="card-body">
                            <h3 class="card-title aos aos-init" data-aos="flip-up" data-aos-duration="3000">
                                {{ $cs->name }}</h3>
                            <p class="card-text">{{ $cs->description }}</p>
                            <h5 class="card-title text-end">



                                <a href="{{ url('playquiz/cat/' . $cs->id) }}"> Go Details</a>
                            </h5>

                        </div>
                    </div>
                </div>
            @endforeach
        </div>

    </div>
    {{-- message section --}}
    <section class="message_section">
        {{-- <img id="message_img" src="{{asset('assets/images/coming-soon-bg.jpg')}}" alt=""> --}}
        <div class="container ">
            <h3 class="text-center bc pt-5">
                Message us if you have any queries <br> or <br>quickly enroll for the course
            </h3>
            <div class="row message_overlay wc">
                <div class="col-md-6 mt-5">

                    <h4 class="text-center my-auto">
                        Take <em class="bc">any online course</em> and win 3260 points for your next
                        class
                    </h4>

                    <div class="fs-3 text-center" id="timer">

                    </div>

                </div>
                <div class="col-md-6">
                    <div class="right-content">

                        {{ Form::open(['route' => 'email', 'class' => 'user', 'enctype' => 'multipart/form-data']) }}

                        <div class="row nbc">
                            <div class="col-md-12 fs-5 mb-2">
                                <label for="user_name" class="wc">Name:</label>
                                {!! Form::text('user_name', null, [
                                    'required',
                                    'class' => 'form-control form-control-profile',
                                    'id' => 'user_name',
                                    'placeholder' => 'Your Name',
                                ]) !!}
                            </div>
                            <div class="col-md-12 fs-5 mb-2">
                                <label for="user_email" class="wc">Email:</label>
                                {!! Form::email('user_email', null, [
                                    'required',
                                    'class' => 'form-control form-control-profile',
                                    'id' => 'user_email',
                                    'placeholder' => 'Your Email Address',
                                ]) !!}
                            </div>

                            <div class="col-md-12 fs-5 mb-2">
                               <label for="message" class="wc">Comments :</label>
                               
                                {!! Form::textarea('message', null, [
                                    'required',
                                    'class' => 'form-control form-control-profile',
                                    'id' => 'message',
                                    'placeholder' => 'Leave a comment here',
                                    'rows' => 5, 
                                ]) !!}

                            </div>
                            <div class="col-md-12 text-center">

                                {!! Form::submit('Send Information', ['class' => 'cbtn fs-3 my-3 ']) !!}
                            </div>
                        </div>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>
    </section>
    {{--  --}}
    <div class="customBac wc">


        <section class="section  mt-5 pb-5 why-us" data-section="section2">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading my-4">
                            <h2 class="text-center">Why choose <span class="bc">TestBD School</span> ?</h2>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div id="tabs">
                            {{-- <ul>
                                <li><a href="#tabs-1">Best Education</a></li>
                                <li><a href="#tabs-2">Top Management</a></li>
                                <li><a href="#tabs-3">Quality Meeting</a></li>
                            </ul> --}}
                            <section class="tabs-content">
                                <article id="tabs-1">
                                    <div class="row">
                                        <div class="col-md-6 overflow-hidden aos-init">
                                            <section class="image-section aos aos-init" data-aos="fade-up"
                                                data-aos-duration="3000">
                                                <img class="section-image" src="assets/images/choose-us-image-01.png"
                                                    alt="" />
                                            </section>
                                        </div>
                                        <div class="col-md-6 overflow-hidden aos-init">
                                            <h4>Best Education</h4>
                                            <p class="aos-init aos" data-aos="fade-down" data-aos-duration="3000">
                                                Grad School is free educational HTML template with
                                                Bootstrap 4.5.2 CSS layout. Feel free to use it for
                                                educational or commercial purposes. You may want to make
                                                <a href="https://paypal.me/templatemo" target="_parent" rel="sponsored">a
                                                    little donation</a>
                                                to TemplateMo. Please tell your friends about us. Thank
                                                you.
                                            </p>
                                        </div>
                                    </div>
                                </article>
                                <article id="tabs-2">
                                    <div class="row aos-init overflow-hidden">
                                        <div class="col-md-6 aos-init aos" data-aos="flip-up" data-aos-duration="3000">
                                            <section class="image-section">

                                                <img class="section-image" src="assets/images/choose-us-image-02.png"
                                                    alt="" />
                                            </section>

                                        </div>
                                        <div class="col-md-6 aos aos-init" data-aos="fade-up" data-aos-duration="3000">
                                            <h4>Top Level</h4>
                                            <p>
                                                You can modify this HTML layout by editing contents and
                                                adding more pages as you needed. Since this template has
                                                options to add dropdown menus, you can put many HTML
                                                pages.
                                            </p>
                                            <p>
                                                Suspendisse tincidunt, magna ut finibus rutrum, libero
                                                dolor euismod odio, nec interdum quam felis non ante.
                                            </p>
                                        </div>
                                    </div>
                                </article>
                                <article id="tabs-3">
                                    <div class="row aos-init overflow-hidden">
                                        <div class="col-md-6 aos aos-init" data-aos="zoom-out-down"
                                            data-aos-duration="3000">
                                            <section class="image-section">
                                                <img class="section-image" src="assets/images/choose-us-image-03.png"
                                                    alt="" />
                                            </section>
                                        </div>
                                        <div class="col-md-6 aos aos-init" data-aos="fade-up" data-aos-duration="3000">
                                            <h4>Quality Meeting</h4>
                                            <p>
                                                You are NOT allowed to redistribute this template ZIP
                                                file on any template collection website. However, you
                                                can use this template to convert into a specific theme
                                                for any kind of CMS platform such as WordPress. For more
                                                information, you shall
                                                <a rel="nofollow" href="https://templatemo.com/contact"
                                                    target="_parent">contact TemplateMo</a>
                                                now.
                                            </p>
                                        </div>
                                    </div>
                                </article>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection
@section('script')
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        // Set the target time to 11:30 PM today
        const targetTime = new Date();
        targetTime.setHours(23, 30, 0, 0);

        // Update the timer every second
        function updateTimer() {
            const now = new Date();
            const timeDifference = targetTime - now;

            if (timeDifference <= 0) {
                document.getElementById('timer').innerHTML = 'Timer expired!';
            } else {
                const hours = Math.floor(timeDifference / 3600000); // 1 hour = 3600000 milliseconds
                const minutes = Math.floor((timeDifference % 3600000) / 60000); // 1 minute = 60000 milliseconds
                const seconds = Math.floor((timeDifference % 60000) / 1000); // 1 second = 1000 milliseconds

                document.getElementById('timer').innerHTML =
                    `Time remaining: ${hours}h ${minutes}m ${seconds}s`;
            }
        }

        // Initial update
        updateTimer();

        // Update the timer every second
        setInterval(updateTimer, 1000);
    </script>
@endsection
