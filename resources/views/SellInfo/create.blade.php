@extends('layout.appmain')
@section('title', '- New Sidebar Nav')
@section('style')
    <style>
        .card1 {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            border: 2px solid #dee2e6; /* Adjust the border color and width as needed */
            border-radius: 0.25rem; /* Bootstrap's default border radius */
            box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075); /* Light shadow */
            transition: box-shadow 0.3s ease-in-out; /* Smooth transition for shadow on hover */
        }

        .card1:hover {
            box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15); /* Darker shadow on hover */
        }

        .card1-img-top {
            object-fit: cover;
            height: 100px; /* Adjust the height as needed */
            border-bottom: 1px solid #dee2e6; /* Border between image and body */
        }

        .card1-body {
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            overflow: hidden;
            height: 50px; /* Adjust the height as needed */
        }

        .card1-title {
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
    </style>
    <style>
        .swal-button-view {
            background-color: #d33 !important; /* Custom color for "View Order" */
            color: #fff !important;
            border: none !important;
        }

        .swal-button-print {
            background-color: #3085d6 !important; /* Custom color for "Print Order" */
            color: #fff !important;
            border: none !important;
        }
    </style>
    <style>
        .customer-item {
            cursor: pointer;
            padding: 5px;
            border-bottom: 1px solid #ddd;
        }

        .customer-item:hover {
            background-color: #ffe6aa; /* Optional: Adds a background color on hover */
        }
    </style>
@endsection
@section('main')

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>POS</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item active">POS</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->

        <section class="section dashboard">
            <div class="row">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-8">
                                <h5 class="card-title">Product List</h5>
                                <form class=" mb-3">
                                    @csrf
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="searchInput" name="name"
                                               placeholder="Search Product By Name">
                                        <span class="input-group-text"><i class="bi bi-search"></i></span>
                                    </div>
                                </form>
                                <div class="row" id="cardContainer">

                                </div>
                            </div>
                            <div class="col-lg-4">
                                <h5 class="card-title">Order Details</h5>
                                <table class="table" id="OrderDetails">
                                    <form class="row g-3">
                                        @csrf
                                        <div class="row" id="cardCustomer">
                                            <div class="col-md-12">
                                                <input type="hidden" class="form-control" id="customerId" name="customerId">
                                                <input type="text" class="form-control" id="phone" name="phone" placeholder="Search Or Enter Phone No">
                                                <ul class="list-group"  id="customerList"></ul>
                                            </div>
                                            <div class="col-md-12 mt-2">
                                                <input type="text" class="form-control" id="address" name="address" placeholder="Customer Address">
                                            </div>
                                            <div class="col-md-6 mt-2">
                                                <input type="text" class="form-control" id="name" name="name" placeholder="Customer Name">
                                            </div>
                                            <div class="col-md-6 mt-2">
                                                <input type="text" class="form-control" id="email" name="email" placeholder="Customer Email">
                                            </div>
                                        </div>
                                        <tbody>

                                        </tbody>
                                        <tfoot>
                                        </tfoot>
                                    </form>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="modal fade" id="largeModal" tabindex="-1">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add New Customer</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form class="row g-3" id="myForm">@csrf
                            <div class="col-md-6">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" id="name" name="name">
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="phone" class="form-label">Phone</label>
                                <input type="text" class="form-control" id="phone" name="phone">
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" name="email">
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="address" class="form-label">Address</label>
                                <input type="email" class="form-control" id="address" name="address">
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="text-center">
                                <button type="button" onclick="addData()" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-secondary">Reset</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- End #main -->
@endsection
@section('script')
    <script>
        window.addEventListener('load', function () {
            document.body.classList.add('toggle-sidebar');
        });

        let orderItems = [];
        let discountAmount = 0;
        let receivedAmount = 0;
        loadData('');
        updateOrderDetails();

        const inputField = document.getElementById('searchInput');
        inputField.addEventListener('input', function () {
            loadData(inputField.value)
        });

        function loadData(searchValue) {
            $.ajax({
                url: "{{ route('all.ProductList') }}",
                type: 'POST',
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data: {
                    name: searchValue // Send the search value
                },
                success: function (response) {
                    if (response.data && Array.isArray(response.data)) {
                        var data = response.data;
                        var cardHtml = '';

                        $.each(data, function (index, item) {
                            var title = item.title ? decodeHtml(item.title) : 'No Title';
                            var imageUrl = item.image1 ? item.image1 : 'assets/img/card.jpg';

                            cardHtml += `
                            <div class="card1 col-md-2 mb-5" style="">
                                <img src="${imageUrl}" class="card1-img-top" alt="${title}">
                                <div class="card1-body">
                                    <span class="card1-title" style="font-size: small;">${title}</span>
                                </div>
                                <button type="button" class="btn btn-sm btn-outline-success mb-2" onclick="addItem('${item.id}','${item.uid}', '${title}', '${imageUrl}', 200)">
                                    <i class="bi bi-cart-plus-fill"></i> Add
                                </button>
                            </div>
                        `;
                        });

                        $('#cardContainer').html(cardHtml);
                    } else {
                        console.warn('Unexpected data format:', response);
                    }
                },
                error: function (xhr, status, error) {
                    console.error('Failed to fetch data:', status, error);
                }
            });
        }

        function addItem(id, uid, title, imageUrl, price) {
            const existingItem = orderItems.find(item => item.uid === uid);

            if (existingItem) {
                existingItem.quantity += 1;
            } else {
                orderItems.push({id, uid, title, imageUrl, price, quantity: 1});
            }

            updateOrderDetails();
        }

        function removeItem(uid) {
            orderItems = orderItems.filter(item => item.uid !== uid);
            updateOrderDetails();
        }

        function updateOrderDetails() {
            let subtotal = 0;
            let orderHtml = '';

            if (orderItems.length === 0) {
                orderHtml = `
                <tr>
                    <td colspan="2" style="text-align: center;">NO ITEM ADDED</td>
                </tr>
            `;
            } else {
                orderItems.forEach(item => {
                    const itemTotal = item.price * item.quantity;
                    subtotal += itemTotal;
                    orderHtml += `
                    <tr>
                        <td colspan="2">
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <input type="hidden" id="pro_id" name="pro_id" value="'${item.id}'">
                                <input type="hidden" id="quantity" name="quantity" value="${item.quantity}">
                                <input type="hidden" id="price" name="price" value="${item.price}">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="${item.imageUrl}" class="img-fluid rounded-start p-1" alt="${item.title}">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <span class="card-title" style="font-size: medium">${item.title}</span>
                                            <div class="row">
                                                <div class="col-md-6" style="font-size: small">Qnty x${item.quantity}</div>
                                                <div class="col-md-6" style="font-size: small">${itemTotal.toFixed(2)} BDT</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        </td>
                    </tr>
                `;
                });
            }

            const tax = 0.10 * subtotal; // Example: 15% tax
            const grandTotal = subtotal + tax - discountAmount;
            const revisedAmount = grandTotal - receivedAmount;

            $('#OrderDetails tbody').html(orderHtml);

            $('#OrderDetails tfoot').html(
                `<ul class="list-group">
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-md-6" style="font-size: small">Subtotal</div>
                            <div class="col-md-6" style="font-size: small">${subtotal.toFixed(2)} BDT</div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <input type="hidden" id="vat_amount" name="vat_amount" value="${tax.toFixed(2)}">
                            <div class="col-md-6" style="font-size: small">Tax (15%)</div>
                            <div class="col-md-6" style="font-size: small">${tax.toFixed(2)} BDT</div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <input type="hidden" id="discount_amount" name="discount_amount" value="${discountAmount.toFixed(2)}">
                            <div class="col-md-6" style="font-size: small">Discount</div>
                            <div class="col-md-6" style="font-size: small"><input id="discountInput" class="form-control col-sm" value="${discountAmount.toFixed(2)}" placeholder="Discount"></div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <input type="hidden" id="total_amount" name="total_amount" value="${grandTotal.toFixed(2)}">
                            <div class="col-md-6" style="font-size: small">Grand Total</div>
                            <div class="col-md-6" style="font-size: small">${grandTotal.toFixed(2)} BDT</div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <input type="hidden" id="received_amount" name="received_amount" value="${receivedAmount.toFixed(2)}">
                            <div class="col-md-6" style="font-size: small">Received Amount</div>
                            <div class="col-md-6" style="font-size: small"><input id="receivedAmountInput" class="form-control col-sm" value="${receivedAmount.toFixed(2)}" placeholder="Received Amount"></div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <input type="hidden" id="revised_amount" name="revised_amount" value="${revisedAmount.toFixed(2)}">
                            <div class="col-md-6" style="font-size: small">Revised Amount</div>
                            <div class="col-md-6" style="font-size: small">${revisedAmount.toFixed(2)} BDT</div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-md-6" style="font-size: small">Payment status</div>
                            <div class="col-md-6" style="font-size: small">
                                <select class="form-sm" id="payment_status" name="payment_status">
                                    <option value="">Select Status</option>
                                    <option value="A">Active</option>
                                    <option value="I">InActive</option>
                                </select>
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-md-6" style="font-size: small">Payment Method</div>
                            <div class="col-md-6" style="font-size: small">
                                <select class="form-sm" id="payment_method" name="payment_method">
                                    <option value="">Select Method</option>
                                    <option value="Cash">Cash</option>
                                    <option value="Card">Card</option>
                                </select>
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">
                    <div class="row text-center">
                        <div class="col-md-12"><button type="button" onclick="checkNow()" class="btn btn-success btn-lg">${grandTotal.toFixed(2)} BDT Pay Now</button></div>
                    </div>
                </li>
                </ul>`
            );

            $('#discountInput').on('blur', function () {
                discountAmount = parseFloat($(this).val()) || 0;
                updateOrderDetails();
            });
            $('#receivedAmountInput').on('blur', function () {
                receivedAmount = parseFloat($(this).val()) || 0;
                updateOrderDetails();
            });

        }

        function decodeHtml(html) {
            var txt = document.createElement("textarea");
            txt.innerHTML = html;
            return txt.value;
        }

        function checkNow(){
            if($('#customerId').val()==''){
                addData();
            }else {
                payNow();
            }
        }

        function payNow() {

            const formData = new FormData();

            formData.append('customerId', $('#customerId').val());
            formData.append('total_amount', $('#total_amount').val());
            formData.append('vat_amount', $('#vat_amount').val());
            formData.append('discount_amount', $('#discount_amount').val());
            formData.append('received_amount', $('#received_amount').val());
            formData.append('revised_amount', $('#revised_amount').val());
            formData.append('payment_status', $('#payment_status').val());
            formData.append('payment_method', $('#payment_method').val());
            formData.append('items', JSON.stringify(orderItems)); // Convert items to JSON string
            const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

            $.ajaxSetup({headers: {'X-CSRF-TOKEN': csrfToken}});
            $.ajax({
                url: "{{ url('orders') }}",
                type: "POST",
                data: formData,
                contentType: false,
                processData: false,
                success: function (data) {
                    if (data.statusCode === 200) {
                        swal({
                            title: "Success",
                            text: data.statusMsg,
                            icon: "success",
                            buttons: {
                                viewOrder: {
                                    text: "View Invoice",
                                    className: "swal-button-view",
                                }
                            }
                        }).then((value) => {
                            if (value === "viewOrder") {
                                // Redirect to the print invoice page with the order number
                                window.location.href = `{{ url('print-invoice') }}/${data.order_number}`;
                            }
                        });
                    } else if (data.statusCode === 204) {
                        swal({
                            text: "Validation Error",
                            icon: "error",
                            timer: 2500
                        });
                    } else {
                        swal({
                            title: "Oops",
                            text: data.statusMsg,
                            icon: "error",
                            timer: 1500
                        });
                    }
                },
                error: function (data) {
                    console.log(data);
                    swal({
                        title: "Oops",
                        text: "Error occurred",
                        icon: "error",
                        timer: 1500
                    });
                }
            });
            return false;
        }

        function addData() {
            const formData1 = new FormData();

            formData1.append('phone', $('#phone').val());
            formData1.append('name', $('#name').val());
            formData1.append('email', $('#email').val());
            formData1.append('address', $('#address').val());
            url = "{{ url('customer') }}";
            const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

            $.ajaxSetup({headers: {'X-CSRF-TOKEN': csrfToken}});
            $.ajax({
                url: url,
                type: "POST",
                data: formData1,
                contentType: false,
                processData: false,
                success: function (data) {
                    var dataResult = JSON.parse(data);
                    if (dataResult.statusCode == 200) {
                        $('#customerId').val(dataResult.id);
                        payNow();
                        //swal("Success", dataResult.statusMsg);
                        //$('#largeModal form')[0].reset();
                       // $('#largeModal').modal('hide')

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

    <script>
        $(document).ready(function() {
            $('#phone').on('input', function() {
                var phone = $(this).val();
                if (phone.length > 2) {
                    $.ajax({
                        url: "{{ url('search-customers') }}",
                        type: 'GET',
                        data: { phone: phone },
                        success: function(data) {
                            var customerList = '';
                            data.forEach(function(customer) {
                                customerList += `<li class="list-group-item customer-item" data-id="${customer.id}" data-name="${customer.name}" data-email="${customer.email}" data-phone="${customer.phone}" data-address="${customer.address}"><i class="bi bi-person-circle me-1 text-success"></i>${customer.name}</li>`;
                            });
                            $('#customerList').html(customerList);
                        }
                    });
                } else {
                    $('#customerList').html('');
                }
            });

            $(document).on('click', '.customer-item', function() {
                var id = $(this).data('id');
                var name = $(this).data('name');
                var email = $(this).data('email');
                var phone = $(this).data('phone');
                var address = $(this).data('address');

                $('#customerId').val(id);
                $('#name').val(name);
                $('#email').val(email);
                $('#address').val(address);
                $('#phone').val(phone);
                $('#customerList').html('');
            });
        });
    </script>
@endsection
