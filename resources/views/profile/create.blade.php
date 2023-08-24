@extends('users.layouts.main')
@section('content')

@section('content')
    <div class="container afterNav">
        <div class="row justify-content-center">
           
            <div class="col-md-8">
                <div class="card mb-5">
                    <div class="card-header fs-4">
                        Upload Profile Information <a href="{{ url('uprofile') }}" class="nav-link text-primary">Go to Profile</a>
                    </div>

                    <div class="card-body">
                        <div class="row">
                            {{ Form::open(['route' => 'uprofile.store', 'class' => 'user', 'enctype' => 'multipart/form-data']) }}

                            <div class="col-md-4">
                                <label for="image" class="control-label">Image</label>
                                {!! Form::file('image', [
                                    'class' => 'form-control',
                                    'id' => 'image',
                                ]) !!}
                            </div>
                            <div class="col-md-8">
                                {!! Form::text('user_id', Auth::user()->id, [
                                        'required','hidden',
                                        'class' => 'form-control form-control-profile',
                                        'id' => 'user_id',
                                        
                                    ]) !!}
                                <div>
                                    <label for="fullname" class="control-label">Your Full Name</label>

                                    {!! Form::text('fullname', null, [
                                        'required',
                                        'class' => 'form-control form-control-profile',
                                        'id' => 'fullname',
                                        'placeholder' => 'Full Name',
                                    ]) !!}
                                </div>
                                <div>
                                    <strong class="">Institute:</strong>
                                    {!! Form::text('institute', null, [
                                        'required',
                                        'class' => 'form-control form-control-profile',
                                        'id' => 'institute',
                                        'placeholder' => 'Institute',
                                    ]) !!}
                                </div>
                                <div>
                                    <strong class="">Batch:</strong>
                                    {!! Form::text('batch', null, [
                                        'required',
                                        'class' => 'form-control form-control-profile',
                                        'id' => 'batch',
                                        'placeholder' => 'batch',
                                    ]) !!}
                                </div>
                                <div>
                                    <strong class="">Subject:</strong>
                                    {!! Form::text('subject', null, [
                                        'required',
                                        'class' => 'form-control form-control-profile',
                                        'id' => 'subject',
                                        'placeholder' => 'subject',
                                    ]) !!}
                                </div>
                                <div>
                                    <strong class="">Designation:</strong>
                                    {!! Form::text('designation', null, [
                                        'required',
                                        'class' => 'form-control form-control-profile',
                                        'id' => 'designation',
                                        'placeholder' => 'designation',
                                    ]) !!}
                                </div>
                                <div>
                                    <strong class="">Gender:</strong>
                                    {!! Form::select('gender', ['Male' => 'Male', 'Female' => 'Female', 'Others' => 'Others'], null, [
                                        'required',
                                    
                                        'class' => 'form-control',
                                        'id' => 'gender',
                                    ]) !!}
                                </div>
                                <div>
                                    <strong class="">Biography:</strong>
                                    {!! Form::text('bio', null, [
                                        
                                        'class' => 'form-control form-control-profile',
                                        'id' => 'bio',
                                        'placeholder' => 'Biography',
                                    ]) !!}
                                </div>
                                <div>
                                    <strong class="">Phone Number:</strong>
                                    {!! Form::text('phone', null, [
                                        'required',
                                        'class' => 'form-control form-control-profile',
                                        'id' => 'phone',
                                        'placeholder' => 'Phone Number',
                                    ]) !!}
                                </div>
                                <div>
                                    <strong class="">Address:</strong>
                                    {!! Form::text('address', null, [
                                        'required',
                                        'class' => 'form-control form-control-profile',
                                        'id' => 'address',
                                        'placeholder' => 'Address',
                                    ]) !!}
                                </div>
                                <div>
                                    <strong class="">Youtube Link:</strong>
                                    {!! Form::text('yt', null, [
                                        
                                        'class' => 'form-control form-control-profile',
                                        'id' => 'yt',
                                        'placeholder' => 'Youtube Link',
                                    ]) !!}
                                </div>
                                <div>
                                    <strong class="">Facebook Link:</strong>
                                    {!! Form::text('fb', null, [
                                        
                                        'class' => 'form-control form-control-profile',
                                        'id' => 'fb',
                                        'placeholder' => 'Facebook Link',
                                    ]) !!}
                                </div>
                                <div>
                                    <strong class="">LinkedIn Link:</strong>
                                    {!! Form::text('in', null, [
                                        
                                        'class' => 'form-control form-control-profile',
                                        'id' => 'in',
                                        'placeholder' => 'LinkedIn Link',
                                    ]) !!}
                                </div>


                                <div>
                                    <strong class="">Guardian Email:</strong>
                                    {!! Form::text('guardianemail', null, [
                                        'class' => 'form-control form-control-profile',
                                        'id' => 'guardianemail',
                                        'placeholder' => 'Guardian Email',
                                    ]) !!}
                                </div>
                                <div>
                                    <strong class="">Guardian Phone:</strong>
                                    {!! Form::text('guardianphone', null, [
                                        'class' => 'form-control form-control-profile',
                                        'id' => 'guardianphone',
                                        'placeholder' => 'Guardian Phone',
                                    ]) !!}
                                </div>
                                <div>
                                    <strong class="">Blood Group:</strong>
                                    {!! Form::text('bloodgroup', null, [
                                        'required',
                                        'class' => 'form-control form-control-profile',
                                        'id' => 'bloodgroup',
                                        'placeholder' => 'Blood Group',
                                    ]) !!}
                                </div>

                                {{-- <p><strong>Batch:</strong> {{ $item-> ?? 'Custom' }}</p>
                                <p><strong>Subject:</strong> {{ $item-> ?? 'Custom' }}</p>
                                <p><strong>Designation:</strong> {{ $item-> ?? 'Custom' }}</p>
                                <p><strong>Gender:</strong> {{ $item-> ?? 'Custom' }}</p>
                                <p><strong>Bio:</strong> {{ $item-> ?? 'Custom' }}</p>
                                <p><strong>Phone:</strong> {{ $item-> ?? 'Custom' }}</p>
                                <p><strong>Address:</strong> {{ $item-> ?? 'Custom' }}</p>
                                <p><strong>Social Media:</strong>
                                    <a href="{{ $item->yt }}">{{ $item->yt ?? 'Custom' }}</a>
                                    <a href="{{ $item->fb }}">{{ $item->fb ?? 'Custom' }}</a>
                                    <a href="{{ $item->in }}">{{ $item->in ?? 'Custom' }}</a>
                                </p>
                                <p><strong>Guardian Name:</strong> {{ $item->guardianname ?? 'Custom' }}</p>
                                <p><strong>Guardian Email:</strong> {{ $item->guardianemail ?? 'Custom' }}</p>
                                <p><strong>Guardian Phone:</strong> {{ $item->guardianphone ?? 'Custom' }}</p>
                                <p><strong>Blood Group:</strong> {{ $item->bloodgroup ?? 'Custom' }}</p> --}}
                            </div>
                            <div class="form-group">
                                {!! Form::submit('Add Profile Information', ['class' => 'btn my-3 btn-info btn-profile btn-block']) !!}
                            </div>
                            {!! Form::close() !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@endsection

@section('script')
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
</script>
@endsection
