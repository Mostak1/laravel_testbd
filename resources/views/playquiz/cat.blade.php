@extends('users.layouts.main')

{{-- main content add here --}}
@section('content')
    <!-- Facilities Start -->
    <div class="container-fluid pt-5 afterNav">
        <div class="container pb-3">
            <div class="row">
                <div class="col-lg-12 col-md-6 pb-1">
                    <div class=" card-hover  d-flex bg-light shadow-sm border-top border rounded mb-2 justify-content-between"
                        style="padding: 30px">

                        <div class="col-4 pl-4">

                            <h3><i class="flaticon-050-fence font-weight-normal text-primary"></i> <a
                                    href="{{ url('playquiz/subcat/' . $cats->id) }}">{{ $cats->name }}</a></h3>
                            {{-- <input class="" type="text" value="{{ $cats->id }}" id="category_id"> --}}


                        </div>
                        <div class="col-8 text-center">

                            {{ Form::model(['route' => 'playquiz.cat', 'class' => 'form', 'enctype' => 'multipart/form-data']) }}


                            <div class="form-group mt-1 row">
                                <div class="col-sm-3 mb-3">


                                </div>
                                <div class="col-sm-3 mb-3 mb-sm-0">


                                </div>
                                <div class="col-sm-3 mb-3 mb-sm-0">


                                </div>
                                <div class="col-sm-3 mb-3 mb-sm-0">
                                    {!! Form::select('type', ['m' => 'MCQ', 'd' => 'Descriptive', 'qi' => 'Imagery'], 'm', [
                                        'required',
                                        'class' => 'form-control form-control-profile',
                                        'id' => 'type',
                                        'rows' => '1',
                                    ]) !!}
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <div class="row">


               

            </div>
            <div class="row pb-5">
                <div class="col-md-8">
                    <p>লারাভেলের সাথে ওয়েব ডিজাইন এবং ডেভেলপমেন্ট শিখুন। আজই এনরোল করে লোগো, সোশ্যাল মিডিয়া কন্টেন্টসহ
                        প্র্যাক্টিকাল ওয়েব ডিজাইনিং শুরু করুন।</p>
                    <h3>কোর্স ইন্সট্রাক্টর:</h3>
                    <p>Mamun Islam <br>
                        Education Content Creator; <br>
                        Web Design and Development; <br>
                        Author, Genuity</p>

                    <div class="">



                        <div class="accordion" id="accordionExample">
                            @if (Auth::user())
                                @foreach ($cats->subcategories as $scs)
                                    <div class="accordion-item">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                data-bs-target="#collapseOne" aria-expanded="true"
                                                aria-controls="collapseOne">
                                                <div class="m-0">
                                                    <i class="flaticon-050-fence me-1 text-primary"></i><a
                                                        href="{{ url('playquiz/subcat/' . $scs->id) }}">{{ $scs->name }}</a>
                                                </div>
                                            </button>
                                        </h2>
                                        <div id="collapseOne" class="accordion-collapse collapse show"
                                            data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                <input class="subcategory_id d-none" type="text"
                                                    value="{{ $scs->id }}" id="">
                                                
                                                <div class="m-0">
                                                    <i class="flaticon-050-fence me-1 text-primary"></i><a
                                                        href="{{ url('playquiz/subcat/' . $scs->id) }}"> Show Quizzes </a>
                                                </div>


                                               


                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            @endif
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <iframe width="" height="315" src="https://www.youtube.com/embed/WMJ4r4p6Ewg"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>

    <!-- Facilities End -->
@endsection
@section('script')
    
<script type="text/javascript">
   
    $(document).ready(function() {
    //    alert('Please wait')

    });
</script>
@endsection
