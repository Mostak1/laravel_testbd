{{--
     <tr>
    <th colspan="5" class="tablebtn">
    </th>
</tr>
var table = $('#myTable').DataTable({
    // Specify the number of columns and their order here
    columns: [
        null, // ID column (first column in the table)
        null, // Board column
        null, // District column
        null, // District (Bangla) column
        null, // Latitude column
        {
            orderable: false
        }, // Operations column (disable sorting for the operations column)
        {
            orderable: false
        }, // Operations column (disable sorting for the operations column)
    ],
    // Optional: Customize other DataTables options as needed
}); 
--}}
@section('script')
    <script>
        $(document).ready(function() {

            var table = $('#dataTable').DataTable();

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
