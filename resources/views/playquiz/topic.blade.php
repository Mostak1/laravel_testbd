@extends('users.layouts.main')
{{-- @section('sidebar')
    <!-- sidebar as user role -->
    @if (Auth::check() && Auth::user()->role == '1')
        @include('dashboard.sidebar')
    @elseif (Auth::check() &&  Auth::user()->role == '2')
        @include('inc.admin.trsidebar')
    @else
        @include('inc.admin.stsidebar')
    @endif
@stop --}}
@section('style')
    <style>
        label.box {
            display: flex;
            margin-top: 10px;
            padding: 10px 12px;
            border-radius: 5px;
            cursor: pointer;
            border: 1px solid #ddd
        }

        .one:checked~label.first,
        .two:checked~label.second,
        .three:checked~label.third,
        .four:checked~label.forth,
        .five:checked~label.fifth,
        .six:checked~label.sixth,
        .seven:checked~label.seveth,
        .eight:checked~label.eighth {
            border-color: #00FFFF
        }

        .one:checked~label.first .circle,
        .two:checked~label.second .circle,
        .three:checked~label.third .circle,
        .four:checked~label.forth .circle,
        .five:checked~label.fifth .circle,
        .six:checked~label.sixth .circle,
        .seven:checked~label.seveth .circle,
        .eight:checked~label.eighth .circle {
            border: 6px solid #00FFFF;
            background-color: #fff
        }

        label.box:hover {
            background: #FFA500
        }

        .bggreen {
            background: green;
        }

        label.box .course {
            display: flex;
            align-items: center;
            width: 100%
        }

        label.box .circle {
            height: 22px;
            width: 22px;
            border-radius: 50%;
            margin-right: 15px;
            border: 2px solid #ddd;
            display: inline-block
        }

        input[type="radio"] {
            display: none
        }

        .btn.btn-primary {
            border-radius: 25px;
            margin-top: 20px
        }

        @media(max-width: 450px) {
            .subject {
                font-size: 12px
            }
        }
    </style>
@endsection

@section('content')
    <div class="container afterNav">

        <div class="card card-hover shadow mb-4">
            <div class="card-header py-3 d-flex justify-content-between">
                <h6 class="fs-2 font-weight-bold text-center text-info">
                    @if ($topic)
                        Quiz Of {{ $topic->name }}
                    @endif
                </h6>

            </div>

            <div class="card-body">
                <section>
                    @auth




                    @endauth
                    <div id="Showquiz" class="card  mb-1">
                        <div class="card-header py-3 d-flex justify-content-between">
                            {{-- <span class="btn btn-info">Refresh</span> --}}
                            {{-- <span class="btn btn-info" id="showQuizBtn">Refresh</span> --}}

                        </div>
                    </div>
                </section>

                <div class="container mb-1">
                    <div class="">Time Remaining:<span id="countdown"></span></div>
                    <div class="row">
                        <form action="{{ url('resultview') }}" method="post">
                            @csrf
                            <div class="col-12" id="quizcontainer">
                                <input type="number" hidden name="topic" id="topic" value="{{ $topic->id }}">
                                <ol>
                                    @foreach ($quizzes as $quiz)
                                        <li class='fw-bold border rounded py-2 ps-2'>{{ $quiz->question }}</li>

                                        <div>
                                            <div class='quizcontainer'>
                                                <div class='col-12 mb-2'>
                                                    <input type='radio' name="box{{ $quiz->id }}" value="op1"
                                                        id="one{{ $quiz->id }}" class='one'>
                                                    <label for='one{{ $quiz->id }}' class='box first'>
                                                        <div class='course op1'><span class='circle'></span><span
                                                                class='subject'> {{ $quiz->op1 }}</span></div>
                                                    </label>
                                                    <input type='radio' name="box{{ $quiz->id }}" value="op2"
                                                        id="two{{ $quiz->id }}" class='two'>
                                                    <label for='two{{ $quiz->id }}' class='box second'>
                                                        <div class='course op2'><span class='circle'></span><span
                                                                class='subject'> {{ $quiz->op2 }}</span></div>
                                                    </label>
                                                    <input type='radio' name="box{{ $quiz->id }}" value="op3"
                                                        id="three{{ $quiz->id }}" class='three'>
                                                    <label for='three{{ $quiz->id }}' class='box third'>
                                                        <div class='course op3'><span class='circle'></span><span
                                                                class='subject'>{{ $quiz->op3 }}</span></div>
                                                    </label>
                                                    <input type='radio' name="box{{ $quiz->id }}" value="op4"
                                                        id="four{{ $quiz->id }}" class='four'>
                                                    <label for='four{{ $quiz->id }}' class='box forth'>
                                                        <div class='course op4'><span class='circle'></span><span
                                                                class='subject'> {{ $quiz->op4 }}</span></div>
                                                    </label>
                                                </div>
                                            </div>
                                    @endforeach
                                </ol>
                            </div>

                            <hr>
                            <div class="d-grid gap-2">
                                <button type="submit" class="btn btn-sm btn-info text-center mb-2" id="submit">Submit
                                    Quiz
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
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
            // alert('Hi Mostak')
            // answer btn toggle
            $(".ansshow").hide();
            $(document).on("click", '.ansbtn', function() {
                $t = $(this);
                $answer = $t.data('answer');
                $t.next('span').toggle();
                $t.closest('.quizcontainer').find('.' + $answer).toggleClass('bg-warning rounded');
            });


            function render_quiz_questions(quizzes) {
                let q = "";
                quizzes.forEach(quiz => {
                    let html = '';
                    let name = quiz.id;
                    if (quiz.qimage !== "" && quiz.qimage !== null) {
                        html += "<img src='{{ url('/') }}/storage/quizimages/" + quiz.qimage +
                            "' class='img-fluid'/>";
                    }

                    html +=

                        `<li class='fw-bold border rounded py-2 ps-2'>${quiz.question}</li><div>
                            <div class='quizcontainer'>
                            <div class='col-12 mb-2'>
                            <input type='radio' name="box${quiz.id}" value="op1" id="one${quiz.id}" class='one'>
                            <label for='one${quiz.id}' class='box first'><div class='course op1'><span class='circle'></span><span class='subject'>${quiz.op1}</span></div></label>
                            <input type='radio' name="box${quiz.id}" value="op2" id="two${quiz.id}" class='two'>
                            <label for='two${quiz.id}' class='box second'><div class='course op2'><span class='circle'></span><span class='subject'>${quiz.op2}</span></div></label>
                            <input type='radio' name="box${quiz.id}" value="op3" id="three${quiz.id}" class='three'>
                            <label for='three${quiz.id}' class='box third'><div class='course op3'><span class='circle'></span><span class='subject'>${quiz.op3}</span></div></label>
                            <input type='radio' name="box${quiz.id}" value="op4" id="four${quiz.id}" class='four'>
                            <label for='four${quiz.id}' class='box forth'><div class='course op4'><span class='circle'></span><span class='subject'>${quiz.op4}</span></div></label>
                            </div>
                        </div>
                        <div class='form-group row'>
                            <div class='col-sm-12 mb-3 mb-sm-0 d-flex justify-content-between align-self-center'>
                            <div>
                            <span id='ansbtn' data-answer='${quiz.ans}' class='ansbtn  my-2 fw-bold'></span>
                            <span class='ansshow btn btn-sm btn-success ms-2 my-2 px-4 fw-bold'>${quiz.ans}</span>
                            </div>
                            <div><span class='btn btn-sm btn-info my-2 px-4 fw-bold'>Clean</span></div></div></div>
                        </div>`;

                    q += html;

                });
                // $("#quizcontainer").html(q);
                $(".ansshow").hide();
            }
            // mostak

            //showQuizBtn click start
            $("#showQuizBtn").click(function() {
                $.ajax({
                        method: "POST",
                        url: "{{ url('dynamicquiz2') }}",
                        data: {
                            cid: $("#category_id").val(),
                            scid: $("#subcategory_id").val(),
                            tid: $("#topic_id").val(),
                            type: $("#type").val()
                        },
                        dataType: "json",
                        success: function(response) {
                            render_quiz_questions(response);
                        }
                    })
                    .done(function(data) {
                        if (data.length != 0) {
                            //show the quiz
                        } else {
                            console.log("no quiz in the databaes");
                        }
                    });
            });
            $("#showQuizBtn").trigger('click');
            //showQuizBtn click end
            // ==============================================
            $(document).on("click", ".addToQuizsetBtn", function() {
                // alert(5);
                let id = $(this).data('id');
                let ans = $(this).data('ans');
                let html =
                    `<li class="list-group-item d-flex justify-content-between" data-selected=${id}>${id}. <span class="d-none">${ans}</span> <span><i class="removeqbtn btn btn-sm text-danger fa-solid fa-rectangle-xmark"></i></span></li>`;
                $("#selectedQuizContainer").append(html);

            });

        });
        // Set the time (in seconds) for the quiz timer
        const totalSeconds = 600; // 10 minutes

        let secondsRemaining = totalSeconds;

        // Function to update the timer display
        function updateTimerDisplay() {
            const minutes = Math.floor(secondsRemaining / 60);
            const seconds = secondsRemaining % 60;
            $("#countdown").text(`${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`);
        }

        // Function to handle the timer countdown
        function countdown() {
            updateTimerDisplay();

            if (secondsRemaining > 0) {
                secondsRemaining--;
                setTimeout(countdown, 1000); // Update timer every second
            } else {
                // Time's up, perform any action you want when the timer reaches 0
                alert("Time's up! Your quiz will be submitted.");
                $("#submit").trigger("click");
                // You can also submit the quiz automatically, etc.
            }
        }

        $(document).ready(function() {
            countdown();
        });
    </script>
@endsection
