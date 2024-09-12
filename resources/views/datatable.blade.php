@extends('layout.appmain')
@section('title', '- Web Settings')

@section('main')

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Web Settings</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item active">Web Settings </li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->

        <section class="section dashboard">
            <div class="row">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Web Setup</h5>

                        <!-- List group with custom content -->
                        <ol class="list-group">
                            <li type="button" onclick="getFunction('SidebarNav')" class="list-group-item d-flex justify-content-between align-items-start">
                                <div class="ms-2 me-auto">
                                    <div class="fw-bold"><i class="bi bi-star me-1 text-success"></i>  Side Navbar</div>
                                    Admin Side Menu Configration Here
                                </div>
                                <span class="badge bg-primary rounded-pill">8</span>
                            </li>
                            <li type="button" onclick="getFunction('BrandName')" class="list-group-item d-flex justify-content-between align-items-start">
                                <div class="ms-2 me-auto">
                                    <div class="fw-bold"><i class="bi bi-collection me-1 text-primary"></i> Brand Info</div>
                                    Website Brand Name
                                </div>
                                <span class="badge bg-primary rounded-pill">1</span>
                            </li>
                        </ol><!-- End with custom content -->

                    </div>
                </div>

            </div>
        </section>

    </main>
    <!-- End #main -->
@endsection
@section('script')
<script>
    function getFunction(name){
        window.location.href = name;
    }
</script>
@endsection
