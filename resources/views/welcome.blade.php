<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">

<div class="container mt-5">
    <h3 class="text-center mb-3">Computer Based Test</h3>
    <div class="row">
        <div class="col-md-7 col-lg-7">
            <div class="border">
                <div class="question bg-white p-3 border-bottom">
                    <div class="mcq">
                        <h4>Passage</h4>
                    </div>
                </div>
                <div class="question bg-white p-3 border-bottom">
                    <div class="text-justify">
                        <p class="pr-2" style="max-height: 46%; overflow-y: scroll">{!! $passage->passage !!}</p>
                    </div>
                </div>
            </div>
        </div>


        <div class="col-md-5 col-lg-5">
            <div class="border">
                <div class="question bg-white p-3 border-bottom">
                    <div class="d-flex flex-row justify-content-between align-items-center mcq">
                        <h4>Questions</h4><span>({{$questions_count}})</span>
                    </div>
                </div>
                <form method="post" action="{{route('mark')}}">
                    @csrf
                    <div style="max-height: 46%; overflow-y: scroll">


                        @foreach($questions as $index => $question)
                            <div class="question bg-white p-3 border-bottom">
                                <div class="d-flex flex-row align-items-center question-title">
                                    <h3 class="text-danger">{{$index +1}}.</h3>
                                    <h5 class="mt-1 ml-2">{{$question->question}}</h5>
                                </div>

                                @foreach($question->options as $option)
                                    <div class="ans ml-2">
                                        <label class="radio"> <input type="radio" name="question[]answer[]" value="{{$option->is_answer}}"> <span>{{$option->option}}</span>
                                        </label>
                                    </div>
                                @endforeach

                            </div>
                        @endforeach
                    </div>
                    <div class="d-flex flex-row justify-content-between align-items-center p-3 bg-white">
    {{--                    <button class="btn btn-primary d-flex align-items-center btn-danger" type="button">--}}
    {{--                        <i class="fa fa-angle-left mt-1 mr-1"></i>&nbsp;previous--}}
    {{--                    </button>--}}

                        <button class="btn btn-primary border-success align-items-center btn-success" type="button">
                            Submit<i class="fa fa-angle-right ml-2"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
