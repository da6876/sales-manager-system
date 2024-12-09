@extends('layout.appmain')
@section('title', '- Profit Loss Report')
@section('style')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.6.0/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.19/jspdf.plugin.autotable.min.js"></script>
@endsection
@section('main')

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Profit Loss Report</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item">Report</li>
                    <li class="breadcrumb-item active">Profit Loss Report</li>
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
                                <h5 class="card-title">Profit Loss Report</h5>
                            </div>
                            <div class="col-md-3 mt-2">
                                <div class="btn-group btn-sm" role="group" aria-label="Basic outlined example">
                                    <button type="button" class="btn btn-outline-success btn-sm" id="exportExcel">Export Excel</button>
                                    <button type="button" class="btn btn-outline-success btn-sm" id="exportCSV">Export CSV</button>
                                    <button type="button" class="btn btn-outline-success btn-sm">Export PDF</button>
                                </div>
                            </div>
                        </div>

                        <form method="GET" action="{{ route('Reports.salesInfoReport') }}">
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
                            <button type="submit" class="btn btn-primary">Generate Report</button>
                        </form>

                        <div class="mt-4">
                            <h4>Total Sales: {{ number_format($totalSales, 2) }} TK</h4>
                            <h4>Total Orders: {{ $totalOrders }}</h4>
                        </div>

                        <table class="table mt-4">
                            <thead>
                            <tr>
                                <th>Order Number</th>
                                <th>Order Date</th>
                                <th>Customer Info</th>
                                <th>Product Name</th>
                                <th>Quantity</th>
                                <th>Price</th>
                                <th>Total Amount</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($salesData as $sale)
                                <tr>
                                    <td>{{ $sale->order_number }}</td>
                                    <td>{{ \Carbon\Carbon::parse($sale->order_date)->format('Y-m-d H:i:s') }}</td>
                                    <td>{{ $sale->customer_info }}</td>
                                    <td>{{ $sale->product_name }}</td>
                                    <td>{{ $sale->quantity }}</td>
                                    <td>{{ number_format($sale->price, 2) }} TK</td>
                                    <td>{{ number_format($sale->total_amount, 2) }} TK</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </section>

    </main>
    <div class="modal fade" id="modalDialogScrollable" tabindex="-1">
        <div class="modal-dialog modal-dialog-scrollable  modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Sale Info Details</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="exportPdf">Export PDF</button>
                </div>
            </div>
        </div>
    </div><!-- End Modal Dialog Scrollable-->
    <!-- End #main -->
@endsection
@section('script')

@endsection
