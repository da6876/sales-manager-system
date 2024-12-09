@extends('layout.appmain')
@section('title', '- New Sidebar Nav')
@section('style')
    <style>
        /* Basic styling for screen view */
        .container1 {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 20px;
            border: 1px solid #ddd;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            box-sizing: border-box;
        }

        .text-center {
            text-align: center;
        }

        #logoPreview1 {
            max-width: 100px; /* Fixed width for logo */
            height: auto; /* Maintain aspect ratio */
            display: block; /* Make image a block element */
            margin-left: auto; /* Center align */
            margin-right: auto; /* Center align */
        }

        .order-items table {
            width: 100%;
            border-collapse: collapse;
        }

        .order-items th, .order-items td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: right;
        }

        .order-items th {
            background-color: #f2f2f2;
        }

        .print-button {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
        }

        .barcode {
            text-align: center;
            margin: 20px 0;
        }

        /* Print-specific styles */
        @media print {
            body * {
                visibility: hidden; /* Hide all content by default */
            }

            .container1, .container1 * {
                margin-top: -3px;
                visibility: visible; /* Show only content within container1 */
            }

            .container1 {
                position: absolute;
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                margin: 0;
                padding: 0;
                border: none;
                box-shadow: none;
            }

            .print-button {
                display: none; /* Hide print button during print */
            }

            /* Optional: Ensure page breaks do not cut off the content */
            @page {
                margin: 10px;
            }
        }
    </style>
@endsection
@section('main')

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Invoice</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Invoice</a></li>
                    <li class="breadcrumb-item active">{{ $orderData->order_number }}</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->

        <section class="section dashboard">
            <div class="row">
                <div class="card">
                    <div class="card-body">
                        <button class="print-button" id="btnsss">Print Invoice</button>
                        <div class="container1">
                            <div class="row text-center">
                                <img alt="" id="logoPreview1" width="20%" height="80">
                                <b><h4 class="d-none d-lg-block" id="brandName1"></h4></b>
                                <span class="text-center"><b>Address Here, Phone: 0131111111</b></span>
                            </div>
                            <table width="100%">
                                <tr>
                                    @php
                                        use Carbon\Carbon;
                                        $orderDateTime = Carbon::parse($orderData->order_date);
                                        $date = $orderDateTime->format('Y-m-d');
                                        $time = $orderDateTime->format('h:i:s A');
                                    @endphp
                                    <td class="text-center col-md-6">Date: {{ $date }}</td>
                                    <td class="text-center col-md-6">Time: {{ $time }}</td>
                                </tr>
                            </table>
                            <table width="100%">
                                <tr>
                                    <td class="text-center col-md-6">Sales Person: {{ auth()->user()->name }}</td>
                                    <td class="text-center col-md-6">Customer Name: {{ $orderData->customer->name }} <br>Customer Phone: {{ $orderData->customer->phone }}</td>
                                </tr>
                            </table>
                            <h5 class="text-center"><b>Invoice {{ $orderData->order_number }}</b></h5>
                            <b>Order Details</b>
                            <div class="order-items">
                                <table>
                                    <thead>
                                    <tr>
                                        <th>Item</th>
                                        <th>Qty</th>
                                        <th>Price</th>
                                        <th>Total</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach ($orderDtlData as $item)
                                        <tr>
                                            <td>{{ $item->product->title }}</td>
                                            <td>{{ $item->quantity }}</td>
                                            <td>{{ number_format($item->price, 2) }}</td>
                                            <td>{{ number_format($item->quantity * $item->price, 2) }} TK</td>
                                        </tr>
                                    @endforeach
                                    <tr>
                                        <td colspan="3">Total Amount:</td>
                                        <td colspan="">{{ number_format($orderData->total_amount, 2) }} TK</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">Discount Amount:</td>
                                        <td colspan="">{{ number_format($orderData->discount_amount, 2) }} TK</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">Vat Amount (15%):</td>
                                        <td colspan="">{{ number_format($orderData->vat_amount, 2) }} TK</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">Payment Status:</td>
                                        <td colspan="">{{ $orderData->payment_method }}</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">Paid Amount:</td>
                                        <td colspan="">{{ number_format($orderData->received_amount, 2) }} TK</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">Change Amount:</td>
                                        <td colspan="">{{ number_format($orderData->revised_amount, 2) }} TK</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <table width="100%">
                                <tr>
                                    <td class="text-center col-md-6" style="font-family: 'Agency FB'">
                                        No money back after sale.<br>
                                        Exchange will be executed within.<br>
                                        <b>3 days with Invoice</b>.<br>
                                        Your satisfaction is our ambition.<br>
                                    </td>
                                </tr>
                            </table>
                            <div class="barcode">
                                <svg id="barcode"></svg><br>
                                Software By SOC IT.<br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>
    <!-- End #main -->
@endsection
@section('script')
    <script src="https://cdn.jsdelivr.net/npm/jsbarcode@3.11.0/dist/JsBarcode.all.min.js"></script>
    <script>
        $("#btnsss").click(function () {
            //Copy the element you want to print to the print-me div.
            $("#container1").clone().appendTo("#print-me");
            //Apply some styles to hide everything else while printing.
            $("body").addClass("printing");
            //Print the window.
            window.print();
            //Restore the styles.
            $("body").removeClass("printing");
            //Clear up the div.
            $("#print-me").empty();
        });
        // Replace with your invoice number
        const invoiceNumber = "{{ $orderData->order_number }}";

        // Generate barcode
        window.onload = function() {
            JsBarcode("#barcode", invoiceNumber, {
                format: "CODE128",
                displayValue: false, // Hide the barcode number
                width: 2,
                height: 50,
                margin: 10
            });
        }
    </script>
    <script>
        $.ajax({
            url: "{{ url('getBrandInfo') }}",
            type: "GET",
            dataType: "JSON",
            success: function (data) {
                if (data.statusCode && data.statusCode === 200) {
                    var brandInfo = data.data;
                    $('#brandName1').text(brandInfo.name).removeClass('d-none');
                    var logoUrl = "{{ url('/') }}/" + brandInfo.logo;
                    $('#logoPreview1').attr('src', logoUrl).show();
                } else {
                    swal({
                        text: data.statusMsg || "Data Not Found",
                        timer: '1500'
                    });
                }
            },
            error: function () {
                swal({
                    text: "Error occurred while fetching roles",
                    timer: '1500'
                });
            }
        });
    </script>

@endsection
