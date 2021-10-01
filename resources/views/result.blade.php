<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">

<div class="container mt-5">
    <h3 class="text-center mb-3">Your Result</h3>
    <div class="row">

        <div class="col-md-12 col-lg-12">
            <div class="border">
                <div class="question bg-white p-3 border-bottom">
                    <div style="height:100%" class="d-flex flex-column justify-content-center align-items-center mcq">
                        <h4>Your result is ready</h4>

                        <p>
                            <span>You got {{$score}}/{{$count +1}}</span>
                        </p>

                        <a href="/" class="btn btn-info">Try Again</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
