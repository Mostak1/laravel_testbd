@extends('users.layouts.main')


@section('content')
    <div class="container">


        <div class="card card-hover afterNav shadow mb-4">

            <div class="card-header py-3 d-flex justify-content-between">
                <h3 class="m-0 font-weight-bold text-info">Quiz Result : {{ $result }}/{{ $total }}.</h3>
                <a href="{{ url('quiz/qz/qshow') }}" class="btn btn-info btn-sm" title="Back to Quizset">
                    <i class="fas fa-arrow-left"></i>
                </a>
            </div>
            <div class="card-body">

                <section>
                    <div class="container mb-1">

                        <div class="row">
                            <span class="d-none">{{ $i = 0 }}</span>
                            @foreach ($quizzes as $q)
                                <div class="quizcontainer">
                                    <div class="col-12">
                                        <h5>{{ $q->question }}</h5>
                                        <div>
                                            <input type="radio" name="radio" id="one1" class="one">
                                            <label for="one1" class="box first">
                                                <div class="course op1"> <span class="circle"></span> <span class="subject">
                                                        <p>
                                                            Your Answer : {{ $quizans[$i++] }}: 
                                                       
                                                        </p>
                                                    </span> </div>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div
                                            class="col-sm-12 mb-3 mb-sm-0 d-flex justify-content-between align-self-center">
                                            <div>
                                                <span id="ansbtn" data-answer="{{ $q->ans }}"
                                                    class="ansbtn btn btn-sm btn-info my-2 px-4 fw-bold">Correct
                                                    Answer</span>
                                                <span id="ansshow"
                                                    class="ansshow btn btn-sm btn-success ms-2 my-2 px-4 fw-bold">
                                                    @php
                                                        $qans = $q->ans
                                                    @endphp
                                                   {{ $q->ans }} : {{ $q->$qans }}</span>
                                            </div>
                                            <div> <span class="btn btn-sm btn-info my-2 px-4 fw-bold">Clean</span></div>
                                        </div>
                                    </div>
                                </div>

                                <hr>
                            @endforeach
                        </div>
                    </div>
                    <span type="button" id="savemark" class="btn btn-info d-none" data-bs-toggle="modal"
                        data-bs-target="#savemarks">

                    </span>
                    <!-- Modal -->
                    <div class="modal fade" id="savemarks" tabindex="-1" aria-labelledby="quizmodal" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header bg-primary">
                                    @if (Auth::check())
                                        <h4 class="modal-title text-center text-light" id="quizmodal">Would you like to save
                                            your
                                            Marks?</h4>
                                    @else
                                        <h4 class="modal-title text-center text-light" id="quizmodal">Congratulations!</h4>
                                    @endif
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>

                                <div class="modal-body">
                                    <h3 class="m-0 font-weight-bold text-info">You got <span
                                            id="marks">{{ $result }}</span> out of <span
                                            id="tquiz">{{ $total - 1 }}</span> </h3>
                                </div>

                                <form action="{{ url('/storeanswer') }}" method='post'>
                                    @csrf
                                    @method('post')
                                    <div class="">
                                        <input type="text" hidden name="topic" id="topic"
                                            value="{{ $topic }}">
                                        <input type="text" hidden name="marks" id="marks"
                                            value="{{ $result }}">
                                        <input type="text" hidden name="tquiz" id="tquiz"
                                            value="{{ $total - 1 }}">
                                        <input type="text" hidden name="type" id="type" value="rq">
                                    </div>
                                    <div class="modal-footer small">
                                        @if (Auth::check())
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">No</button>
                                            <button type="submit" class="btn btn-info">Yes</button>
                                        @endif
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    {{-- modal end --}}

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

            // alert(5)
            // $(".ansshow").hide();
            $(document).on("click", '.ansbtn', function() {

                $t = $(this);
                $answer = $t.data('answer');
                // console.log($answer);
                $t.next('span').toggle();
                $t.closest('.quizcontainer').find('.' + $answer).toggleClass('bg-warning rounded');
                // console.log($t.closest('.quizcontainer').find('.'+$answer));
            });

            setTimeout(function() {
                $('#savemark').trigger('click');
            }, 20);
        });
    </script>
@endsection
