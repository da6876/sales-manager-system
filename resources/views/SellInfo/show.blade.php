@extends('layout.appmain')
@section('title', '- Sale Info')
@section('style')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.6.0/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.19/jspdf.plugin.autotable.min.js"></script>
@endsection
@section('main')

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Sale Info</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item">report</li>
                    <li class="breadcrumb-item active">Sale Info</li>
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
                                <h5 class="card-title">Sale Info</h5>
                            </div>
                            <div class="col-md-3 mt-2">
                                <div class="btn-group btn-sm" role="group" aria-label="Basic outlined example">
                                    <button type="button" class="btn btn-outline-success btn-sm" id="exportExcel">Export Excel</button>
                                    <button type="button" class="btn btn-outline-success btn-sm" id="exportCSV">Export CSV</button>
                                    <button type="button" class="btn btn-outline-success btn-sm">Export PDF</button>
                                </div>
                            </div>
                        </div>
                        <form action="#" id="fromData" style="display: none">@csrf</form>
                        <table class="table table-hover table-responsive table-sm" id="dataTableItem">
                            <thead>
                            <tr>
                                <th scope="col">Order No</th>
                                <th scope="col">Customer Info</th>
                                <th scope="col">Pay Mode</th>
                                <th scope="col">Amount</th>
                                <th scope="col">Order Date</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action</th>
                            </tr>
                            </thead>
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
                    <table>
                        <thead>
                        <tr>
                            <th>Order No</th>
                            <th>Customer Name</th>
                            <th>Customer Phone</th>
                            <th>Total Amount</th>
                            <th>Vat Amount</th>
                            <th>Discount Amount</th>
                            <th>Payment Method</th>
                            <th>Order Date</th>
                        </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
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
    <script>
        $(document).ready(function() {
            $('#downloadPdfButton').click(function() {
                fetchSaleInfo();
                $('#modalDialogScrollable').modal('show');
            });
        });

        function fetchSaleInfo() {
            var fetchSaleInfoUrl = '{{ url('getSaleInfoData') }}';
            $.ajax({
                url: fetchSaleInfoUrl,
                method: 'GET',
                success: function(data) {
                    var tableBody = $('#modalDialogScrollable .modal-body tbody');
                    tableBody.empty(); // Clear any existing rows

                    // Loop through the data and append rows to the table
                    data.forEach(function(item) {
                        var row = '<tr>' +
                            '<td>' + item.order_number + '</td>' +
                            '<td>' + item.name + '</td>' +
                            '<td>' + item.phone + '</td>' +
                            '<td>' + item.total_amount + '</td>' +
                            '<td>' + item.vat_amount + '</td>' +
                            '<td>' + item.discount_amount + '</td>' +
                            '<td>' + item.payment_method + '</td>' +
                            '<td>' + item.order_date + '</td>' +
                            '</tr>';
                        tableBody.append(row);
                    });

                    // Show the modal
                    var myModal = new bootstrap.Modal(document.getElementById('modalDialogScrollable'));
                    myModal.show();
                },
                error: function(xhr) {
                    console.error('Error fetching sale info:', xhr);
                }
            });
        }

        $(document).ready(function() {
            $('#exportPdf').on('click', function() {
                window.location.href = '{{ route('sale.export.pdf') }}';
            });
            $('#exportCSV').on('click', function() {
                window.location.href = '{{ route('sale.export.csv') }}';
            });
            $('#exportExcel').on('click', function() {
                window.location.href = '{{ route('sale.export.excel') }}';
            });
        });
    </script>

    <script>
        var TableData;
        var url = "{{ route('all.SellInfo') }}";

        function LoadDataTable() {
            TableData = $('#dataTableItem').DataTable({
                processing: true,
                serverSide: true,
                responsive: true,
                ajax: {
                    url: url,
                    type: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    data: function(d) {
                        d.form_data = $("#fromData").serialize(); // Send form data as POST data
                    }
                },
                columns: [
                    { data: 'order_number' },
                    { data: 'customer_info' },
                    { data: 'payment_method' },
                    { data: 'total_amount' },
                    { data: 'order_date' },
                    {
                        data: 'status',
                        render: function(data, type, row) {
                            let badgeClass = '';
                            let badgeText = '';
                            switch (data) {
                                case 'A':
                                    badgeClass = 'bg-success';
                                    badgeText = '<i class="bi bi-check-circle me-1"></i> Active';
                                    break;
                                case 'I':
                                    badgeClass = 'bg-info';
                                    badgeText = '<i class="bi bi-info-circle me-1"></i> InActive';
                                    break;
                                default:
                                    badgeClass = 'bg-secondary';
                                    badgeText = '<i class="bi bi-question-circle me-1"></i> Unknown';
                                    break;
                            }
                            return `<span class="badge ${badgeClass}">${badgeText}</span>`;
                        }
                    },
                    {
                        data: null,
                        orderable: false,
                        defaultContent: "NO Data",
                        render: function(data, type, row) {
                            return `
                            <button type="button" class="btn btn-outline-info btn-sm invoice-button" data-id="${row.order_number}"><i class="bi bi-clipboard-check"></i></button>
                            `;
                        }
                    }
                ],
                // Expandable rows
                rowCallback: function(row, data) {
                    if (data.parent_id) {
                        $(row).addClass('child-row');
                    }
                }
            });

            $('#dataTableItem').on('click', '.invoice-button', function() {
                var id = $(this).data('id');
                window.open(`{{ url('print-invoice') }}/` + id, '_blank');
            });

        }

        $(document).ready(function() {
            LoadDataTable();
        });
        $('#exportCsv').on('click', function() {
            var csv = [];
            var rows = TableData.rows({ search: 'applied' }).nodes();

            // Add header row
            var header = [];
            $(TableData.columns().header()).each(function() {
                header.push($(this).text());
            });
            csv.push(header.join(','));

            // Add data rows
            $(rows).each(function() {
                var row = [];
                $(this).find('td').each(function() {
                    row.push($(this).text());
                });
                csv.push(row.join(','));
            });

            // Create CSV file
            var csvFile = new Blob([csv.join('\n')], { type: 'text/csv' });
            var downloadLink = document.createElement('a');
            downloadLink.download = 'table-data.csv';
            downloadLink.href = window.URL.createObjectURL(csvFile);
            downloadLink.click();
        });
    </script>
@endsection
