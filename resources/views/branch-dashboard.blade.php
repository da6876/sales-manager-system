@extends('layout.appmain')
@section('title', '- Welcome')

@section('main')

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Dashboard</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item active">Dashboard</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->
        <section class="section dashboard">
            <div class="row">
                <!-- Left side columns -->
                <div class="col-lg-12">
                    <div class="row">

                        <!-- Sales Card -->
                        <div class="col-xxl-4 col-md-4">
                            <div class="card info-card customers-card">
                                <div class="card-body">
                                    <h5 class="card-title">Customers <span>| This Month</span></h5>
                                    <div class="d-flex align-items-center">
                                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                            <i class="bi bi-people"></i>
                                        </div>
                                        <div class="ps-3">
                                            <h6 id="customer-count">0</h6>
                                            <span class="text-success small pt-1 fw-bold" id="customer-change">0%</span>
                                            <span class="text-muted small pt-2 ps-1">increase</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Sales Card -->

                        <!-- Revenue Card -->
                        <div class="col-xxl-4 col-md-4">
                            <div class="card info-card revenue-card">
                                <div class="card-body">
                                    <h5 class="card-title">Revenue <span>| This Month</span></h5>
                                    <div class="d-flex align-items-center">
                                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                            <i class="bi bi-currency-dollar"></i>
                                        </div>
                                        <div class="ps-3">
                                            <h6 id="revenue-count">$0</h6>
                                            <span class="text-success small pt-1 fw-bold" id="revenue-change">0%</span>
                                            <span class="text-muted small pt-2 ps-1">increase</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Revenue Card -->

                        <!-- Customers Card -->
                        <div class="col-xxl-4 col-xl-4">
                            <div class="card info-card sales-card">
                                <div class="card-body">
                                    <h5 class="card-title">Sales <span>| Today</span></h5>
                                    <div class="d-flex align-items-center">
                                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                            <i class="bi bi-cart"></i>
                                        </div>
                                        <div class="ps-3">
                                            <h6 id="sales-count">0</h6>
                                            <span class="text-success small pt-1 fw-bold" id="sales-change">0%</span>
                                            <span class="text-muted small pt-2 ps-1">increase</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Customers Card -->

                        <!-- Reports -->
                        <div class="col-6">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Reports</h5>
                                    <!-- Line Chart -->
                                    <div id="reportsChart"></div>

                                    <script>
                                        document.addEventListener("DOMContentLoaded", () => {
                                            fetch('/reports-data')
                                                .then(response => response.json())
                                                .then(data => {
                                                    const customerDates = Object.keys(data.customers);
                                                    const customerCounts = Object.values(data.customers);
                                                    const orderCounts = Object.values(data.orders);
                                                    document.getElementById('customer-count').innerText = data.total_customers;
                                                    document.getElementById('revenue-count').innerText = `${data.revenue_this_month.toLocaleString()} TK`;
                                                    document.getElementById('sales-count').innerText = data.sales_today;
                                                    new ApexCharts(document.querySelector("#reportsChart"), {
                                                        series: [{
                                                            name: 'Customers',
                                                            data: customerCounts,
                                                        }, {
                                                            name: 'Orders',
                                                            data: orderCounts
                                                        }],
                                                        chart: {
                                                            height: 350,
                                                            type: 'area',
                                                            toolbar: {
                                                                show: false
                                                            },
                                                        },
                                                        markers: {
                                                            size: 4
                                                        },
                                                        colors: ['#4154f1', '#ff771d'],
                                                        fill: {
                                                            type: "gradient",
                                                            gradient: {
                                                                shadeIntensity: 1,
                                                                opacityFrom: 0.3,
                                                                opacityTo: 0.4,
                                                                stops: [0, 90, 100]
                                                            }
                                                        },
                                                        dataLabels: {
                                                            enabled: false
                                                        },
                                                        stroke: {
                                                            curve: 'smooth',
                                                            width: 2
                                                        },
                                                        xaxis: {
                                                            categories: customerDates,
                                                            type: 'datetime',
                                                        },
                                                        tooltip: {
                                                            x: {
                                                                format: 'dd/MM/yy'
                                                            },
                                                        }
                                                    }).render();
                                                })
                                                .catch(error => console.error('Error fetching data:', error));
                                        });
                                    </script>
                                    <!-- End Line Chart -->
                                </div>
                            </div>
                        </div>
                        <!-- End Reports -->

                        <!-- Recent Sales -->
                        <div class="col-6">
                            <div class="card recent-sales overflow-auto">

                                <div class="card-body">
                                    <h5 class="card-title">Recent Sales <span>| This Week</span></h5>

                                    <table class="table table-borderless" id="recentSalesTable">
                                        <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Customer</th>
                                            <th scope="col">Product</th>
                                            <th scope="col">Price</th>
                                            <th scope="col">Status</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <!-- Data will be populated here -->
                                        </tbody>
                                    </table>

                                </div>

                            </div>
                        </div>
                        <!-- End Recent Sales -->

                        <!-- Top Selling -->
                        <div class="col-12">
                            <div class="card top-selling overflow-auto">

                                <div class="card-body pb-0">
                                    <h5 class="card-title">Top Selling <span>| This Week</span></h5>

                                    <table class="table table-borderless" id="topSellingTable">
                                        <thead>
                                        <tr>
                                            <th scope="col">Preview</th>
                                            <th scope="col">Product</th>
                                            <th scope="col">Price</th>
                                            <th scope="col">Sold</th>
                                            <th scope="col">Revenue</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <!-- Data will be populated here -->
                                        </tbody>
                                    </table>

                                </div>

                            </div>
                        </div>
                        <!-- End Top Selling -->

                    </div>
                </div>
                <!-- End Left side columns -->

            </div>
        </section>

    </main>
    <!-- End #main -->
@endsection
@section('script')
    <script>
        $(document).ready(function() {
            loadRecentSales();
            loadTopSellingProducts();

            $.ajax({
                url: '/operation-logs',
                method: 'GET',
                dataType: 'json',
                success: function(data) {
                    let activityContainer = $('.activity');
                    activityContainer.empty(); // Clear existing content

                    data.forEach(log => {
                        const operationType = log.action.charAt(0).toUpperCase() + log.action.slice(1);
                        const date = new Date(log.created_at).toLocaleString();

                        const message = `${operationType} on <b>${log.table_name}</b> by <b>${log.user_name}</b> at ${date}`;

                        const timeAgo = getTimeAgo(new Date(log.created_at)); // Implement this function as needed
                        const badgeClass = 'badge-success';

                        activityContainer.append(`
                                <div class="activity-item d-flex">
                                    <div class="activite-label">${timeAgo}</div>
                                    <i class='bi bi-circle-fill activity-badge ${badgeClass} align-self-start'></i>
                                    <div class="activity-content">
                                        ${message}
                                    </div>
                                </div><!-- End activity item-->
                            `);
                        });
                },
                error: function(xhr, status, error) {
                    console.error("AJAX error:", status, error);
                }
            });

            // Optional: Function to get a time-ago string
            function getTimeAgo(date) {
                const seconds = Math.floor((new Date() - date) / 1000);
                let interval = Math.floor(seconds / 31536000);
                if (interval >= 1) return interval + " year" + (interval > 1 ? "s" : "") + " ago";
                interval = Math.floor(seconds / 2592000);
                if (interval >= 1) return interval + " month" + (interval > 1 ? "s" : "") + " ago";
                interval = Math.floor(seconds / 86400);
                if (interval >= 1) return interval + " dy" + (interval > 1 ? "s" : "") + " ago";
                interval = Math.floor(seconds / 3600);
                if (interval >= 1) return interval + " hr" + (interval > 1 ? "s" : "") + " ago";
                interval = Math.floor(seconds / 60);
                if (interval >= 1) return interval + " mn" + (interval > 1 ? "s" : "") + " ago";
                return "just now";
            }
        });
        // Function to calculate time ago
        function calculateTimeAgo(dateString) {
            const date = new Date(dateString);
            const now = new Date();
            const seconds = Math.floor((now - date) / 1000);

            if (seconds < 60) return `${seconds} sec`;
            if (seconds < 3600) return `${Math.floor(seconds / 60)} min`;
            if (seconds < 86400) return `${Math.floor(seconds / 3600)} hr`;
            return `${Math.floor(seconds / 86400)} day`;
        }
        // Function to get badge class based on OperationType
        function getBadgeClass(operationType) {
            switch (operationType) {
                case 'insert': return 'text-success';
                case 'update': return 'text-primary';
                case 'delete': return 'text-danger';
                default: return 'text-muted';
            }
        }

        function loadRecentSales() {
            $.ajax({
                url: "{{ route('recent.sales') }}",
                method: "GET",
                success: function(data) {
                    let rows = '';
                    data.forEach((sale) => {
                        // Determine badge class and text based on the status
                        let badgeClass;
                        let badgeText;

                        switch (sale.status) {
                            case 'A':
                                badgeClass = 'bg-success';
                                badgeText = 'Active';
                                break;
                            case 'I':
                                badgeClass = 'bg-danger';
                                badgeText = 'Inactive';
                                break;
                            default:
                                badgeClass = 'bg-secondary';
                                badgeText = 'Unknown';
                                break;
                        }

                        rows += `
                            <tr>
                                <th scope="row"><a href="#">#${sale.order_number}</a></th>
                                <td>${sale.customer_name}</td>
                                <td><a href="#" class="text-primary">${sale.product_name}</a></td>
                                <td>$${sale.total_price}</td>
                                <td><span class="badge ${badgeClass}">${badgeText}</span></td>
                            </tr>
                        `;
                    });
                    $('#recentSalesTable tbody').html(rows);
                },
                error: function(xhr) {
                    console.error(xhr.responseText);
                }
            });
        }

        function loadTopSellingProducts() {
            $.ajax({
                url: "{{ route('top.selling.products') }}",
                method: "GET",
                success: function(data) {
                    let rows = '';
                    data.forEach((product) => {
                        rows += `
                            <tr>
                                <th scope="row"><a href="#"><img src="${product.image1}" alt="" style="width: 50px;"></a></th>
                                <td><a href="#" class="text-primary fw-bold">${product.title}</a></td>
                                <td>${(product.total_revenue / product.total_sold).toFixed(2)} TK</td>
                                <td class="fw-bold">${product.total_sold}</td>
                                <td>${product.total_revenue}  TK</td>
                            </tr>
                        `;
                    });
                    $('#topSellingTable tbody').html(rows);
                },
                error: function(xhr) {
                    console.error(xhr.responseText);
                }
            });
        }
    </script>
@endsection
