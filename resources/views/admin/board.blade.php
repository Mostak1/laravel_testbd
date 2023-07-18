@extends('admin.layouts.main')
@section('content')
    <h1 class="mt-4">Boards Management</h1>

    <hr>
    <div class="d-flex justify-content-end">
        <span>
            <i class="bi bi-plus-square" id="showFormBtn"></i>
        </span>
    </div>
    <div class="form-container">
        <?= csrf_field() ?>
        <input type="hidden" id="id" value="">
        <div class="form-group">
            <label class="form-label">Board</label>
            <input class="form-control" type="text" name="name" id="name">
        </div>
        <div class="form-group">
            <label class="form-label">Website</label>
            <input class="form-control" type="text" name="url" id="url">
        </div>


        <div class="form-group my-2">
            <input type="button" class="btn btn-outline-primary" value="ADD" id="addBtn">
            <input type="button" class="btn btn-outline-danger" value="Clear" id="clearBtn">
        </div>

        <br>

    </div>
    <table id="myTable" class="table table-striped table-hover table-sm">
        <thead>
            <tr>
                <th>ID</th>
                <th>Board</th>
                <th>Website</th>
            </tr>
        </thead>
        <tbody id="maindata">
            @foreach ($tableData as $row)
                <tr>
                    <td>{{ $row->id }}</td>
                    <td>{{ $row->name }}</td>

                    <td>{{ $row->url }}</td>
                    <!-- Add more columns if needed -->
                </tr>
            @endforeach
        </tbody>

    </table>
@endsection
@section('script')
@endsection
