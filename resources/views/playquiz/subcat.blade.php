@extends('users.layouts.main')
{{-- main content add here --}}
@section('content')

    <!-- Facilities Start -->
    <div class="container afterNav pt-5">
        <div class="container pb-3">
            <div class="row">
                @if ($scats)
                    {{-- {{dd($scs);}} --}}
                    <h1 class="text-center "> {{ $scats->name }}</h1>
                    <div class="col-md-3 pb-1">
                        <div class="card" style="">
                            <div class="card-header text-center">
                                Topics of {{ $scats->name }}
                            </div>
                            <ul class="list-group list-group-flush">
                                @foreach ($scats->topics as $tps)
                                    <li data-tid="{{ $tps->id }}" class="list-group-item topicd btn text-start">{{ $tps->name }}
                                        (<a href="{{ url('playquiz/topic/' . $tps->id) }}">Exam</a>)</li>
                                @endforeach
                            </ul>
                        </div>
                        @foreach ($scats->topics as $tps)
                            {{-- <a href="{{ url('playquiz/topic/' . $tps->id) }}">{{ $tps->name }}</a> --}}
                        @endforeach

                    </div>
                @endif
                <div class="col-md-9">
                    <div class="card">
                        <div id="" class="paginationContainer pagination justify-content-center mt-3"></div>
                        <div class="card-body" id="detailcontainer">
                            {{ $scats->description }}


                        </div>
                        <div id="" class="paginationContainer pagination justify-content-center"></div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Facilities End -->
@endsection
@section('script')
    <script type="text/javascript">
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(document).ready(function() {
            // alert('Hi Mostak')

            function topic_detail(tdetail, currentPage = 1) {
                const itemsPerPage = 2; // Number of items per page
                const startIndex = (currentPage - 1) * itemsPerPage;
                const endIndex = startIndex + itemsPerPage;

                let q = "";
                tdetail.slice(startIndex, endIndex).forEach(td => {
                    let html = '';

                    html +=
                        `<div class="card">
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col" class="table-success">${td.question}</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>${td.answer}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>`;

                    q += html;
                });
                $("#detailcontainer").html(q);

                // Update pagination controls
                const totalPages = Math.ceil(tdetail.length / itemsPerPage);
                let paginationHTML = '';
                for (let page = 1; page <= totalPages; page++) {
                    paginationHTML += `<li class="page-item"><a class="page-link" href="#">${page}</a></li>`;
                }
                $(".paginationContainer").html(`<ul class="pagination">${paginationHTML}</ul>`);

                // Add click event handler for pagination links
                $(".page-link").click(function() {
                    const selectedPage = parseInt($(this).text());
                    topic_detail(tdetail, selectedPage);
                });
            }

            $(".topicd").click(function() {
                $.ajax({
                    method: "POST",
                    url: "{{ url('topic_detail') }}",
                    data: {
                        tid: $(this).data('tid'),
                    },
                    dataType: "json",
                    success: function(response) {
                        topic_detail(response);
                    }
                });
            });

        });
    </script>
@endsection
