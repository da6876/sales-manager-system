@extends('layout.appmain')
@section('title', '- New Brand Name')

@section('main')

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Side Menu</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item">Product Setup</li>
                    <li class="breadcrumb-item active">Brand Name</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->

        <section class="section dashboard">
            <div class="row">
                <div class="card">
                    <div class="card-body" id="addFrom">
                        <div class="row">
                            <div class="col-md-10">
                                <h5 class="card-title">Add Pro. Category</h5>
                            </div>
                            <div class="col-md-2 mt-3 ">
                                <a href="{{route('ProCategory.index')}}" type="button" class="btn btn-outline-info btn-sm text-right"> Back <i class="bi bi-arrow-left-short"></i></a>
                            </div>
                        </div>

                        <!-- Multi Columns Form -->
                        <form class="row g-3" id="myForm">@csrf
                            <div class="col-md-6">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" id="name" name="name">
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="status" class="form-label">Status</label>
                                <select id="status" class="form-select" name="status">
                                    <option selected value="">Select Status</option>
                                    <option value="A">Active</option>
                                    <option value="I">InActive</option>
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="text-center">
                                <button type="button" onclick="addData()" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-secondary">Reset</button>
                            </div>
                        </form>
                        <!-- End Multi Columns Form -->

                    </div>
                </div>
            </div>
        </section>

    </main>
    <!-- End #main -->
@endsection
@section('script')
    <script>
        function addData() {
            url = "{{ url('ProCategory') }}";
            $.ajax({
                url: url,
                type: "POST",
                data: new FormData($("#addFrom form")[0]),
                contentType: false,
                processData: false,
                success: function (data) {
                    var dataResult = JSON.parse(data);
                    if (dataResult.statusCode == 200) {
                        swal("Success", dataResult.statusMsg);
                        $('#addFrom form')[0].reset();
                    }else if (dataResult.statusCode == 204) {
                        showErrors(dataResult.errors);
                    }else{
                        swal({
                            title: "Oops",
                            text: dataResult.statusMsg,
                            icon: "error",
                            timer: '1500'
                        });

                    }
                }, error: function (data) {
                    console.log(data);
                    swal({
                        title: "Oops",
                        text: "Error occured",
                        icon: "error",
                        timer: '1500'
                    });
                }
            });
            return false;
        };
    </script>

@endsection
