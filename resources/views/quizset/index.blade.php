@extends('admin.layouts.main')

@section('content')
    <div class="card card-hover shadow mb-4">
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h4 class="m-0 font-weight-bold text-info">Quiz List</h4>
            <div class="">
                <a class="btn btn-sm btn-info" href="{{ url('quizset/create') }}">
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
                        <th colspan="12" class="tablebtn">
                        </th>
                    </tr>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Title</th>
                        <th>Quizzes</th>
                        <th>User</th>
                        <th>Category</th>
                        <th>Subcategory</th>
                        <th>Topic</th>
                        <th>Start</th>
                        <th>End</th>
                        <th>Active</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Title</th>
                        <th>Quizzes</th>
                        <th>User</th>
                        <th>Category</th>
                        <th>Subcategory</th>
                        <th>Topic</th>
                        <th>Start</th>
                        <th>End</th>
                        <th>Active</th>
                        <th>Action</th>
                    </tr>
                </tfoot>
                <tbody>
                    @foreach ($quizset as $qset)
                        <tr>
                            <td>{{ $qset->id }}</td>
                            <td>{{ $qset->name }}</td>
                            <td>{{ $qset->title }}</td>
                            <td>{{ $qset->quizzes }}</td>
                            <td>{{ $qset->user->name }}</td>
                            <td>{{ $qset->category->name }}</td>
                            <td>{{ $qset->subcategory->name ?? 'Null' }}</td>
                            <td>{{ $qset->topic->name ?? 'Null' }}</td>
                            <td>{{ $qset->stime ?? 'Null' }}</td>
                            <td>{{ $qset->entime ?? 'Null' }}</td>
                            <td>{{ $qset->active }}</td>
                            <td class="d-flex skip justify-content-center">
                                {!! Form::open(['method' => 'delete', 'route' => ['quizset.destroy', $qset->id], 'id' => 'deleteform']) !!}
                                <a href="javascript:void(0)" class="btn btn-danger btn-circle btn-sm" title="Delete"
                                    onclick="event.preventDefault();if (!confirm('Are you sure?')) return; document.getElementById('deleteform').submit();">
                                    <i class="fa-solid fa-trash-can"></i>
                                </a>
                                {!! Form::close() !!}
                                &nbsp;
                                <a href="{{ url('quizset/' . $qset->id . '/edit') }}" class="btn btn-info btn-circle btn-sm"
                                    title="Edit">
                                    <i class="fas fa-edit"></i>
                                </a>

                                &nbsp;
                                <a href="{{ url('quizset/' . $qset->id) }}" class="btn btn-info btn-circle btn-sm"
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
    </div>
@endsection
