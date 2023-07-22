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
        <form action="{{ route('board.store') }}" method="post">

            @csrf
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
                <input type="submit" class="btn btn-outline-primary" value="ADD" id="addBtn">
                <input type="button" class="btn btn-outline-danger" value="Clear" id="clearBtn">
            </div>
        </form>
        <br>

    </div>
    <table id="myTable" class="table table-striped table-hover table-sm">
        <thead>
            <tr>
                <th colspan="5" class="tablebtn">
                </th>
            </tr>
            <tr>
                <th>ID</th>
                <th>Board</th>
                <th>Website</th>
                <th>Operations</th>
            </tr>
        </thead>
        <tbody id="maindata">
            @foreach ($board as $row)
                <tr>
                    <td>{{ $row->id }}</td>
                    <td>{{ $row->name }}</td>
                    <td>{{ $row->url }}</td>

                    <td>
                        <form action="{{ route('board.destroy', $row->id) }}" method="post">
                            @csrf
                            @method('delete')
                            <input type="submit" onsubmit="return confirm('Are You Sure to Delete?')"
                                class="btn btn-outline-danger" name="delete" value="Delete">
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
        {{ $board->links() }}
    </table>
@endsection
@section('script')
    <script>
        $(document).ready(function() {

            var table = $('#myTable').DataTable();
            new $.fn.dataTable.Buttons(table, {
                buttons: [
                    'copy', 'excel', 'pdf', 'print'
                ]
            });
            table.buttons().container().appendTo($('.tablebtn', table.table().container()));
            $('.tablebtn .dt-buttons').removeClass('flex-wrap');
            $('.tablebtn .btn').removeClass('btn-secondary').addClass('btn-outline-primary');

        });
    </script>
@endsection
