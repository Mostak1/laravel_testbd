@extends('users.layouts.main')


@section('content')
    <div class="container afterNav">


        <div class="card card-hover shadow mb-4">
            <div class="card-header py-3 d-flex justify-content-between">
                <h4 class="m-0 font-weight-bold text-info">Enrolls</h4>
                <a href="{{ url('/') }}" class="btn btn-info  btn-sm" title="Back to Subject">
                    <i class="fas fa-arrow-left"></i>
                </a>
            </div>
            @include('layouts.flash')
            <div class="card-body">
                {{-- {!! Form::model($enroll, [
                'method' => 'put',
                'enctype' => 'multipart/form-data',
                'class' => 'user',
                'route' => 'enroll.store',
            ]) !!} --}}
                {{ Form::open(['route' => 'enroll.store', 'class' => 'user', 'enctype' => 'multipart/form-data']) }}



                <div class="form-group row mb-3">
                    <div class="col-sm-6 mb-3 mb-sm-0">
                        {!! Form::select('category_id', $categories, null, [
                            'placeholder' => 'Select Category',
                            'id' => 'category_id',
                            'class' => 'form-control w-full',
                        ]) !!}
                    </div>
                    <div class="col-sm-6 mb-3 mb-sm-0">
                        {!! Form::select('user_id', $users, null, [
                            'placeholder' => 'Select User Name',
                            'id' => 'user_id',
                            'class' => 'form-control w-full',
                        ]) !!}
                    </div>

                </div>
                <div class="form-group row mb-3">
                    <div class="col-sm-6 mb-3 mb-sm-0">
                        {!! Form::select('tj_methode', ['Bkash' => 'Bkash', 'Nagod' => 'Nagod', 'Roket' => 'Roket'], null, [
                            'required',
                            'class' => 'form-control form-control-profile',
                            'id' => 'tj_methode',
                        ]) !!}
                    </div>
                    <div class="col-sm-6 mb-3 mb-sm-0">
                        {!! Form::text('tj_id', null, [
                            'required',
                            'class' => 'form-control form-control-profile',
                            'id' => 'tj_id',
                            'placeholder' => 'Tranjection ID',
                        ]) !!}
                    </div>
                </div>
                <div class="form-group row d-none">
                    <div class="col-sm-6 mb-3 mb-sm-0">
                        {!! Form::text('status', 'Pending', [
                            'required',
                            'class' => 'form-control form-control-profile',
                            'id' => 'status',
                            'placeholder' => 'Active Field',
                        ]) !!}
                    </div>
                    <div class="col-sm-6 mb-3 mb-sm-0">

                        {!! Form::text(
                            'expair_time',
                            now()->addMonths(6)->format('Y-m-d'),
                            ['required', 'class' => 'form-control form-control-profile', 'id' => 'expair_time'],
                        ) !!}
                    </div>

                </div>
                <div class="form-group">
                    {!! Form::submit('Submit Orders', ['class' => 'btn mt-3 btn-info btn-profile btn-block']) !!}
                </div>
                {!! Form::close() !!}
            </div>
        </div>
    </div>
@endsection
