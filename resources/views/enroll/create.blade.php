@extends('admin.layouts.main')
@section('content')
    <div class="card card-hover shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <h4 class="m-0 font-weight-bold text-info">Add Enroll Information</h4>
            <a href="{{ url('enroll') }}" class="btn btn-info  btn-sm" title="Back to Subject List">
                <i class="fas fa-arrow-left"></i>
            </a>
        </div>
        <div class="card-body">
            {{ Form::open(['route' => 'enroll.store', 'class' => 'user', 'enctype' => 'multipart/form-data']) }}
            {{-- @include('subcategory.form') --}}


            <div class="form-group row">
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
            <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                    {!! Form::text('tj_methode', null, [
                        'required',
                        'class' => 'form-control form-control-profile',
                        'id' => 'tj_methode',
                        'placeholder' => 'tj_methode',
                    ]) !!}
                </div>
                <div class="col-sm-6 mb-3 mb-sm-0">
                    {!! Form::text('tj_id', null, [
                        'required',
                        'class' => 'form-control form-control-profile',
                        'id' => 'tj_id',
                        'placeholder' => 'tj_id',
                    ]) !!}
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                    {!! Form::text('status', 'Pending', [
                        'required',
                        'class' => 'form-control form-control-profile',
                        'id' => 'status',
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

            {{-- {{ now()->addMonths(6)->format('Y-m-d') }} --}}
            {{-- <input type="text" value=""> --}}
            <div class="form-group">
                {!! Form::submit('Add Enroll', ['class' => 'btn mt-3 btn-info btn-profile btn-block']) !!}
            </div>
            {!! Form::close() !!}
        </div>
    </div>
@endsection
