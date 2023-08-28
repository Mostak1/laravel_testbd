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
    {{-- main banner for home page --}}
    <div class="section main-banner" id="top">
        <video autoplay muted loop id="bg-video" src="{{ asset('assets/images/course-video.mp4') }}"></video>
        <div class="video-overlay header-text">
            <div class="caption " >
                <h6 data-aos="fade-up" data-aos-duration="3000">You Have a <span class="bc wow bounceInUp">Smartphone</span> or <span class="bc">Personl Computer!</span><br> Get
                    a<span class="bc">Smart Decision</span> and <span class="bc">Develop Your Skill</span> </h6>
                <h2 data-aos="fade-down" data-aos-duration="3000"><em>Your</em> Classroom</h2>
                
                <div class="main-button">
                    <div class="scroll-to-section">
                        <a class="cbtn" href="#section2">Discover more</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container my-5">

        <div class="my-3 row">
            <div class="col-md-6" data-aos="fade-down">
                <lottie-player src="https://assets10.lottiefiles.com/packages/lf20_yg29hewu.json" background="transparent"
                    speed="1" loop autoplay></lottie-player>
            </div>
            <div class="col-md-6" data-aos="fade-down">
                <lottie-player src="https://assets10.lottiefiles.com/packages/lf20_1a8dx7zj.json" background="transparent"
                    speed="1" loop autoplay></lottie-player>
            </div>
        </div>
    </div>

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
                                        <div class="col-md-6">
                                            <section class="image-section" data-aos="fade-left" data-aos-duration="3000">
                                                <img class="section-image" src="assets/images/choose-us-image-01.png"
                                                    alt="" />
                                            </section>
                                        </div>
                                        <div class="col-md-6" data-aos="fade-right" data-aos-duration="3000">
                                            <h4>Best Education</h4>
                                            <p>
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
                                    <div class="row">
                                        <div class="col-md-6" data-aos="flip-left" data-aos-duration="3000">
                                            <section class="image-section">

                                                <img class="section-image" src="assets/images/choose-us-image-02.png"
                                                    alt="" />
                                            </section>

                                        </div>
                                        <div class="col-md-6" data-aos="fade-up" data-aos-duration="3000">
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
                                    <div class="row">
                                        <div class="col-md-6" data-aos="zoom-out-right" data-aos-duration="3000">
                                            <section class="image-section">
                                                <img class="section-image" src="assets/images/choose-us-image-03.png"
                                                    alt="" />
                                            </section>
                                        </div>
                                        <div class="col-md-6" data-aos="fade-up" data-aos-duration="3000">
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
