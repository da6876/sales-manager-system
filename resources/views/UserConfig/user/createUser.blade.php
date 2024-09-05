@extends('layout.appmain')
@section('title', '- New Sidebar Nav')

@section('main')

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Add User Info</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item">User Config</li>
                    <li class="breadcrumb-item active">Side Menu</li>
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
                                <h5 class="card-title">Add User Info</h5>
                            </div>
                            <div class="col-md-2 mt-3 ">
                                <a href="{{route('User.index')}}" type="button" class="btn btn-outline-info btn-sm text-right"> Back <i class="bi bi-arrow-left-short"></i></a>
                            </div>
                        </div>

                        <!-- Multi Columns Form -->
                        <form class="row g-3">@csrf

                            <div class="col-md-6">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" id="name" name="name">
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" name="email">
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="phone" class="form-label">Phone</label>
                                <input type="number" class="form-control" id="phone" name="phone">
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" name="password">
                                <div class="invalid-feedback"></div>
                            </div>

                            <div class="col-md-4">
                                <label for="branch_id" class="form-label">Branch Id</label>
                                <select class="form-control" id="branch_id" name="branch_id">
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-4">
                                <label for="status" class="form-label">Roles</label>
                                <select class="form-control" id="roles" name="roles">
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-4">
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
        $.ajax({
            url: "{{ url('GetRoles') }}",
            type: "GET",
            dataType: "JSON",
            success: function (data) {
                console.log(data);
                if (data.statusCode && data.statusCode === 400) {
                    swal({
                        text: data.statusMsg || "Roles Not Found",
                        timer: '1500'
                    });
                } else {
                    var selectRoles = $('#roles');
                    selectRoles.empty();
                    selectRoles.append('<option value="">Select Role</option>'); // Add default option
                    data.forEach(function(role) {
                        selectRoles.append('<option value="' + role.name + '">' + role.name + '</option>');
                    });
                }
            },
            error: function () {
                // Handle AJAX request error
                swal({
                    text: "Error occurred while fetching roles",
                    timer: '1500'
                });
            }
        });

        $.ajax({
            url: "{{ url('GetBranch') }}",
            type: "GET",
            dataType: "JSON",
            success: function (data) {
                console.log(data);
                if (data.statusCode && data.statusCode === 400) {
                    swal({
                        text: data.statusMsg || "Roles Not Found",
                        timer: '1500'
                    });
                } else {
                    var selectRoles = $('#branch_id');
                    selectRoles.empty();
                    selectRoles.append('<option value="">Select Branch</option>'); // Add default option
                    data.forEach(function(role) {
                        selectRoles.append('<option value="' + role.id + '">' + role.name + '</option>');
                    });
                }
            },
            error: function () {
                // Handle AJAX request error
                swal({
                    text: "Error occurred while fetching roles",
                    timer: '1500'
                });
            }
        });

        function addData() {
            url = "{{ url('User') }}";
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
