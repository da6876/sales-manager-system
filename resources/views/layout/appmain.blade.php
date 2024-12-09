<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Sales Manage @yield("title")</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <meta name="csrf-token" content="{{ csrf_token() }}" />

    <!-- Favicons -->
    <link id="applogo" rel="icon">
    <link id="applogo1" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="{{asset('assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/bootstrap-icons/bootstrap-icons.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/quill/quill.snow.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/quill/quill.bubble.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/remixicon/remixicon.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/simple-datatables/style.css')}}" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="{{asset('assets/css/style.css')}}" rel="stylesheet">
    <style>
        table.dataTable {
            font-family: "Nunito", sans-serif;
        }
        table.dataTable thead th {
            font-family: "Nunito", sans-serif;font-weight: 600;
            font-size: 15px;
        }
        table.dataTable tbody td {
            font-family: "Nunito", sans-serif;font-weight: 400;
            font-size: 13px;
        }
        .dataTables_wrapper .dataTables_paginate .paginate_button {
            font-family: 'FontAwesome';
        }
    </style>
    @yield('style')
</head>

<body style="background-color: #fff6ef;">

<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center"  style="background-color: #ffe6aa;">

    <div class="d-flex align-items-center justify-content-between">
        <a href="{{url('/')}}" class="logo d-flex align-items-center">
            <img  alt="" id="logoPreview">
            <span class="d-none d-lg-block" id="brandName"></span>
        </a>
        <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
        <form class="search-form d-flex align-items-center" method="POST" action="#">
            <input type="text" name="query" placeholder="Search" title="Enter search keyword">
            <button type="submit" title="Search"><i class="bi bi-search"></i></button>
        </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">

            <li class="nav-item d-block d-lg-none">
                <a class="nav-link nav-icon search-bar-toggle " href="#">
                    <i class="bi bi-search"></i>
                </a>
            </li><!-- End Search Icon-->

            <li class="nav-item dropdown">
                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                    <i class="bi bi-bell"></i>
                    <span class="badge bg-primary badge-number" id="notification-count">0</span>
                </a><!-- End Notification Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications" id="notification-list">
                    <!-- Notification items will be injected here via JavaScript -->
                </ul><!-- End Notification Dropdown Items -->
            </li>
            <!-- End Notification Nav -->

            <li class="nav-item dropdown">

                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                    <i class="bi bi-chat-left-text"></i>
                    <span class="badge bg-success badge-number">3</span>
                </a><!-- End Messages Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
                    <li class="dropdown-header">
                        You have 3 new messages
                        <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="message-item">
                        <a href="#">
                            <img src="{{asset('assets/img/messages-1.jpg')}}" alt="" class="rounded-circle">
                            <div>
                                <h4>Maria Hudson</h4>
                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                <p>4 hrs. ago</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="message-item">
                        <a href="#">
                            <img src="{{asset('assets/img/messages-2.jpg')}}" alt="" class="rounded-circle">
                            <div>
                                <h4>Anna Nelson</h4>
                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                <p>6 hrs. ago</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="message-item">
                        <a href="#">
                            <img src="{{asset('assets/img/messages-3.jpg')}}" alt="" class="rounded-circle">
                            <div>
                                <h4>David Muldon</h4>
                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                <p>8 hrs. ago</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="dropdown-footer">
                        <a href="#">Show all messages</a>
                    </li>

                </ul><!-- End Messages Dropdown Items -->

            </li><!-- End Messages Nav -->
            @if(auth()->check())
            <li class="nav-item dropdown pe-3">

                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                    <img src="{{ auth()->user()->profile_image ?: 'assets/img/profile-img.jpg' }}"
                         onerror="this.onerror=null; this.src='assets/img/profile-img.jpg';" alt="Profile" class="rounded-circle">
                    <span class="d-none d-md-block dropdown-toggle ps-2">{{auth()->user()->name}}</span>
                </a><!-- End Profile Iamge Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li class="dropdown-header">
                        <h6>{{auth()->user()->name}}</h6>
                        <span>{{ auth()->user()->getRoleNames()->first() ?? 'No Role Assigned' }}</span>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="{{url('user-profile')}}">
                            <i class="bi bi-person"></i>
                            <span>My Profile</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="{{url('user-profile')}}">
                            <i class="bi bi-gear"></i>
                            <span>Account Settings</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                            <i class="bi bi-box-arrow-right"></i>
                            <span>Sign Out</span>
                        </a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            @csrf
                        </form>
                    </li>

                </ul><!-- End Profile Dropdown Items -->
            </li><!-- End Profile Nav -->
            @endif
        </ul>
    </nav><!-- End Icons Navigation -->

</header>
<!-- End Header -->
@include('layout.menu')
{{--<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        <!-- Sidebar items will be injected here -->
    </ul>
</aside>--}}
@yield('main')

<!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer" class="footer">
    <div class="copyright">
        &copy; Copyright <strong><span id="brandFooter">Sales Manager System</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
        Designed by <a target="_blank" href="https://sourceofcapacity.com/">SOC</a>
    </div>
</footer><!-- End Footer -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="{{asset('assets/vendor/apexcharts/apexcharts.min.js')}}"></script>
<script src="{{asset('assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('assets/vendor/chart.js/chart.umd.js')}}"></script>
<script src="{{asset('assets/vendor/echarts/echarts.min.js')}}"></script>
<script src="{{asset('assets/vendor/quill/quill.js')}}"></script>
<script src="{{asset('assets/vendor/simple-datatables/simple-datatables.js')}}"></script>
<script src="{{asset('assets/vendor/tinymce/tinymce.min.js')}}"></script>
<script src="{{asset('assets/vendor/php-email-form/validate.js')}}"></script>

<!-- Template Main JS File -->
<script src="{{asset('assets/js/main.js')}}"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="{{asset('assets/js/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('assets/js/dataTables.bootstrap4.min.js')}}"></script>
<script src="{{ asset('assets/js/sweetalert.min.js') }}"></script>

<script>
    $(document).ready(function() {
        $.ajax({
            url: "{{ url('getBrandInfo') }}",
            type: "GET",
            dataType: "JSON",
            success: function (data) {
                if (data.statusCode && data.statusCode === 200) {
                    var brandInfo = data.data;
                    $('#brandName').text(brandInfo.name).removeClass('d-none');
                    $('#brandFooter').text(brandInfo.name);
                    var logoUrl = "{{ url('/') }}/" + brandInfo.logo;
                    $('#logoPreview').attr('src', logoUrl).show();
                    $('#applogo').attr('href', logoUrl);
                    $('#applogo1').attr('href', logoUrl);
                    //document.title = brandInfo.name;
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

        $.ajax({
            url: '/operation-logs-notification',
            method: 'GET',
            dataType: 'json',
            success: function(data) {
                let notificationList = $('#notification-list');
                notificationList.find('.notification-item').remove();

                let notificationCount = data.length;
                notificationList.prepend(`
                    <li class="dropdown-header">
                        You have <span id="notification-count-header">0</span> new notifications
                        <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
                    </li>
                    <li><hr class="dropdown-divider"></li>
                `);
                $('#notification-count').text(notificationCount);
                $('#notification-count-header').text(notificationCount);
                data.forEach(log => {
                    const operationType = log.action.charAt(0).toUpperCase() + log.action.slice(1);
                    const date = new Date(log.created_at).toLocaleString();
                    let badgeClass = '';

                    // Assign badge class based on the action type
                    if (log.action === 'create') {
                        badgeClass = 'bi bi-check-circle text-success';
                    } else if (log.action === 'update') {
                        badgeClass = 'bi bi-info-circle text-primary';
                    } else if (log.action === 'delete') {
                        badgeClass = 'bi bi-x-circle text-danger';
                    }else {
                        badgeClass = 'bi bi-exclamation-circle text-warning';
                    }

                    // Append the notification item
                    notificationList.prepend(`
                    <li class="notification-item">
                        <i class="${badgeClass}"></i>
                        <div>
                            <h4>${operationType} on <b>${log.table_name}</b></h4>
                            <p>by <b>${log.user_name}</b></p>
                            <p>${date}</p>
                        </div>
                    </li>
                    <li><hr class="dropdown-divider"></li>
                `);
                });
            },
            error: function(xhr, status, error) {
                console.error("AJAX error:", status, error);
            }
        });
    });

    function showErrors(errors) {
        $('.form-control').removeClass('is-invalid');
        $('.invalid-feedback').remove();

        $.each(errors, function (key, errorMessages) {
            var inputElement = $('#' + key);
            inputElement.addClass('is-invalid');

            var errorDiv = $('<div class="invalid-feedback"></div>').text(errorMessages[0]);
            inputElement.after(errorDiv);
        });
    }
</script>
@yield('script')
</body>

</html>
