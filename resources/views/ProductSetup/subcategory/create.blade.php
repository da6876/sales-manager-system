@extends('layout.appmain')
@section('title', '- New Pro. Sub Category')

@section('main')

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Add Pro. Category</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item">Product Setup</li>
                    <li class="breadcrumb-item active">Add Pro. Sub Category</li>
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
                                <h5 class="card-title">Add Pro. Sub Category</h5>
                            </div>
                            <div class="col-md-2 mt-3 ">
                                <a href="{{route('ProSubCategory.index')}}" type="button" class="btn btn-outline-info btn-sm text-right"> Back <i class="bi bi-arrow-left-short"></i></a>
                            </div>
                        </div>

                        <!-- Multi Columns Form -->
                        <form class="row g-3" id="myForm">@csrf
                            <div class="col-md-4">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" id="name" name="name">
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-4">
                                <label for="cat_id" class="form-label">Status</label>
                                <select id="cat_id" class="form-select" name="cat_id">
                                    <option selected value="">Select Category</option>
                                    @foreach($Category as $item)
                                        <option value="{{$item->id}}">{{$item->name}}</option>
                                    @endforeach
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
        function addData() {
            url = "{{ url('ProSubCategory') }}";
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

        function showData(id) {
            $.ajax({
                url: "{{ url('Division') }}" + '/' + id,
                type: "GET",
                dataType: "JSON",
                success: function (data) {
                    $('#addModal form')[0].reset();
                    $('.role-title').text('Update Division');
                    $('#addModal').modal('show');
                    $('#id').val(data.id);
                    $('#name').val(data.name);
                    $('#status').val(data.status);
                }, error: function () {
                    swal({
                        title: "Oops",
                        text: "Error Occured",
                        icon: "error",
                        timer: '1500'
                    });
                }
            });
        }

        function  deleteData(id) {
            var csrf_token = $('meta[name="csrf-token"]').attr('content');
            swal({
                title: "Are you sure?",
                text: "Once deleted, you will not be able to recover this imaginary file!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
                .then((willDelete) => {
                    if (willDelete) {
                        $.ajax({
                            url: "{{ url('Division') }}" + '/' + id,
                            type: "POST",
                            data: {'_method': 'DELETE', '_token': csrf_token},
                            success: function (data) {
                                console.log(data);
                                var dataResult = JSON.parse(data);
                                if (dataResult.statusCode == 200) {
                                    $('#dataTableItem').DataTable().ajax.reload();
                                    swal({
                                        title: "Delete Done",
                                        text: "Poof! Your data file has been deleted!",
                                        icon: "success",
                                        button: "Done"
                                    });
                                } else {
                                    swal("Error occured !!");
                                }
                            }, error: function (data) {
                                console.log(data);
                                swal({
                                    title: "Opps...",
                                    text: "Error occured !",
                                    icon: "error",
                                    button: 'Ok ',
                                });
                            }
                        });
                    } else {
                        swal("Your imaginary file is safe!");
                    }
                });
        }

    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Get references to the file input and image preview elements
            var logoInput = document.getElementById('logo');
            var logoPreview = document.getElementById('logoPreview');

            // Listen for changes to the file input
            logoInput.addEventListener('change', function(event) {
                // Get the selected file
                var file = event.target.files[0];

                // If a file was selected
                if (file) {
                    // Create a FileReader to read the file
                    var reader = new FileReader();

                    // Define what happens when the FileReader loads the file
                    reader.onload = function(e) {
                        // Set the src attribute of the image preview to the file's data URL
                        logoPreview.src = e.target.result;
                        logoPreview.style.display = 'block'; // Show the image
                    };

                    // Read the file as a data URL
                    reader.readAsDataURL(file);
                } else {
                    // Hide the image preview if no file is selected
                    logoPreview.style.display = 'none';
                }
            });
        });
    </script>
@endsection
