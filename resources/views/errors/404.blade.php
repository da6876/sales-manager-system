@extends('layout.appmain')
@section('title',"- Error 404")
@section('main')

    <section class="section dashboard">
        <div class="row">
            <div class="card">
                <div class="card-body" id="addFrom">
                    <section
                        class="section error-404 min-vh-100 d-flex flex-column align-items-center justify-content-center">
                        <h1>404</h1>
                        <h2>The page you are looking for doesn't exist.</h2>
                        <a class="btn" href="{{url('/')}}">Back to home</a>
                        <img src="assets/img/not-found.svg" class="img-fluid py-5" width="200px" alt="Page Not Found">

                    </section>
                </div>
            </div>
        </div>
    </section>

@endsection

