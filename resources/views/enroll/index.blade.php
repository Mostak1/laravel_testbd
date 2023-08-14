@extends('admin.layouts.main')
@section('content')
    <div class="card card-hover shadow mb-4">
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h4 class="m-0 font-weight-bold text-info">Enroll List</h4>
            <div class="">
                <a class="btn btn-sm btn-info" href="{{ url('enroll/create') }}">
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
                        <th colspan="8" class="tablebtn">
                        </th>
                    </tr>
                    <tr>
                       <th>#</th>
                        <th>Category Name</th>
                        <th>User Name</th>
                        <th>Tranjection Methode</th>
                        <th>Tranjection Id</th>
                        <th>Status</th>
                        <th>Expair Time</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>#</th>
                        <th>Category Name</th>
                        <th>User Name</th>
                        <th>Tranjection Methode</th>
                        <th>Tranjection Id</th>
                        <th>Status</th>
                        <th>Expair Time</th>
                        <th>Actions</th>
                    </tr>
                </tfoot>
                <tbody>
                    @foreach ($enroll as $en)
                        <tr>
                            <td>{{ $en->id }}</td>
                            <td>{{ $en->category->name }}</td>
                            <td>{{ $en->user->name }}</td>
                            <td>{{ $en->tj_methode }}</td>
                            <td>{{ $en->tj_id }}</td>
                            <td>{{ $en->status }}</td>
                            <td>{{ $en->expair_time }}</td>
                            <td class="skip d-flex justify-content-center">
                                {{-- onclick="event.preventDefault(); document.getElementById('submit-form').submit();" --}}
                                {!! Form::open(['method' => 'delete', 'route' => ['enroll.destroy', $en->id], 'id' => 'deleteform']) !!}
                                <a href="javascript:void(0)" class="btn btn-danger  btn-sm" title="Delete"
                                    onclick="event.preventDefault();if (!confirm('Are you sure?')) return; document.getElementById('deleteform').submit();">
                                    <i class="fa-solid fa-trash-can"></i>
                                </a>
                                {!! Form::close() !!}
                                &nbsp;
                                <a href="{{ url('enroll/' . $en->id . '/edit') }}"
                                    class="btn btn-info  btn-sm" title="Edit">
                                    <i class="fas fa-edit"></i>
                                </a>
                                &nbsp;
                                <a href="{{ url('enroll/' . $en->id) }}" class="btn btn-info  btn-sm"
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
    <script>
      
    </script>
@endsection
