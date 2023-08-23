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
                        {!! Form::select('user_id', [$user->id => $user->name ?? ''], null, [
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
                    <div class="col-md-3 mb-3 mb-sm-0">
                        <label for="institute_id" class="control-label">Institute Name</label>
                        {!! Form::select('institute_id', $institute, null, [
                            'placeholder' => 'Select Institute',
                            'id' => 'institute_id',
                            'class' => 'form-control',
                        ]) !!}
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
                <div class="text-center"> Question Images</div>
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    {{$questions->links()}}
                    @foreach ($questions as $item)
                        <div class="col-4">
                            <div class="card h-100">
                                <div class="card-img-top">
                                    <div class="row">
                                        {{-- <table class="table">
                                            <tr>
                                                @foreach ($item->question_images as $img)
                                                <td>
                                                    <a class="d-inline" href="{{ asset('storage/uploads/' . $img->name) }}"
                                                        data-lightbox="question-{{ $item->id }}"
                                                        data-title="{{ $img->name }}"><img class="w-25"
                                                            src="{{ asset('storage/uploads/' . $img->name) }}"
                                                            alt="" /></a>
                                                </td>
                                                @endforeach
                                            </tr>
                                            
                                        </table> --}}
                                        @foreach ($item->question_images as $img)
                                            <div class="col-4">


                                                <a class="d-inline" href="{{ asset('storage/uploads/' . $img->name) }}"
                                                    data-lightbox="question-{{ $item->id }}"
                                                    data-title="{{ $img->name }}"><img class="w-100"
                                                        src="{{ asset('storage/uploads/' . $img->name) }}"
                                                        alt="" /></a>
                                            </div>
                                        @endforeach

                                        {{-- @foreach ($item->question_images as $img)
                                            <img src="{{ asset('storage/uploads/' . $img->name) }}" class="col-4"
                                                alt="Loading..">
                                        @endforeach --}}
                                    </div>

                                </div>
                                {{-- <img src="..." class="card-img-top" alt="..."> --}}
                                <div class="card-body">
                                    <h5 class="card-title">{{ $item->exam_name }}</h5>
                                    <p class="card-text">This is a longer card with supporting text below as a natural
                                        lead-in to additional content. This content is a little bit longer.</p>
                                </div>
                            </div>
                        </div>
                    @endforeach

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

        });
    </script>
@endsection
