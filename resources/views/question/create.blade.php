@extends('admin.layouts.main')

@section('content')
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
                    {!! Form::select('user_id', [$user->id => $user->name], null, [
                        'required','readonly',
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
                    <input type="text" hidden name="hot" id="hot" class="form-control" required value="1">
                </div>
                
            </div>
            <div class="form-group">
                {!! Form::submit('Add Class', ['class' => 'btn btn-info btn-profile btn-block']) !!}
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
            // Get the file input element
            var fileInput = $('#images');

            // Listen for changes in the file input
            fileInput.change(function() {
                // Clear the existing images
                $('#selectedImages').empty();

                // Loop through the selected files
                for (var i = 0; i < this.files.length; i++) {
                    var file = this.files[i];
                    var reader = new FileReader();

                    // Read the file and create an image element
                    reader.onload = function(e) {
                        var img = document.createElement('img');
                        img.src = e.target.result;
                        img.style.maxWidth = '100px'; // Set the image size as needed
                        img.style.margin = '5px'; // Add some margin between images

                        // Append the image to the selectedImages div
                        $('#selectedImages').append(img);
                    };

                    // Read the file as a data URL
                    reader.readAsDataURL(file);
                }
            });
        });
    </script>
@endsection

