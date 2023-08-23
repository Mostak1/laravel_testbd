@extends('admin.layouts.main')
@section('content')
    <div class="card card-hover shadow mb-4">
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h4 class="m-0 font-weight-bold text-info">Question List</h4>
            <div class="">
                <a class="btn btn-sm btn-info" href="{{ url('question/create') }}">
                    <i class="fa-solid fa-plus"></i>
                    Add
                </a>
            </div>
        </div>
    </div>
    <!-- Card Body -->
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th colspan="5" class="tablebtn">
                        </th>
                    </tr>
                    <tr>
                        <th>#</th>
                        <th>Institute</th>
                        <th>Exam Name</th>
                        <th>Images</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>#</th>
                        <th>Institute</th>
                        <th>Exam Name</th>
                        <th>Images</th>
                        <th>Action</th>
                    </tr>
                </tfoot>
                <tbody>
                    @foreach ($questions as $question)
                        <tr>
                            <td>{{ $question->id }}</td>
                            <td>{{ $question->institute->name }}</td>
                            <td>{{ $question->exam_name }}</td>
                            <td>
                            @foreach ($question->question_images as $item)
                            <a href="{{asset('storage/uploads/'.$item->name)}}" data-lightbox="question-{{$question->id}}">
                                <img src="{{asset('storage/uploads/'.$item->name)}}" width="100px" alt="" loading="lazy">
                            </a>
                            @endforeach
                            </td>
                       
                            <td class="skip d-flex justify-content-center">

                                {{-- restore --}}
                                <form onsubmit="return confirm('Are you sure?')"
                                    action="{{ route('question.restore', $question->id) }}" method="post">
                                    @csrf
                                    
                                    <button type="submit"  class="btn btn-success btn-sm" name="delete"><i class="fa-regular fa-window-restore fa-beat"></i></button>
                                </form>
                                {{-- restore END --}}
                                {!! Form::open(['method' => 'delete', 'route' => ['question.destroy', $question->id], 'id' => 'deleteform']) !!}
                                <a href="javascript:void(0)" class="btn btn-danger  btn-sm" title="Delete"
                                    onclick="event.preventDefault();if (!confirm('Are you sure?')) return; document.getElementById('deleteform').submit();">
                                    <i class="fa-solid fa-trash-can"></i>
                                </a>
                                {!! Form::close() !!}
                                &nbsp;
                                <a href="{{ url('question/' . $question->id . '/edit') }}" class="btn btn-info  btn-sm"
                                    title="Edit">
                                    <i class="fas fa-edit"></i>
                                </a>
                                &nbsp;
                                <a href="{{ url('question/' . $question->id) }}" class="btn btn-info  btn-sm"
                                    title="View">
                                    <i class="fas fa-eye"></i>
                                </a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection

@section('script')
   
@endsection
