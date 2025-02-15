@extends('layout.appmain')
@section('title', '- Pro. Purchase')

@section('main')

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Pro. Purchase</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item">Web Setup</li>
                    <li class="breadcrumb-item active">Pro. Purchase</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->

        <section class="section dashboard">
            <div class="row">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-10">
                                <h5 class="card-title">Pro. Purchase</h5>
                            </div>
                            <div class="col-md-2 mt-3 ">
                                <a href="{{route('Purchase.create')}}" type="button" class="btn btn-outline-success btn-sm text-right"> Add New <i class="bi bi-plus"></i></a>
                            </div>
                        </div>
                        <form action="#" id="fromData" style="display: none">@csrf</form>
                        <table class="table table-hover table-sm" id="dataTableItem">
                            <thead>
                            <tr>
                                <th>Stock ID</th>
                                <th>Product Name</th>
                                <th>Category</th>
                                <th>Sub Category</th>
                                <th>Color</th>
                                <th>Size</th>
                                <th>Purchase Date</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                            </thead>
                        </table>
                        <!-- End Table with hoverable rows -->

                    </div>
                </div>
            </div>
        </section>

    </main>
    <!-- End #main -->
@endsection
@section('script')
    <script>
        var TableData;
        var url = "{{ route('all.Purchase') }}"; // Assuming you have a route that returns stock data.

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
                        d.form_data = $("#fromData").serialize(); // Send form data as POST data if any filters exist
                    }
                },
                columns: [
                    { data: 'id' },
                    { data: 'product_name' }, // Assuming product name is provided in the response
                    { data: 'category_name' }, // Assuming category name is provided in the response
                    { data: 'sub_category_name' }, // Assuming sub-category name is provided in the response
                    { data: 'color_name' }, // Assuming color name is provided in the response
                    { data: 'size_name' }, // Assuming size name is provided in the response
                    { data: 'Purchase_Date' },
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
                            return `<button type="button" class="btn btn-outline-info btn-sm edit-button" data-id="${row.id}"><i class="bi bi-pencil-fill"></i></button>
                        <button type="button" class="btn btn-outline-danger btn-sm delete-button" data-id="${row.id}"><i class="bi bi-x-circle-fill"></i></button>`;
                        }
                    }
                ],
                rowCallback: function(row, data) {
                    if (data.parent_id) {
                        $(row).addClass('child-row');
                    }
                }
            });

            // Event delegation to handle click events
            $('#dataTableItem').on('click', '.edit-button', function() {
                var id = $(this).data('id');
                showData(id);
            });

            $('#dataTableItem').on('click', '.delete-button', function() {
                var id = $(this).data('id');
                deleteData(id);
            });
        }

        $(document).ready(function() {
            LoadDataTable();
        });

        // Function to show data on edit


        // Function to delete data
        function deleteData(id) {
            var csrf_token = $('meta[name="csrf-token"]').attr('content');
            swal({
                title: "Are you sure?",
                text: "Once deleted, you will not be able to recover this imaginary file!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
                .then((willDelete) => {
                    if (willDelete) {
                        $.ajax({
                            url: "{{ url('Stock') }}" + '/' + id,
                            type: "POST",
                            data: {'_method': 'DELETE', '_token': csrf_token},
                            success: function (data) {
                                console.log(data);
                                var dataResult = JSON.parse(data);
                                if (dataResult.statusCode == 200) {
                                    $('#dataTableItem').DataTable().ajax.reload();
                                    swal({
                                        title: "Delete Done",
                                        text: "Poof! Your data file has been deleted!",
                                        icon: "success",
                                        button: "Done"
                                    });
                                } else {
                                    swal("Error occured !!");
                                }
                            }, error: function (data) {
                                console.log(data);
                                swal({
                                    title: "Opps...",
                                    text: "Error occured !",
                                    icon: "error",
                                    button: 'Ok ',
                                });
                            }
                        });
                    } else {
                        swal("Your imaginary file is safe!");
                    }
                });
        }
    </script>
@endsection
