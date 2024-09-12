@extends('layout.appmain')
@section('title', '- New Pro. Info')
@section('style')
@endsection
@section('main')

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Add Pro. Info</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item">Product Setup</li>
                    <li class="breadcrumb-item active">Add Pro. Info</li>
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
                                <h5 class="card-title">Add Pro. Info</h5>
                            </div>
                            <div class="col-md-2 mt-3 ">
                                <a href="{{route('ProInfo.index')}}" type="button"
                                   class="btn btn-outline-info btn-sm text-right"> Back <i
                                        class="bi bi-arrow-left-short"></i></a>
                            </div>
                        </div>

                        <!-- Multi Columns Form -->
                        <form class="row g-3" id="myForm">@csrf
                            <div class="col-md-6">
                                <label for="title" class="form-label">Title</label>
                                <input type="text" class="form-control" id="title" name="title">
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="subtitle" class="form-label">Sub Title</label>
                                <input type="text" class="form-control" id="subtitle" name="subtitle">
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-12">
                                <label for="details" class="form-label">Details</label>
                                <textarea id="details" name="details" class="form-control" rows="10"></textarea>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-3">
                                <label for="type_id" class="form-label">Product Type</label>
                                <select id="type_id" class="form-select" name="type_id">
                                    <option selected value="">Select Product Type</option>
                                    @foreach($Type as $Type)
                                        <option value="{{$Type->id}}">{{$Type->name}}</option>
                                    @endforeach
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-3">
                                <label for="cat_id" class="form-label">Product Category</label>
                                <select id="cat_id" class="form-select" name="cat_id">
                                    <option selected value="">Select Category</option>
                                    @foreach($Category as $Category)
                                        <option value="{{$Category->id}}">{{$Category->name}}</option>
                                    @endforeach
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-3">
                                <label for="subcat_id" class="form-label">Product Sub Category</label>
                                <select id="subcat_id" class="form-select" name="subcat_id">
                                    <option selected value="">Select Sub Category</option>
                                    @foreach($SubCategory as $SubCategory)
                                        <option value="{{$SubCategory->id}}">{{$SubCategory->name}}</option>
                                    @endforeach
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-3">
                                <label for="brand_id" class="form-label">Status</label>
                                <select id="brand_id" class="form-select" name="brand_id">
                                    <option selected value="">Select Brand</option>
                                    @foreach($Brand as $Brand)
                                        <option value="{{$Brand->id}}">{{$Brand->name}}</option>
                                    @endforeach
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-4">
                                <label for="price_mrp" class="form-label">Price MRP</label>
                                <input type="text" class="form-control" id="price_mrp" name="price_mrp">
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-4">
                                <label for="price_rp" class="form-label">Price RP</label>
                                <input type="text" class="form-control" id="price_rp" name="price_rp">
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
                            <div class="container col-md-3">
                                <div class="col-md-6">
                                    <label for="logo1" class="form-label">Image 1 :</label>
                                    <input type="file" class="form-control" id="image1" name="image1"
                                           onchange="preview(1)" accept="image/*">
                                    <div class="invalid-feedback"></div>
                                </div>
                                <div class="col-md-6">
                                    <img id="logoPreview1" src="{{asset('assets/img/dummy.jpg')}}" alt="Image Preview"
                                         style="width: 100%; height: 100px;"/>
                                </div>
                            </div>
                            <div class="container col-md-3">
                                <div class="col-md-6">
                                    <label for="logo2" class="form-label">Image 2 :</label>
                                    <input type="file" class="form-control" id="image2" name="image2"
                                           onchange="preview(2)" accept="image/*">
                                    <div class="invalid-feedback"></div>
                                </div>
                                <div class="col-md-6">
                                    <img id="logoPreview2" src="{{asset('assets/img/dummy.jpg')}}" alt="Image Preview"
                                         style="width: 100%; height: 100px;"/>
                                </div>
                            </div>
                            <div class="container col-md-3">
                                <div class="col-md-6">
                                    <label for="logo3" class="form-label">Image 3 :</label>
                                    <input type="file" class="form-control" id="image3" name="image3"
                                           onchange="preview(3)" accept="image/*">
                                    <div class="invalid-feedback"></div>
                                </div>
                                <div class="col-md-6">
                                    <img id="logoPreview3" src="{{asset('assets/img/dummy.jpg')}}" alt="Image Preview"
                                         style="width: 100%; height: 100px;"/>
                                </div>
                            </div>
                            <div class="container col-md-3">
                                <div class="col-md-6">
                                    <label for="logo4" class="form-label">Image 4 :</label>
                                    <input type="file" class="form-control" id="image4" name="image4"
                                           onchange="preview(4)" accept="image/*">
                                    <div class="invalid-feedback"></div>
                                </div>
                                <div class="col-md-6">
                                    <img id="logoPreview4" src="{{asset('assets/img/dummy.jpg')}}" alt="Image Preview"
                                         style="width: 100%; height: 100px;"/>
                                </div>
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

    <script src="https://cdn.ckeditor.com/ckeditor5/35.1.0/classic/ckeditor.js"></script>
    <script>
        ClassicEditor
            .create(document.querySelector('#details'))
            .then(editor => {
                editorInstance = editor;
            })
            .catch(error => {
                console.error(error);
            });

        function addData() {
            if (!editorInstance) {
                console.error('CKEditor instance is not available.');
                return false;
            }
            var ckeditorContent = editorInstance.getData();
            var formElement = document.querySelector('#myForm');
            if (!formElement) {
                console.error('Form element not found.');
                return false;
            }
            var formData = new FormData(formElement);
            formData.append('details', ckeditorContent);
            var url = "{{ url('ProInfo') }}";
            $.ajax({
                url: url,
                type: "POST",
                data: formData,
                contentType: false,
                processData: false,
                success: function (data) {
                    var dataResult = JSON.parse(data);
                    if (dataResult.statusCode == 200) {
                        swal("Success", dataResult.statusMsg);
                       // formElement.reset();
                    } else if (dataResult.statusCode == 204) {
                        showErrors(dataResult.errors);
                    } else {
                        swal({
                            title: "Oops",
                            text: dataResult.statusMsg,
                            icon: "error",
                            timer: '1500'
                        });
                    }
                },
                error: function (data) {
                    console.log(data);
                    swal({
                        title: "Oops",
                        text: "Error occurred",
                        icon: "error",
                        timer: '1500'
                    });
                }
            });

            return false;
        }

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

        function preview(id) {
            const fileInput = document.getElementById(`image${id}`);
            const previewImage = document.getElementById(`logoPreview${id}`);
            if (fileInput.files && fileInput.files[0]) {
                const fileURL = URL.createObjectURL(fileInput.files[0]);
                previewImage.src = fileURL;
            }
        }
    </script>
@endsection
