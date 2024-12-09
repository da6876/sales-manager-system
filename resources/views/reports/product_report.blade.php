@extends('layout.appmain')
@section('title', '- Product Report')
@section('style')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.6.0/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.19/jspdf.plugin.autotable.min.js"></script>
@endsection
@section('main')

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Product Report</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item">Report</li>
                    <li class="breadcrumb-item active">Product Report</li>
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
                                <h5 class="card-title">Product Report</h5>
                            </div>
                            <div class="col-md-3 mt-2">
                                <div class="btn-group btn-sm" role="group" aria-label="Basic outlined example">
                                    <button type="button" class="btn btn-outline-success btn-sm" id="exportExcel">Export Excel</button>
                                    <button type="button" class="btn btn-outline-success btn-sm" id="exportCSV">Export CSV</button>
                                    <button type="button" class="btn btn-outline-success btn-sm">Export PDF</button>
                                </div>
                            </div>
                        </div>

                        <form method="GET" action="{{ route('Reports.product') }}">
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
                                <th>ID</th>
                                <th>Title</th>
                                <th>MRP Price</th>
                                <th>RP Price</th>
                                <th>Status</th>
                                <th>Created By</th>
                                <th>Created Date</th>
                                <th>Updated By</th>
                                <th>Updated Date</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($products as $product)
                                <tr>
                                    <td>{{ $product->id }}</td>
                                    <td>{{ $product->title }}</td>
                                    <td>${{ number_format($product->price_mrp, 2) }}</td>
                                    <td>${{ number_format($product->price_rp, 2) }}</td>
                                    <td>{{ $product->status }}</td>
                                    <td>{{ $product->create_by }}</td>
                                    <td>{{ \Carbon\Carbon::parse($product->create_date)->format('Y-m-d H:i:s') }}</td>
                                    <td>{{ $product->update_by }}</td>
                                    <td>{{ \Carbon\Carbon::parse($product->update_date)->format('Y-m-d H:i:s') }}</td>
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
