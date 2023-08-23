@extends('users.layouts.main')
@section('style')
    <!-- Include SweetAlert2 CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.7/dist/sweetalert2.min.css">

    <!-- Include SweetAlert2 JS -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.7/dist/sweetalert2.min.js"></script>
@endsection
@section('content')
    {{-- @include('layouts.flash') --}}
    <div class="container afterNav">
        <div class="card my-5">
            <div class="card-body my-5">
                <table class="table m-5 w-50  table-bordered">
                    <thead>

                        <tr>
                            <th colspan="2" class="text-center"> Payment Information: {{ $success }}
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>Tranjection Ammount:</th>
                            <td>{{ $amount }} {{ $currency }}</td>
                        </tr>
                        <tr>
                            <th>Tranjection ID:</th>
                            <td>{{ $tran_id }}</td>
                        </tr>


                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
    </script>
    <script>
        // Check if the value of $success is truthy (not null, undefined, false, 0, etc.)
        @if ($success)
            // Trigger SweetAlert with the provided payment information
            Swal.fire({
                icon: 'success',
                title: ' {{ $success }}',
                html: `
                    <table class="table">
                        <tbody>
                            <tr>
                                <th>Transaction Amount:</th>
                                <td>{{ $amount }} {{ $currency }}</td>
                            </tr>
                            <tr>
                                <th>Transaction ID:</th>
                                <td>{{ $tran_id }}</td>
                            </tr>
                        </tbody>
                    </table>
                `,
                showCancelButton: false,
                showConfirmButton: false,

                footer: '<a class="btn btn-outline-primary" href="{{ url('') }}">Close</a>'
            });
        @endif
    </script>
@endsection
