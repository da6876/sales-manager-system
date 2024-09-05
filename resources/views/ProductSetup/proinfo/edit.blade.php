@extends('layout.appmain')
@section('title', '- Edit Pro. Sub Category')

@section('main')

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Edit Pro. Sub Category</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item">Product Setup</li>
                    <li class="breadcrumb-item active">Edit Pro. Sub Category</li>
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
                                <h5 class="card-title">Edit Pro. Sub Category</h5>
                            </div>
                            <div class="col-md-2 mt-3 ">
                                <a href="{{url('ProInfo')}}" type="button" class="btn btn-outline-info btn-sm text-right"> Back <i class="bi bi-arrow-left-short"></i></a>
                            </div>
                        </div>
                        <!-- Multi Columns Form -->
                        <form class="row g-3">
                            @csrf
                            <input type="hidden" id="id" name="id" value="{{ $navItem->id }}"> <!-- Hidden ID field -->

                            <div class="col-md-6">
                                <label for="title" class="form-label">Title</label>
                                <input type="text" class="form-control" id="title" name="title" value="{{ old('title', $navItem->title) }}">
                                <div class="invalid-feedback"></div>
                            </div>

                            <div class="col-md-6">
                                <label for="subtitle" class="form-label">Sub Title</label>
                                <input type="text" class="form-control" id="subtitle" name="subtitle"  value="{{ old('subtitle', $navItem->subtitle) }}">
                                <div class="invalid-feedback"></div>
                            </div>

                            <div class="col-md-12">
                                <label for="details" class="form-label">Details</label>
                                <textarea id="details" name="details" class="form-control">{{ old('details', $navItem->details) }}</textarea>
                                <div class="invalid-feedback"></div>
                            </div>

                            <div class="col-md-3">
                                <label for="type_id" class="form-label">Product Type</label>
                                <select id="type_id" class="form-select" name="type_id">
                                    <option selected value="">Select Product Type</option>
                                    @foreach($Type as $Type)
                                        <option value="{{$Type->id}}" {{ old('type_id', $navItem->type_id) == $Type->id ? 'selected' : '' }}>{{$Type->name}}</option>
                                    @endforeach
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-3">
                                <label for="cat_id" class="form-label">Product Category</label>
                                <select id="cat_id" class="form-select" name="cat_id">
                                    <option selected value="">Select Category</option>
                                    @foreach($Category as $Category)
                                        <option value="{{$Category->id}}" {{ old('cat_id', $navItem->cat_id) == $Category->id ? 'selected' : '' }}>{{$Category->name}}</option>
                                    @endforeach
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-3">
                                <label for="subcat_id" class="form-label">Product Sub Category</label>
                                <select id="subcat_id" class="form-select" name="subcat_id">
                                    <option selected value="">Select Sub Category</option>
                                    @foreach($SubCategory as $SubCategory)
                                        <option value="{{$SubCategory->id}}" {{ old('subcat_id', $navItem->subcat_id) == $SubCategory->id ? 'selected' : '' }}>{{$SubCategory->name}}</option>
                                    @endforeach
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-3">
                                <label for="brand_id" class="form-label">Status</label>
                                <select id="brand_id" class="form-select" name="brand_id">
                                    <option selected value="">Select Brand</option>
                                    @foreach($Brand as $Brand)
                                        <option value="{{$Brand->id}}" {{ old('brand_id', $navItem->brand_id) == $Brand->id ? 'selected' : '' }}>{{$Brand->name}}</option>
                                    @endforeach
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>

                            <div class="col-md-4">
                                <label for="price_mrp" class="form-label">Price MRP</label>
                                <input type="text" class="form-control" id="price_mrp" name="price_mrp" value="{{ old('price_mrp', $navItem->price_mrp) }}">
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-4">
                                <label for="price_rp" class="form-label">Price RP</label>
                                <input type="text" class="form-control" id="price_rp" name="price_rp" value="{{ old('price_rp', $navItem->price_rp) }}">
                                <div class="invalid-feedback"></div>
                            </div>

                            <div class="col-md-4">
                                <label for="status" class="form-label">Status</label>
                                <select id="status" class="form-select" name="status">
                                    <option value="">Select Status</option>
                                    <option value="A" {{ old('status', $navItem->status) == 'A' ? 'selected' : '' }}>Active</option>
                                    <option value="I" {{ old('status', $navItem->status) == 'I' ? 'selected' : '' }}>InActive</option>
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="container col-md-3">
                                <div class="col-md-6">
                                    <label for="image1" class="form-label">Image 1 :</label>
                                    <input type="file" class="form-control" id="image1" name="image1" onchange="preview(1)" accept="image/*">
                                    <div class="invalid-feedback"></div>
                                </div>
                                <div class="col-md-6">
                                    @if ($navItem->image1)
                                        <img id="logoPreview1" src="{{ asset($navItem->image1) }}" alt="Current Image" style="width: 100%; height: 100px;"/>
                                    @else
                                        <img id="logoPreview1" src="{{asset('assets/img/dummy.jpg')}}" alt="Image Preview" style="width: 100%; height: 100px;"/>
                                    @endif
                                </div>
                            </div>
                            <div class="container col-md-3">
                                <div class="col-md-6">
                                    <label for="image2" class="form-label">Image 2 :</label>
                                    <input type="file" class="form-control" id="image2" name="image2" onchange="preview(2)" accept="image/*">
                                    <div class="invalid-feedback"></div>
                                </div>
                                <div class="col-md-6">
                                    @if ($navItem->image2)
                                        <img id="logoPreview2" src="{{ asset($navItem->image2) }}" alt="Current Image" style="width: 100%; height: 100px;"/>
                                    @else
                                        <img id="logoPreview2" src="{{asset('assets/img/dummy.jpg')}}" alt="Image Preview" style="width: 100%; height: 100px;"/>
                                    @endif
                                </div>
                            </div>
                            <div class="container col-md-3">
                                <div class="col-md-6">
                                    <label for="image3" class="form-label">Image 3 :</label>
                                    <input type="file" class="form-control" id="image3" name="image3" onchange="preview(3)" accept="image/*">
                                    <div class="invalid-feedback"></div>
                                </div>
                                <div class="col-md-6">
                                    @if ($navItem->image3)
                                        <img id="logoPreview3" src="{{ asset($navItem->image3) }}" alt="Current Image" style="width: 100%; height: 100px;"/>
                                    @else
                                        <img id="logoPreview3" src="{{asset('assets/img/dummy.jpg')}}" alt="Image Preview" style="width: 100%; height: 100px;"/>
                                    @endif
                                </div>
                            </div>
                            <div class="container col-md-3">
                                <div class="col-md-6">
                                    <label for="image4" class="form-label">Image 4 :</label>
                                    <input type="file" class="form-control" id="image4" name="image4" onchange="preview(4)" accept="image/*">
                                    <div class="invalid-feedback"></div>
                                </div>
                                <div class="col-md-6">
                                    @if ($navItem->image4)
                                        <img id="logoPreview4" src="{{ asset($navItem->image4) }}" alt="Current Image" style="width: 100%; height: 100px;"/>
                                    @else
                                        <img id="logoPreview4" src="{{asset('assets/img/dummy.jpg')}}" alt="Image Preview" style="width: 100%; height: 100px;"/>
                                    @endif
                                </div>
                            </div>

                            <div class="text-center">
                                <button type="button" onclick="updateData()" class="btn btn-primary">Update</button>
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
    function preview(id) {
        const fileInput = document.getElementById(`image${id}`);
        const previewImage = document.getElementById(`logoPreview${id}`);

        if (fileInput.files && fileInput.files[0]) {
            // Create a URL for the selected file
            const fileURL = URL.createObjectURL(fileInput.files[0]);
            // Set the URL as the source of the preview image
            previewImage.src = fileURL;
        }
    }

    function updateData() {

        url = "{{ url('ProInfo') }}";
        $.ajax({
            url: url,
            type: "POST",
            data: new FormData($("#addFrom form")[0]),
            contentType: false,
            processData: false,
            success: function (data) {
                var dataResult = JSON.parse(data);
                if (dataResult.statusCode == 200) {
                    swal("Success", dataResult.statusMsg).then((result) => {
                            window.location.href = "{{ url('ProInfo') }}"; // Redirect to a different page
                    });
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
        return false; // Prevent default form submission
    }
</script>
