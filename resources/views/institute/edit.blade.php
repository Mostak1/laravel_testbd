@extends('admin.layouts.main')

@section('content')
    <div class="card card-hover shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <h6 class="m-0 font-weight-bold text-info">Update Institute</h6>
            <a href="{{ url('institute') }}" class="btn btn-info  btn-sm" title="Back to Institute">
                <i class="fas fa-arrow-left"></i>
            </a>
        </div>
        <div class="card-body">
            {!! Form::model($institute, [
                'method' => 'put',
                'enctype' => 'multipart/form-data',
                'class' => 'user',
                'route' => ['institute.update', $institute->id],
            ]) !!}



            <div class="form-group row">
                <div class="col-sm-4 mb-3 mb-sm-0">
                    {!! Form::select('board_id', $board, null, [
                        'placeholder' => 'Select Class',
                        'id' => 'board_id',
                        'class' => 'form-control',
                    ]) !!}
                </div>
                <div class="col-sm-4">
                    {!! Form::select('district_id', [], null, [
                        'placeholder' => 'Select Subject',
                        'id' => 'district_id',
                        'class' => 'form-control',
                    ]) !!}
                </div>
                <div class="col-sm-4">
                    {!! Form::select('thana_id', [], null, [
                        'placeholder' => 'Select Subject',
                        'id' => 'thana_id',
                        'class' => 'form-control',
                    ]) !!}
                </div>


            </div>
            <div class="form-group my-3 row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                    {!! Form::text('name', null, [
                        'required',
                        'class' => 'form-control form-control-profile',
                        'id' => 'name',
                        'placeholder' => 'Name',
                    ]) !!}
                </div>

            </div>
            <div class="form-group">
                {!! Form::submit('Update Institute', ['class' => 'btn btn-info btn-profile btn-block']) !!}
            </div>
            {!! Form::close() !!}
        </div>
    </div>
@endsection

@section('scripts')
    <script type="text/javascript">
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
    </script>
@endsection
