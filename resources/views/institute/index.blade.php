@extends('admin.layouts.main')
@section('content')
    <div class="card card-hover shadow mb-4">
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h4 class="m-0 font-weight-bold text-info">Institute List</h4>
            <div class="">
                <a class="btn btn-sm btn-info" href="{{ url('institute/create') }}">
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
                        <th colspan="6" class="tablebtn">
                        </th>
                    </tr>
                    <tr>
                        <th>#</th>
                        <th>Board</th>
                        <th>District</th>
                        <th>Thana</th>
                        <th>Institute Name</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>#</th>
                        <th>Board</th>
                        <th>District</th>
                        <th>Thana</th>
                        <th>Institute Name</th>
                        <th>Action</th>
                    </tr>
                </tfoot>
                <tbody>
                    @foreach ($institute as $item)
                        <tr>
                            <td>{{ $item->id }}</td>
                            <td>{{ $item->board->name ?? 'Unknown' }}</td>
                            <td>{{ $item->district->name ?? 'Unknown' }}</td>
                            <td>{{ $item->thana->name ?? 'Unknown' }}</td>
                            <td>{{ $item->name ?? 'Unknown' }}</td>
                          
                            <td class="skip d-flex justify-content-center">

                                {{-- restore --}}
                                <form onsubmit="return confirm('Are you sure?')"
                                    action="{{ route('user.restore', $item->id) }}" method="post">
                                    @csrf
                                    
                                    <button type="submit"  class="btn btn-success btn-sm" name="delete"><i class="fa-regular fa-window-restore fa-beat"></i></button>
                                </form>
                                {{-- restore END --}}
                                {!! Form::open(['method' => 'delete', 'route' => ['institute.destroy', $item->id], 'id' => 'deleteform']) !!}
                                <a href="javascript:void(0)" class="btn btn-danger  btn-sm" title="Delete"
                                    onclick="event.preventDefault();if (!confirm('Are you sure?')) return; document.getElementById('deleteform').submit();">
                                    <i class="fa-solid fa-trash-can"></i>
                                </a>
                                {!! Form::close() !!}
                                &nbsp;
                                <a href="{{ url('institute/' . $item->id . '/edit') }}" class="btn btn-info  btn-sm"
                                    title="Edit">
                                    <i class="fas fa-edit"></i>
                                </a>
                                &nbsp;
                                <a href="{{ url('institute/' . $item->id) }}" class="btn btn-info  btn-sm"
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
