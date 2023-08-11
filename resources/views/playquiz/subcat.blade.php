@extends('users.layouts.main')
{{-- main content add here --}}
@section('content')

    <!-- Facilities Start -->
    <div class="container afterNav pt-5">
        <div class="container pb-3">
          <div class="row">
            @if ($scats)
            
                
          
                {{-- {{dd($scs);}} --}}
                <h1>Sub Category {{$scats->name}}</h1>
                    <div class="col-lg-4 col-md-6 pb-1">
                        <div class=" card-hover  d-flex bg-light shadow-sm border-top border rounded mb-4" style="padding: 30px">
                            <i class="flaticon-050-fence h1 font-weight-normal text-primary mb-3"></i>
                            <div class="pl-4">
                                {{-- <a href="{{ route('campaign.show', [$campaign->id]) }}"> --}}
                                {{-- <h3><a href="{{ url('playquiz/cat/'.$scs->id)}}">{{$scs->name}}</a></h3> --}}
                                @foreach ($scats->topics as $tps)
                                    <li class="m-0">
                                    <a href="{{ url('playquiz/topic/'.$tps->id)}}">{{ $tps->name}}</a>
                                    </li>
                                @endforeach
                            </div>
                        </div>
                    </div>
              
                    @endif
          </div>
        </div>
    </div>
    <!-- Facilities End -->
@endsection


