@extends('layout.appmain')
@section('title', '- New Purchase')
@section('style')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />
<style>

</style>
@endsection
@section('main')

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Add Pro. Purchase</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item">Web Setup</li>
                    <li class="breadcrumb-item active">Add Pro. Purchase</li>
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
                                <h5 class="card-title">Add Pro. Purchase</h5>
                            </div>
                            <div class="col-md-2 mt-3 ">
                                <a href="{{route('ProType.index')}}" type="button" class="btn btn-outline-info btn-sm text-right"> Back <i class="bi bi-arrow-left-short"></i></a>
                            </div>
                        </div>

                        <!-- Multi Columns Form -->
                        <form class="row g-3" id="myForm">@csrf


                            <div class="col-md-3">
                                <label for="Challan_Number" class="form-label">Challan Number</label>
                                <input type="text" class="form-control" id="Challan_Number" name="Challan_Number">
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-9">
                                <label for="Product_ID" class="form-label">Product</label>
                                <select id="Product_ID" class="form-select select2" name="Product_ID">
                                    <option selected value="">Select Product</option>
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-3">
                                <label for="Category_ID" class="form-label">Product Category</label>
                                <select id="Category_ID" class="form-select select2" name="Category_ID">
                                    <option selected value="">Select Category</option>
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-3">
                                <label for="Sub_Category_ID" class="form-label">Product Sub Category</label>
                                <select id="Sub_Category_ID" class="form-select select2" name="Sub_Category_ID">
                                    <option selected value="">Select Sub Category</option>
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>

                            <div class="col-md-3">
                                <label for="pro_type" class="form-label">Product Type</label>
                                <select id="pro_type" class="form-select select2" name="pro_type">
                                    <option selected value="">Select Product Type</option>
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>


                            <div class="col-md-3">
                                <label for="Unit" class="form-label">Unit</label>
                                <select id="Unit" class="form-select select2" name="Unit">
                                    <option selected value="">Select Unit</option>
                                    <option value="KG">KG</option>
                                    <option value="GM">GM</option>
                                    <option value="LT">LT</option>
                                    <option value="Package">Package</option>
                                    <option value="Piece">Piece</option>
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-3">
                                <label for="Color" class="form-label">Size</label>
                                <select id="Color" class="form-select select2" name="Color" multiple>
                                    <option selected value="">Select Size</option>
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-3">
                                <label for="Size" class="form-label">Color</label>
                                <select id="Size" class="form-select select2" name="Size" multiple>
                                    <option selected value="">Select Size</option>
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>

                            <div class="col-md-3">
                                <label for="Vendor_ID" class="form-label">Vendor</label>
                                <select id="Vendor_ID" class="form-select select2" name="Vendor_ID">
                                    <option selected value="">Select Vendor</option>
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>

                            <div class="col-md-3">
                                <label for="Purchase_Payment_Type" class="form-label">Payment Type</label>
                                <select id="Purchase_Payment_Type" class="form-select select2" name="Purchase_Payment_Type">
                                    <option selected value="">Select Payment Type</option>
                                    <option value="Cash">Cash</option>
                                    <option value="Check">Check</option>
                                    <option value="MFS">MFS</option>
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>

                            <div class="col-md-4">
                                <label for="Purchase_Qty" class="form-label">Purchase Qty</label>
                                <input type="text" class="form-control" id="Purchase_Qty" name="Purchase_Qty">
                                <div class="invalid-feedback"></div>
                            </div>

                            <div class="col-md-4">
                                <label for="Purchase_Rate" class="form-label">Unit Purchase Price</label>
                                <input type="text" class="form-control" id="Purchase_Rate" name="Purchase_Rate">
                                <div class="invalid-feedback"></div>
                            </div>

                            <div class="col-md-4">
                                <label for="Sales_Rate" class="form-label">Price MRP</label>
                                <input type="text" class="form-control" id="Sales_Rate" name="Sales_Rate">
                                <div class="invalid-feedback"></div>
                            </div>


                            <div class="col-md-3">
                                <label for="Purchase_Payment_Type" class="form-label">Payment Type</label>
                                <select id="Purchase_Payment_Type" class="form-select select2" name="Purchase_Payment_Type">
                                    <option selected value="">Select Payment Type</option>
                                    <option value="Cash">Cash</option>
                                    <option value="Check">Check</option>
                                    <option value="MFS">MFS</option>
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>



                            <div class="container col-md-8">
                                <div class="col-md-12">
                                    <label for="image" class="form-label">Image :</label>
                                    <input type="file" class="form-control" id="image" name="image" onchange="preview(4)" accept="image/*">
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
    <!-- Add this before the closing body tag -->
    <script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>
    <script>
        $(document).ready(function() {
            // Initialize Select2 for all select elements with the select2 class
            $('.select2').select2({
                height:'100px',
                width: '100%' // Make sure Select2 elements take up the full width
            });
        });
        var csrf_tokens = document.querySelector('meta[name="csrf-token"]').content;

        showProductType();showCategory();showProduct();showVendor();
        function addData() {
            url = "{{ url('Purchase') }}";
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


        function preview(id) {
            const fileInput = document.getElementById(`image${id}`);
            const previewImage = document.getElementById(`logoPreview${id}`);
            if (fileInput.files && fileInput.files[0]) {
                const fileURL = URL.createObjectURL(fileInput.files[0]);
                previewImage.src = fileURL;
            }
        }

        function showProductType() {
            var url = "{{ url('dropdownSelect') }}";
            $.ajax({
                url: url,
                type: "GET",
                data: {
                    ViewType: "ProductType",
                    _token: csrf_tokens
                },
                datatype: "JSON",
                success: function(data) {
                    var productType = $.parseJSON(data);
                    if (productType != "") {
                        var markup = "<option value=''>Select Product Type</option>";
                        for (var x = 0; x < productType.length; x++) {
                            markup +=
                                "<option value=" +
                                productType[x].id +
                                ">" +
                                productType[x].name +
                                "</option>";
                        }
                        $("#pro_type").html(markup).show();
                    } else {
                        var markup = "<option value=''>Select Product Type</option>";
                        $("#pro_type").html(markup).show();
                    }
                },
            });
        }

        function showCategory() {
            var url = "{{ url('dropdownSelect') }}";
            $.ajax({
                url: url,
                type: "GET",
                data: {
                    ViewType: "Category",
                    _token: csrf_tokens
                },
                datatype: "JSON",
                success: function(data) {
                    var productType = $.parseJSON(data);
                    if (productType != "") {
                        var markup = "<option value=''>Select Category</option>";
                        for (var x = 0; x < productType.length; x++) {
                            markup +=
                                "<option value=" +
                                productType[x].id +
                                ">" +
                                productType[x].name +
                                "</option>";
                        }
                        $("#Category_ID").html(markup).show();
                    } else {
                        var markup = "<option value=''>Select Category</option>";
                        $("#Category_ID").html(markup).show();
                    }
                },
            });
        }

        function showVendor() {
            var url = "{{ url('dropdownSelect') }}";
            $.ajax({
                url: url,
                type: "GET",
                data: {
                    ViewType: "Vendor",
                    _token: csrf_tokens
                },
                datatype: "JSON",
                success: function(data) {
                    var productType = $.parseJSON(data);
                    if (productType != "") {
                        var markup = "<option value=''>Select Vendor</option>";
                        for (var x = 0; x < productType.length; x++) {
                            markup +=
                                "<option value=" +
                                productType[x].id +
                                ">" +
                                productType[x].vendor_name +
                                "</option>";
                        }
                        $("#Vendor_ID").html(markup).show();
                    } else {
                        var markup = "<option value=''>Select Vendor</option>";
                        $("#Vendor_ID").html(markup).show();
                    }
                },
            });
        }

        $("#Category_ID").change(function() {
            var Category_ID = this.value;
            showSubCategory(Category_ID);
        });

        $("#pro_type").change(function() {
            var pro_type_id = this.value;
            showColor(pro_type_id);
            showSize(pro_type_id);
        });

        function showSubCategory(Category_ID) {
            var url = "{{ url('dropdownSelect') }}";
            $.ajax({
                url: url,
                type: "GET",
                data: {
                    ViewType: "SubCategory",
                    Category_ID: Category_ID,
                    _token: csrf_tokens
                },
                datatype: "JSON",
                success: function(data) {
                    var productType = $.parseJSON(data);
                    if (productType != "") {
                        var markup = "<option value=''>Select Product Type</option>";
                        for (var x = 0; x < productType.length; x++) {
                            markup +=
                                "<option value=" +
                                productType[x].id +
                                ">" +
                                productType[x].name +
                                "</option>";
                        }
                        $("#Sub_Category_ID").html(markup).show();
                    } else {
                        var markup = "<option value=''>Select Product Type</option>";
                        $("#Sub_Category_ID").html(markup).show();
                    }
                },
            });
        }

        function showColor(pro_type_id) {
            var url = "{{ url('dropdownSelect') }}";
            $.ajax({
                url: url,
                type: "GET",
                data: {
                    ViewType: "Color",
                    pro_type_id: pro_type_id,
                    _token: csrf_tokens
                },
                datatype: "JSON",
                success: function(data) {
                    var productType = $.parseJSON(data);
                    if (productType != "") {
                        var markup = "<option value=''>Select Color</option>";
                        for (var x = 0; x < productType.length; x++) {
                            markup +=
                                "<option value=" +
                                productType[x].id +
                                ">" +
                                productType[x].name +
                                "</option>";
                        }
                        $("#Color").html(markup).show();
                    } else {
                        var markup = "<option value=''>Select Color</option>";
                        $("#Color").html(markup).show();
                    }
                },
            });
        }

        function showSize(pro_type_id) {
            var url = "{{ url('dropdownSelect') }}";
            $.ajax({
                url: url,
                type: "GET",
                data: {
                    ViewType: "Size",
                    pro_type_id: pro_type_id,
                    _token: csrf_tokens
                },
                datatype: "JSON",
                success: function(data) {
                    var productType = $.parseJSON(data);
                    if (productType != "") {
                        var markup = "<option value=''>Select Size</option>";
                        for (var x = 0; x < productType.length; x++) {
                            markup +=
                                "<option value=" +
                                productType[x].id +
                                ">" +
                                productType[x].name +
                                "</option>";
                        }
                        $("#Size").html(markup).show();
                    } else {
                        var markup = "<option value=''>Select Size</option>";
                        $("#Size").html(markup).show();
                    }
                },
            });
        }

        function showProduct() {
            var url = "{{ url('dropdownSelect') }}";
            $.ajax({
                url: url,
                type: "GET",
                data: {
                    ViewType: "Product",
                    _token: csrf_tokens
                },
                datatype: "JSON",
                success: function(data) {
                    var productType = $.parseJSON(data);
                    if (productType != "") {
                        var markup = "<option value=''>Select Product</option>";
                        for (var x = 0; x < productType.length; x++) {
                            markup +=
                                "<option value=" +
                                productType[x].id +
                                ">" +
                                productType[x].title +
                                "</option>";
                        }
                        $("#Product_ID").html(markup).show();
                    } else {
                        var markup = "<option value=''>Select Product</option>";
                        $("#Product_ID").html(markup).show();
                    }
                },
            });
        }
    </script>
@endsection
