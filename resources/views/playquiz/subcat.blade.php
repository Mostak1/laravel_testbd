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
                            @foreach ($scats->topics as $tps)
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">{{ $tps->name }} (<a href="{{ url('playquiz/topic/' . $tps->id) }}">Exam</a>)</li>

                                </ul>
                            @endforeach
                        </div>
                        @foreach ($scats->topics as $tps)
                            <a href="{{ url('playquiz/topic/' . $tps->id) }}">{{ $tps->name }}</a>
                        @endforeach

                    </div>
                @endif
                <div class="col-md-9">
                    <div class="card">
                        <div class="card-body">
                          {{$scats->description}}
                        </div>
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
            $("#quizcontainer").html(q);
            $(".ansshow").hide();
        }
        // mostak

        //showQuizBtn click start
        $("#showQuizBtn").click(function() {
            $.ajax({
                    method: "POST",
                    url: "{{ url('dynamicquiz') }}",
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
