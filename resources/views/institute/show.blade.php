@extends('admin.layouts.main')

@section('content')
    <div class="card card-hover shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
            <h6 class="m-0 font-weight-bold text-info">Institute Details</h6>
            <a href="{{ url('institute') }}" class="btn btn-info btn-circle btn-sm" title="Back to Institute">
                <i class="fas fa-arrow-left"></i>
            </a>
        </div>
        <div class="card-body">
            <table class="table table-responsive">
                {{-- <tr class="table-bordered">
                <th>Id:</th>
                <td>{{ $topic->id }}</td>
            </tr> --}}
                <tr class="table-bordered">
                    <th>Name:</th>
                    <td>{{ $ins->name }}</td>
                </tr>
                <tr class="table-bordered">
                    <th>Board:</th>
                    <td>{{ $ins->board->name }}</td>
                </tr>
                <tr class="table-bordered">
                    <th>District:</th>
                    <td>{{ $ins->district->name }}</td>
                </tr>
                <tr class="table-bordered">
                    <th>Thana:</th>
                    <td>{{ $ins->thana->name }}</td>
                </tr>
                
            </table>
        </div>
    </div>
@endsection
