@extends('users.layouts.main')
@section('content')

@section('content')
    <div class="container afterNav">
        <div class="row justify-content-center">
            <div class="col-md-4">
                @include('profile.sidebar')
            </div>
            <div class="col-md-8">
                <div class="card mb-5">
                    <div class="card-header">User Profile Edit</div>
                    @foreach ($profile as $item)
                        <div class="card-body">
                            <div class="row">
                                {{ Form::open(['route' => 'uprofile.update','method' => 'put', 'class' => 'user', 'enctype' => 'multipart/form-data']) }}

                                <div class="col-md-4">
                                    <label for="image" class="control-label">Image</label>
                                    {!! Form::file('image', [
                                        'class' => 'form-control',
                                        'id' => 'image',
                                    ]) !!}
                                </div>
                                <div class="col-md-8">
                                    {!! Form::text('user_id', Auth::user()->id, [
                                        'required',
                                        'hidden',
                                        'class' => 'form-control form-control-profile',
                                        'id' => 'user_id',
                                    ]) !!}
                                    <div>
                                        <label for="fullname" class="control-label">Your Full Name</label>

                                        {!! Form::text('fullname', $item->fullname, [
                                            'required',
                                            'class' => 'form-control form-control-profile',
                                            'id' => 'fullname',
                                            'placeholder' => 'Full Name',
                                        ]) !!}
                                    </div>
                                    <div>
                                        <strong class="">Institute:</strong>
                                        {!! Form::text('institute', $item->institute, [
                                            'required',
                                            'class' => 'form-control form-control-profile',
                                            'id' => 'institute',
                                            'placeholder' => 'Institute',
                                        ]) !!}
                                    </div>
                                    <div>
                                        <strong class="">Batch:</strong>
                                        {!! Form::text('batch', $item->batch, [
                                            'required',
                                            'class' => 'form-control form-control-profile',
                                            'id' => 'batch',
                                            'placeholder' => 'batch',
                                        ]) !!}
                                    </div>
                                    <div>
                                        <strong class="">Subject:</strong>
                                        {!! Form::text('subject', $item->subject, [
                                            'required',
                                            'class' => 'form-control form-control-profile',
                                            'id' => 'subject',
                                            'placeholder' => 'subject',
                                        ]) !!}
                                    </div>
                                    <div>
                                        <strong class="">Designation:</strong>
                                        {!! Form::text('designation', $item->designation, [
                                            'required',
                                            'class' => 'form-control form-control-profile',
                                            'id' => 'designation',
                                            'placeholder' => 'designation',
                                        ]) !!}
                                    </div>
                                    <div>
                                        <strong class="">Gender:</strong>
                                        {!! Form::select('gender', ['Male' => 'Male', 'Female' => 'Female', 'Others' => 'Others'], $item->gender, [
                                            'required',
                                        
                                            'class' => 'form-control',
                                            'id' => 'gender',
                                        ]) !!}
                                    </div>
                                    <div>
                                        <strong class="">Biography:</strong>
                                        {!! Form::text('bio', $item->bio, [
                                            'class' => 'form-control form-control-profile',
                                            'id' => 'bio',
                                            'placeholder' => 'Biography',
                                        ]) !!}
                                    </div>
                                    <div>
                                        <strong class="">Phone Number:</strong>
                                        {!! Form::text('phone', $item->phone, [
                                            'required',
                                            'class' => 'form-control form-control-profile',
                                            'id' => 'phone',
                                            'placeholder' => 'Phone Number',
                                        ]) !!}
                                    </div>
                                    <div>
                                        <strong class="">Address:</strong>
                                        {!! Form::text('address', $item->address, [
                                            'required',
                                            'class' => 'form-control form-control-profile',
                                            'id' => 'address',
                                            'placeholder' => 'Address',
                                        ]) !!}
                                    </div>
                                    <div>
                                        <strong class="">Youtube Link:</strong>
                                        {!! Form::text('yt', $item->yt, [
                                            'class' => 'form-control form-control-profile',
                                            'id' => 'yt',
                                            'placeholder' => 'Youtube Link',
                                        ]) !!}
                                    </div>
                                    <div>
                                        <strong class="">Facebook Link:</strong>
                                        {!! Form::text('fb', $item->fb, [
                                            'class' => 'form-control form-control-profile',
                                            'id' => 'fb',
                                            'placeholder' => 'Facebook Link',
                                        ]) !!}
                                    </div>
                                    <div>
                                        <strong class="">LinkedIn Link:</strong>
                                        {!! Form::text('in', $item->in, [
                                            'class' => 'form-control form-control-profile',
                                            'id' => 'in',
                                            'placeholder' => 'LinkedIn Link',
                                        ]) !!}
                                    </div>


                                    <div>
                                        <strong class="">Guardian Email:</strong>
                                        {!! Form::text('guardianemail', $item->guardianemail, [
                                            'class' => 'form-control form-control-profile',
                                            'id' => 'guardianemail',
                                            'placeholder' => 'Guardian Email',
                                        ]) !!}
                                    </div>
                                    <div>
                                        <strong class="">Guardian Phone:</strong>
                                        {!! Form::text('guardianphone', $item->guardianphone, [
                                            'class' => 'form-control form-control-profile',
                                            'id' => 'guardianphone',
                                            'placeholder' => 'Guardian Phone',
                                        ]) !!}
                                    </div>
                                    <div>
                                        <strong class="">Blood Group:</strong>
                                        {!! Form::text('bloodgroup', $item->bloodgroup, [
                                            'required',
                                            'class' => 'form-control form-control-profile',
                                            'id' => 'bloodgroup',
                                            'placeholder' => 'Blood Group',
                                        ]) !!}
                                    </div>

                                </div>
                                <div class="form-group">
                                    {!! Form::submit('Add Profile Information', ['class' => 'btn my-3 btn-info btn-profile btn-block']) !!}
                                </div>
                                {!! Form::close() !!}
                            </div>
                        </div>
                    @endforeach
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
