@extends('layout.appmain')
@section('title', '- Due Report')
@section('style')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.6.0/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.19/jspdf.plugin.autotable.min.js"></script>
@endsection
@section('main')

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Due Report</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item">Report</li>
                    <li class="breadcrumb-item active">Due Report</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->

        <section class="section dashboard">
            <div class="row">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-9">
                                <h5 class="card-title">Due Report</h5>
                            </div>
                            <div class="col-md-3 mt-2">
                                <div class="btn-group btn-sm" role="group" aria-label="Basic outlined example">
                                    <button type="button" class="btn btn-outline-success btn-sm" id="exportExcel">Export Excel</button>
                                    <button type="button" class="btn btn-outline-success btn-sm" id="exportCSV">Export CSV</button>
                                    <button type="button" class="btn btn-outline-success btn-sm">Export PDF</button>
                                </div>
                            </div>
                        </div>

                        <form method="GET" action="{{ route('Reports.dues') }}">
                            <div class="row mb-3">
                                <div class="col">
                                    <label for="start_date">Start Date:</label>
                                    <input type="date" name="start_date" class="form-control" value="{{ $startDate ?? '' }}">
                                </div>
                                <div class="col">
                                    <label for="end_date">End Date:</label>
                                    <input type="date" name="end_date" class="form-control" value="{{ $endDate ?? '' }}">
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Filter</button>
                        </form>

                        <table class="table mt-4">
                            <thead>
                            <tr>
                                <th>Order Number</th>
                                <th>Order Date</th>
                                <th>Customer Info</th>
                                <th>Total Amount</th>
                                <th>Received Amount</th>
                                <th>Due Amount</th>
                                <th>Payment Status</th>
                                <th>Payment Method</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($dueOrders as $order)
                                <tr>
                                    <td>{{ $order->order_number }}</td>
                                    <td>{{ \Carbon\Carbon::parse($order->order_date)->format('Y-m-d') }}</td>
                                    <td>{{ $order->cust_id }} - ({{ $order->customer->name ?? 'Unknown' }})</td>
                                    <td>${{ number_format($order->total_amount, 2) }}</td>
                                    <td>${{ number_format($order->received_amount, 2) }}</td>
                                    <td>${{ number_format($order->total_amount - $order->received_amount, 2) }}</td>
                                    <td>{{ $order->payment_status }}</td>
                                    <td>{{ $order->payment_method }}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>


                    </div>
                </div>
            </div>
        </section>

    </main>

    <!-- End #main -->
@endsection
@section('script')

@endsection
