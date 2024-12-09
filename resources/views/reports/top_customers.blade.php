@extends('layout.appmain')
@section('title', '- Top Customers Reports')
@section('style')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.6.0/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.19/jspdf.plugin.autotable.min.js"></script>
@endsection
@section('main')

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Top Customers Reports</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item">Report</li>
                    <li class="breadcrumb-item active">Top Customers Reports</li>
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
                                <h5 class="card-title">Top Customers Reports</h5>
                            </div>
                            <div class="col-md-3 mt-2">
                                <div class="btn-group btn-sm" role="group" aria-label="Basic outlined example">
                                    <button type="button" class="btn btn-outline-success btn-sm" id="exportExcel">Export Excel</button>
                                    <button type="button" class="btn btn-outline-success btn-sm" id="exportCSV">Export CSV</button>
                                    <button type="button" class="btn btn-outline-success btn-sm">Export PDF</button>
                                </div>
                            </div>
                        </div>

                        <table class="table table-hover table-responsive table-sm" id="dataTableItem">
                            <thead>
                            <tr>
                                <th>No</th>
                                <th>Customer Name</th>
                                <th>Customer Phone</th>
                                <th>Customer Email</th>
                                <th>Customer Address</th>
                                <th>Total Amount</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php
                                $count=1;
                            @endphp
                            @foreach($topCustomers as $customer)

                                <tr>
                                    <td>{{$count++}}</td>
                                    <td>{{ $customer->name }}</td>
                                    <td>{{ $customer->phone }}</td>
                                    <td>{{ $customer->email }}</td>
                                    <td>{{ $customer->address }}</td>
                                    <td>{{ number_format($customer->total_spent, 2) }} TK</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                        <!-- End Table with hoverable rows -->

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
