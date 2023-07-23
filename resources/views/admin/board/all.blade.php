@extends('admin.layouts.main')
@section('content')
    <h1 class="mt-4">Boards Management</h1>

    <hr>
    <div class="d-flex justify-content-end">
        <span>

        </span>
    </div>
    <div class="">
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
            <i class="bi bi-plus-square" id="showFormBtn">Add</i>
        </button>

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

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Add Board</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="{{ route('board.store') }}" method="post">
                    @csrf
                    @include('admin.board.form')
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
