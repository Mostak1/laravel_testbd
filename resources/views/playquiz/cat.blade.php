@extends('users.layouts.main')

@section('content')
    <!-- Facilities Start -->
    <div class="container py-5 my-5 afterNav">
        <div class="card my-5">
            <div class="card-body">
                <h3 class="text-center text-primary">
                    {{ $cats->name }}
                </h3>
                <p class="text-center">{{ $cats->description }}</p>

                {{-- @dd($uenroll) --}}
                @forelse ($uenroll as $item)
                    @if ($item->category_id === $cats->id)
                        <!-- Card for Sub-Category -->
                        <div class="row">
                            @foreach ($cats->subcategories as $scs)
                                <div class="col-sm-6 mb-3">
                                    <div class="card bnav">
                                        <div class="card-body">
                                            <h5 class="card-title bc">{{ $scs->name }}</h5>
                                            <p class="card-text wc">{{ $scs->description }}</p>
                                            <a href="{{ url('playquiz/subcat/' . $scs->id) }}"
                                                class="btn btn-outline-primary">Go
                                                Topics</a>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                   
                        
                    @else
                        
                    
                        <a href="{{ url('uenroll/' . $cats->id) }}">Enroll Now</a>
                    @endif
                @empty
                        <a href="{{ url('uenroll/' . $cats->id) }}">Enroll Now</a>
                @endforelse
            @auth

            @endauth
        </div>
    </div>
</div>
<!-- Facilities End -->
@endsection

@section('script')
<script type="text/javascript">
    $(document).ready(function() {
        // Code here if needed
    });
</script>
@endsection
