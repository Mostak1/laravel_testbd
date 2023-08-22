@extends('admin.layouts.main')

@section('content')
    <div class="card card-hover shadow mb-4">
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-info">Add Institute</h6>
            <a href="{{ url('institute') }}" class="btn btn-info  btn-sm" title="Back to Institute List">
                <i class="fas fa-arrow-left"></i>
            </a>
        </div>
        <div class="card-body">
            {{ Form::open(['route' => 'institute.store', 'class' => 'user', 'enctype' => 'multipart/form-data']) }}




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
                {!! Form::submit('Add Institute', ['class' => 'btn btn-info btn-profile btn-block']) !!}
            </div>
            {!! Form::close() !!}
        </div>
    </div>
@endsection




@section('script')
    <script type="text/javascript">
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(document).ready(function() {

            // show the alert
            setTimeout(function() {
                $(".alert").alert('close');
            }, 2000);
            // =========
            // for district 
            function districtSellect(ob) {
                $("#district_id").empty().append('<option value = "0">All');

                let html = "<option value='0'>All</option>";
                for (const key in ob) {
                    if (Object.hasOwnProperty.call(ob, key)) {
                        html += "<option value='" + key + "'>" + ob[key] + "</option>";
                    }
                }
                $("#district_id").html(html);
            }
            $("#board_id").change(function() {
                // console.log( $(this).val() )
                let URL = "{{ url('dist') }}";
                $.ajax({
                    type: "post",
                    url: URL + '/' + $(this).val(),
                    data: "data",
                    dataType: "json",
                    success: function(response) {
                        districtSellect(response);
                    }
                });
            });

            // for thana
            function selectThana(ot) {
                
                let html = "<option value='0'>All</option>";
                for (const k in ot) {
                    if (Object.hasOwnProperty.call(ot, k)) {

                        html += "<option value='" + k + "'>" + ot[k] + "</option>";
                    }
                }
                $("#thana_id").html(html);
            }
            $("#district_id").on('change', function() {

                // })
                // $("#subcategory_id").change(function() {
                if ($(this).val() == "null") {
                    $("#thana_id").empty().append('<option value = "0">All');
                    return;
                }
                // console.log( $(this).val() )
                let URL = "{{ url('thana') }}";
                $.ajax({
                    type: "post",
                    url: URL + '/' + $(this).val(),
                    data: "data",
                    dataType: "json",
                    success: function(response) {
                        selectThana(response);
                    }
                });
            });

        });
    </script>
@endsection
