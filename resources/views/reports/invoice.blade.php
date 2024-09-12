@extends('layout.appmain')
@section('title', '- New Sidebar Nav')
@section('style')
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 10px;
        }
        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        h1, h2 {
            text-align: center;
        }
        .order-details, .order-items {
            margin-bottom: 20px;
        }
        .order-items table {
            width: 100%;
            border-collapse: collapse;
        }
        .order-items table, .order-items th, .order-items td {
            border: 1px solid #ddd;
        }
        .order-items th, .order-items td {
            padding: 10px;
            text-align: left;
        }
        .order-items th {
            background-color: #f4f4f4;
        }
        .print-button {
            display: block;
            width: 100px;
            margin: 20px auto;
            padding: 10px;
            text-align: center;
            background-color: #3085d6;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .print-button:hover {
            background-color: #2874a6;
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
                        <div class="container">
                            <h5 class="text-center"><b>Brand Name</b></h5>
                            <h5 class="text-center">Address Here</h5>
                            <h5 class="text-center">Phone: 0131111111</h5>
                            <div class="row">
                                <h5 class="text-center col-md-6">Date: 09/04/2024</h5>
                                <h5 class="text-center col-md-6">Time: 2:51:33 PM</h5>
                            </div>
                            <h5 class="text-center"><b>Invoice {{ $orderData->order_number }}</b></h5>

                            {{--<div class="order-details">
                                <h3>Order Details</h3>
                                <p><strong>Customer Name:</strong> {{ $orderData->customer_name }}</p>
                                <p><strong>Total Amount:</strong> ${{ number_format($orderData->total_amount, 2) }}</p>
                                <p><strong>Payment Status:</strong> {{ $orderData->payment_status }}</p>
                                <!-- Add more order details as needed -->
                            </div>--}}

                            <div class="order-items">
                                <h3>Order Items</h3>
                                <table>
                                    <thead>
                                    <tr>
                                        <th>Item Name</th>
                                        <th>Quantity</th>
                                        <th>Price</th>
                                        <th>Total</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach ($orderDtlData as $item)
                                        <tr>
                                            <td>{{ $item->name }}</td>
                                            <td>{{ $item->quantity }}</td>
                                            <td>${{ number_format($item->price, 2) }}</td>
                                            <td>${{ number_format($item->quantity * $item->price, 2) }}</td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>

                            <button class="print-button" onclick="window.print();">Print Invoice</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>
    <!-- End #main -->
@endsection
@section('script')
    <script>

    </script>

@endsection
