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
                        <video class="card-img-top" autoplay src="{{asset('assets/video/animation_lkt38hd2.mp4')}}"></video>
                      {{-- <img src="..."  alt="..."> --}}
                      <div class="card-body">
                        <h5 class="card-title"><a href="{{ url('playquiz/cat/'.$cs->id)}}">{{$cs->name}}</a></h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                      </div>
                    </div>
                  </div>
                    {{-- <div class="col-lg-4 col-md-6 pb-1">
                        <div class=" card-hover  d-flex bg-light shadow-sm border-top border rounded mb-4" style="padding: 30px">
                            <i class="flaticon-050-fence h1 font-weight-normal text-primary mb-3"></i>
                            <div class="pl-4">
                                {{-- <a href="{{ route('campaign.show', [$campaign->id]) }}"> --}}
                                {{-- <h3></h3>
                                @foreach ($cs->subcategories as $scs)
                                    <div class="m-0"> --}}
                                        {{-- <i class="fa-solid fa-circle-arrow-right fa-beat-fade"></i><a href="{{ url('playquiz/subcat/'.$scs->id)}}">{{ $scs->name}}</a> --}}
                                    {{-- </div>
                                @endforeach
                            </div>
                        </div>
                    </div>   --}}
              
            @endforeach
          </div>
        </div>
    </div>
    <!-- Facilities End -->
@endsection


