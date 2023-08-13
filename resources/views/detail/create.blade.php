@extends('admin.layouts.main')
@section('content')
    <div class="card card-hover shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <h4 class="m-0 font-weight-bold text-info">Add Subject</h4>
            <a href="{{ url('detail') }}" class="btn btn-info  btn-sm" title="Back to Subject List">
                <i class="fas fa-arrow-left"></i>
            </a>
        </div>
        <div class="card-body">
            {{ Form::open(['route' => 'detail.store', 'class' => 'user', 'enctype' => 'multipart/form-data']) }}
            {{-- @include('detail.form') --}}
           

            <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                    {!! Form::select('topic_id', $topic, null, [
                        'placeholder' => 'Select Class',
                        'id' => 'topic_id',
                        'class' => 'form-control w-full',
                    ]) !!}
                </div>
                <div class="col-sm-6">
                    {!! Form::textarea('question', null, [
                        'required',
                        'class' => 'form-control form-control-profile',
                        'id' => 'question',
                        'rows' => '2',
                        'placeholder' => 'question',
                    ]) !!}
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                    {!! Form::textarea('answer', null, [
                        'required',
                        'class' => 'form-control form-control-profile',
                        'id' => 'answer',
                        'rows' => '2',
                        'placeholder' => 'answer',
                    ]) !!}
                </div>
                
            </div>


            <div class="form-group">
                {!! Form::submit('Add Class', ['class' => 'btn btn-info btn-profile btn-block']) !!}
            </div>
            {!! Form::close() !!}
        </div>
    </div>
@endsection
