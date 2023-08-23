@extends('users.layouts.main')
@section('content')
    <div class="container afterNav">
        <div class="row justify-content-center">
            <div class="col-md-4">
                @include('profile.sidebar')
            </div>
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
                                    <p><strong>Social Media:</strong>
                                        <a href="{{ $item->yt }}">{{ $item->yt ?? 'Custom' }}</a>
                                        <a href="{{ $item->fb }}">{{ $item->fb ?? 'Custom' }}</a>
                                        <a href="{{ $item->in }}">{{ $item->in ?? 'Custom' }}</a>
                                    </p>
                                    <p><strong>Guardian Name:</strong> {{ $item->guardianname ?? 'Custom' }}</p>
                                    <p><strong>Guardian Email:</strong> {{ $item->guardianemail ?? 'Custom' }}</p>
                                    <p><strong>Guardian Phone:</strong> {{ $item->guardianphone ?? 'Custom' }}</p>
                                    <p><strong>Blood Group:</strong> {{ $item->bloodgroup ?? 'Custom' }}</p>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
@endsection
