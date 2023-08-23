@extends('users.layouts.main')

@section('content')
    <div class="container afterNav">


        <div class="card card-hover shadow mb-4">
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-info">Add Questions</h6>
                <a href="{{ url('question') }}" class="btn btn-info  btn-sm" title="Back to Questions List">
                    <i class="fas fa-arrow-left"></i>
                </a>
            </div>
            <div class="card-body">
                {{ Form::open(['route' => 'question.store', 'class' => 'user', 'enctype' => 'multipart/form-data']) }}
                <div class="form-group row">
                    <div class="col-md-3">
                        <label for="institute_id" class="control-label">User's Name</label>
                        {!! Form::select('user_id', [$user->id ?? '13' => $user->name ?? 'Guest'], null, [
                            'required',
                            'readonly',
                            'class' => 'form-control',
                            'id' => 'user_id',
                        ]) !!}
                    </div>
                    <div class="col-md-3 ">
                        <label for="institute_id" class="control-label">Board Name</label>
                        {!! Form::select('board_id', $board, null, [
                            'placeholder' => 'Select Board',
                            'id' => 'board_id',
                            'class' => 'form-control',
                        ]) !!}
                    </div>
                    <div class="col-md-3">
                        <label for="institute_id" class="control-label">District Name</label>
                        {!! Form::select('district_id', [], null, [
                            'placeholder' => 'Select District',
                            'id' => 'district_id',
                            'class' => 'form-control',
                        ]) !!}
                    </div>
                    <div class="col-md-3">
                        <label for="institute_id" class="control-label">Thana Name</label>
                        {!! Form::select('thana_id', [], null, [
                            'placeholder' => 'Select Thana',
                            'id' => 'thana_id',
                            'class' => 'form-control',
                        ]) !!}
                    </div>


                </div>
                <div class="form-group my-2 row">
                    <div class="col-md-3">
                        <label for="institute_id" class="control-label">Institute Name</label>
                        {!! Form::select('institute_id', $institute, null, [
                            'placeholder' => 'Select Institute',
                            'id' => 'institute_id',
                            'class' => 'form-control',
                        ]) !!}
                        <div class="">If your Institute not in the list, Please add </div>
                        <!-- Button trigger modal -->
                        <span type="button" class="btn btn-outline-primary fs-6" data-bs-toggle="modal"
                            data-bs-target="#exampleModal">
                            Add Institute
                        </span>
                    </div>
                    <div class="col-sm-3 mb-3">
                        <label for="institute_id" class="control-label">Class Name</label>
                        {!! Form::select('category_id', $categories, null, [
                            'required',
                            'class' => 'form-control',
                            'id' => 'category_id',
                            'placeholder' => 'Select Class',
                        ]) !!}

                    </div>
                    <div class="col-sm-3 mb-3 mb-sm-0">
                        <label for="institute_id" class="control-label">Subject Name</label>
                        {!! Form::select('subcategory_id', [], null, [
                            'required',
                            'class' => 'form-control ',
                            'id' => 'subcategory_id',
                            'placeholder' => 'Select Subject',
                        ]) !!}

                    </div>
                    <div class="col-md-3 mb-3 mb-sm-0">
                        <label for="exam_name" class="control-label">Exam Name</label>
                        {!! Form::text('exam_name', null, [
                            'required',
                            'class' => 'form-control form-control-profile',
                            'id' => 'exam_name',
                            'placeholder' => 'exam_name',
                        ]) !!}
                    </div>

                </div>
                <div class="form-group my-3 row">
                    <div class="col-md-2 mt-1">
                        <label for="exam_name" class="control-label">Exam Year</label>
                        {!! Form::text('year', null, [
                            'required',
                            'class' => 'form-control form-control-profile',
                            'id' => 'year',
                            'placeholder' => 'year',
                        ]) !!}
                    </div>
                    <div class="col-md-4">
                        <div class="form-label">Question Images</div>
                        <input type="file" name="images[]" id="images" class="form-control" required multiple>
                    </div>
                    <div class="col-md-4">
                        <div id="selectedImages"></div>

                    </div>
                    <div class="">
                        {{-- <div class="form-label">Question Images</div> --}}
                        <input type="text" hidden name="hot" id="hot" class="form-control" required
                            value="1">
                    </div>

                </div>
                <div class="form-group">
                    {!! Form::submit('Add Question', ['class' => 'btn btn-info btn-profile btn-block']) !!}
                </div>
                {!! Form::close() !!}
            </div>
        </div>
        <div class="card my-5">
            <div class="card-body">
                <div class="text-center fs-3 "> Question Images</div>
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    {{ $questions->links() }}
                    @foreach ($questions as $item)
                        <div class="col-4">
                            <div class="card h-100">
                                <div class="card-img-top">
                                    <div class="row">

                                        @foreach ($item->question_images as $img)
                                            <div class="col-4">


                                                <a class="d-inline" href="{{ asset('storage/uploads/' . $img->name) }}"
                                                    data-lightbox="question-{{ $item->id }}"
                                                    data-title="{{ $img->name }}"><img class="w-100"
                                                        src="{{ asset('storage/uploads/' . $img->name) }}"
                                                        alt="" /></a>
                                            </div>
                                        @endforeach

                                    </div>

                                </div>
                                {{-- 'user_id','board_id', 'district_id', 'thana_id', 'institute_id','subcategory_id', 'exam_name', 'year', --}}
                                <div class="card-body">
                                    <h5 class="card-title">{{ $item->subcategory->name }} {{ $item->exam_name }} -
                                        {{ $item->year }}</h5>
                                    <div class="card-text">
                                        <div class="row">
                                            <div class="col-6">Institute Name:</div>
                                            <div class="col-6">{{ $item->institute->name }}</div>
                                        </div>
                                        <div class="row">
                                            <div class="col-6">Board Name:</div>
                                            <div class="col-6">{{ $item->board->name }}</div>
                                        </div>
                                        <div class="row">
                                            <div class="col-6">District Name:</div>
                                            <div class="col-6">{{ $item->district->name }}</div>
                                        </div>
                                        <div class="row">
                                            <div class="col-6">Thana Name:</div>
                                            <div class="col-6">{{ $item->thana->name }}</div>
                                        </div>
                                        <div class="text-center">Uploader:{{ $item->user->name }}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>
            </div>
        </div>
        
    </div>




    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Add Institute </h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="card-body">
                        {{ Form::open(['route' => 'institute.store', 'class' => 'user', 'enctype' => 'multipart/form-data']) }}




                        <div class="form-group row">
                            <div class="col-sm-4 mb-3 mb-sm-0">
                                {!! Form::select('board_id', $board, null, [
                                    'placeholder' => 'Select Class',
                                    'id' => 'board_id1',
                                    'class' => 'form-control',
                                ]) !!}
                            </div>
                            <div class="col-sm-4">
                                {!! Form::select('district_id', [], null, [
                                    'placeholder' => 'Select Subject',
                                    'id' => 'district_id1',
                                    'class' => 'form-control',
                                ]) !!}
                            </div>
                            <div class="col-sm-4">
                                {!! Form::select('thana_id', [], null, [
                                    'placeholder' => 'Select Subject',
                                    'id' => 'thana_id1',
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
                            {!! Form::submit('Add Institute', ['class' => 'btn my-3 btn-info btn-profile btn-block']) !!}
                        </div>
                        {!! Form::close() !!}
                    </div>
                </div>
                <div class="modal-footer">
                    {{-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> --}}
                    {{-- <button type="button" class="btn btn-primary">Save changes</button> --}}
                </div>
            </div>
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

           
            // =========
            // for district 
            function districtSellect1(ob) {
                $("#district_id1").empty().append('<option value = "0">All');

                let html = "<option value='0'>All</option>";
                for (const key in ob) {
                    if (Object.hasOwnProperty.call(ob, key)) {
                        html += "<option value='" + key + "'>" + ob[key] + "</option>";
                    }
                }
                $("#district_id1").html(html);
            }
            $("#board_id1").change(function() {
                // console.log( $(this).val() )
                let URL = "{{ url('dist') }}";
                $.ajax({
                    type: "post",
                    url: URL + '/' + $(this).val(),
                    data: "data",
                    dataType: "json",
                    success: function(response) {
                        districtSellect1(response);
                    }
                });
            });

            // for thana
            function selectThana1(ot) {

                let html = "<option value='0'>All</option>";
                for (const k in ot) {
                    if (Object.hasOwnProperty.call(ot, k)) {

                        html += "<option value='" + k + "'>" + ot[k] + "</option>";
                    }
                }
                $("#thana_id1").html(html);
            }
            $("#district_id1").on('change', function() {

                // })
                // $("#subcategory_id").change(function() {
                if ($(this).val() == "null") {
                    $("#thana_id1").empty().append('<option value = "0">All');
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
                        selectThana1(response);
                    }
                });
            });


        });
    </script>
@endsection
