@extends('users.layouts.main')



@section('content')
    <div class="container afterNav px-0">
        <h2 class="mt-1 ms-2">Hello, {{ Auth::user()->name ?? 'Guest' }}</h2>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item ms-2 active">Welcome to Leaderboard</li>
        </ol>
        <div class="row my-5">

            <main class="c-main" id="app">

                <div class="container">
                    <div class="content">
                        <div class="row ">
                            <div class="col-12 grid-margin">
                                <div class="card">
                                    <div class="card-header py-3 mb-1 d-flex justify-content-between">
                                        <h3 class="m-0 font-weight-bold text-info">Participants' Positions</h3>
                                        <a href="{{ url('quiz/qz/qshow')}}" class="btn btn-info btn-sm"
                                            title="Back to Quizset">
                                            <i class="fas fa-arrow-left"></i>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                    
                                        <div class="table-responsive" >
                                         <div class="text-center text-danger fs-2">Top 10 Participants' Positions</div>
                                            <table class="table dataTable" id="">
                                                <thead>
                                                    <tr>
                                                        <tr>
                                                            <th colspan="6" class="tablebtn">
                                                            </th>
                                                        </tr>
                                                        <th>User</th>
                                                        <th>Quizset name</th>
                                                        <th>Marks</th>
                                                        <th>Quizzes</th>
                                                        <th>By</th>
                                                        <th>Time</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                        @foreach ($answers as $ans)
                                                        <tr>
                                                            {{-- <td>{{ $ans->id }}.</td> --}}
                                                            <td>
                                                                {{-- <img src="assets/images/faces/face1.jpg" alt="image" /> --}}
                                                                <span class="pl-2">{{ $ans->user->name }}</span>
                                                            </td>
                                                            <td>
                                                                {{ $ans->topic->name  }}
                                                                
                                                            </td>
                                                            <td>{{ $ans->marks }}</td>
                                                            <td>{{ $ans->tquiz }}</td>
                                                            {{-- <td>{{ $ans->type}}</td> --}}
                                                            <td>{{ $ans->Quizset->user->name ?? 'Authority' }}</td>
                                                            <td>{{ $ans->created_at }}</td>
                                                            </td>
                                                        </tr>

                                                        @endforeach
                                                    </tbody>

                                            </table>
                                           
                                        </div>
                                        <div class="table-responsive" >
                                         <div class="text-center text-danger fs-2">{{Auth::user()->name ?? 'User' }} Marks</div>
                                            <table class="table dataTable" id="dataTable">
                                                <thead>
                                                    <tr>
                                                        <tr>
                                                            <th colspan="6" class="tablebtn">
                                                            </th>
                                                        </tr>
                                                        <th>User</th>
                                                        <th>Quizset name</th>
                                                        <th>Marks</th>
                                                        <th>Quizzes</th>
                                                        <th>By</th>
                                                        <th>Time</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                        @foreach ($anslim as $ans)
                                                        <tr>
                                                            {{-- <td>{{ $ans->id }}.</td> --}}
                                                            <td>
                                                                {{-- <img src="assets/images/faces/face1.jpg" alt="image" /> --}}
                                                                <span class="pl-2">{{ $ans->user->name }}</span>
                                                            </td>
                                                            <td>{{ $ans->topic->name }}
                                                            </td>
                                                            <td>{{ $ans->marks }}</td>
                                                            <td>{{ $ans->tquiz }}</td>
                                                            {{-- <td>{{ $ans->type}}</td> --}}
                                                            <td>{{ $ans->Quizset->user->name ?? 'Authority' }}</td>
                                                            <td>{{ $ans->created_at }}</td>
                                                            </td>
                                                        </tr>

                                                        @endforeach
                                                    </tbody>

                                            </table>
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>


            </main>
        </div>
    </div>
@endsection



@section('script')

    <script type="text/javascript">
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $('.navbar-toggler-icon').trigger('click');
        $(document).ready(function() {

        });
    </script>
@endsection
