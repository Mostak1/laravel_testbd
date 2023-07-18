@extends('admin.layouts.main')

@section('content')
    <h1 class="mt-4">Users Management</h1>

    <hr>
    <div class="d-flex justify-content-end">
        <span>
            <i class="bi bi-plus-square" id="showFormBtn"></i>
        </span>
    </div>
    <div class="form-container">
        @csrf
        <input type="hidden" id="id" value="">
        <div class="form-group">
            <label class="form-label">Name</label>
            <input class="form-control" type="text" name="name" id="name">
        </div>
        <div class="form-group">
            <label class="form-label">Email</label>
            <input class="form-control" type="email" name="email" id="email">
        </div>
        <div class="form-group">
            <label class="form-label">Mobile</label>
            <input class="form-control" type="text" name="mobile" id="mobile">
        </div>
        <div class="form-group">
            <label class="form-label">Role</label>
            <input class="form-control" type="text" name="role" id="role">
        </div>

        <div class="form-group my-2">
            <input type="button" class="btn btn-outline-primary" value="ADD" id="addBtn">
            <input type="button" class="btn btn-outline-danger" value="Clear" id="clearBtn">
        </div>

        <br>

    </div>
    <table class="table table-striped table-hover table-sm">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Role</th>

            </tr>
        </thead>
        <tbody id="maindata">
            @foreach ($tableData as $row)
                <tr>
                    <td>{{ $row->id }}</td>
                    <td>{{ $row->name }}</td>
                    <td>{{ $row->email }}</td>
                    <td>{{ $row->role }}</td>
                    <!-- Add more columns if needed -->
                </tr>
            @endforeach
        </tbody>

    </table>
    <img src="" height="200px" alt="">
@endsection

@section('script')
@endsection
