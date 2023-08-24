@extends('users.layouts.main')
@section('content')
    <div class="container afterNav">
        <div class="row justify-content-center">
            {{-- <div class="col-md-4">
                @include('profile.sidebar')
            </div> --}}
            <div class="col-md-8">
                <div class="card mb-5">
                    <div class="card-header">User Profile
                        @forelse ($profile as $it)
                            <a href="{{ url('uprofile/edit') }}" class="nav-link">Profile Edit</a>
                        @empty
                            <a href="{{ url('uprofile/create') }}" class="nav-link">Profile Create</a>
                        @endforelse
                    </div>

                    <div class="card-body">
                        <div class="row">
                            @foreach ($profile as $item)
                                <div class="col-md-4">
                                    <img src="{{ asset('storage/profileimg/' . ($item->image ?? 'custom.jpg')) }}"
                                        alt="Profile Image" class="img-fluid rounded-circle">
                                    <div class="my-2 fs-3">{{ $item->user->name }} Achiving Points:
                                        {{ $item->user->points }}</div>
                                </div>
                                <div class="col-md-8">
                                    <h3>{{ $item->fullname ?? 'Custom' }}</h3>
                                    <p><strong>Institute:</strong> {{ $item->institute ?? 'Custom' }}</p>
                                    <p><strong>Batch:</strong> {{ $item->batch ?? 'Custom' }}</p>
                                    <p><strong>Subject:</strong> {{ $item->subject ?? 'Custom' }}</p>
                                    <p><strong>Designation:</strong> {{ $item->designation ?? 'Custom' }}</p>
                                    <p><strong>Gender:</strong> {{ $item->gender ?? 'Custom' }}</p>
                                    <p><strong>Bio:</strong> {{ $item->bio ?? 'Custom' }}</p>
                                    <p><strong>Phone:</strong> {{ $item->phone ?? 'Custom' }}</p>
                                    <p><strong>Address:</strong> {{ $item->address ?? 'Custom' }}</p>
                                    <p><strong>Social Media:</strong><br>
                                        <span>Youtube: </span> <a
                                            href="{{ $item->yt }}">{{ $item->yt ?? 'Custom' }}</a><br>
                                        <span>Facebook: </span><a
                                            href="{{ $item->fb }}">{{ $item->fb ?? 'Custom' }}</a><br>
                                        <span>LinkedIn: </span> <a
                                            href="{{ $item->in }}">{{ $item->in ?? 'Custom' }}</a>
                                    </p>
                                    <p><strong>Guardian Name:</strong> {{ $item->guardianname ?? 'Custom' }}</p>
                                    <p><strong>Guardian Email:</strong> {{ $item->guardianemail ?? 'Custom' }}</p>
                                    <p><strong>Guardian Phone:</strong> {{ $item->guardianphone ?? 'Custom' }}</p>
                                    <p><strong>Blood Group:</strong> {{ $item->bloodgroup ?? 'Custom' }}</p>

                                </div>
                            @endforeach
                            <div class="my-3">
                                <div class="text-center fs-4">Enroll Information</div>
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
