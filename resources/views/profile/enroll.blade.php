@extends('users.layouts.main')
@section('content')
    <div class="container afterNav">
        <div class="row justify-content-center">
            {{-- <div class="col-md-4">
                @include('profile.sidebar')
            </div> --}}
            <div class="col-md-8">
                <div class="fs-3 my-3 nvc text-decoration-underline text-center">{{Auth::user()->name}} Enroll Information</div>
                <div class="card mb-5">
                    <div class="card-header">
                            <a href="{{ url('uprofile') }}" class="nav-link text-primary">Profile</a>
                    </div>

                    <div class="card-body">
                        <div class="row">
                           
                            <div class="my-3">
                                <div class="row row-cols-1 row-cols-md-3 g-4">
                                    @foreach ($enroll as $i)
                                        <div class="col-sm-6">
                                            <div class="card  h-100">
                                                <div class="card-body">

                                                    <p><strong>Subject :</strong>{{ $i->category->name }}</p>
                                                    <p><strong>Tranjection Methode :</strong>{{ $i->tj_methode }}</p>
                                                    <p><strong>Tranjection ID :</strong>{{ $i->tj_id }}</p>
                                                    <p><strong>Cost :</strong>{{ $i->price }}</p>
                                                    <p><strong>Status :</strong>{{ $i->status }}</p>
                                                    <p> <a class="nav-item" href="{{ url('playquiz/cat/' . $i->category_id) }}">Go Details</a></p>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                                <div class="my-3 text-center">

                                    {{$enroll->links()}}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
@endsection
