@extends('layout.appmain')
@section('title', '- Alert')

@section('main')

<main id="main" class="main">

    <div class="pagetitle">
        <h1>Side Menu</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                <li class="breadcrumb-item active">Side Menu</li>
            </ol>
        </nav>
    </div>
    <!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">
            <div class="card">
            <div class="card-body">
                <h5 class="card-title">Add Side Menu</h5>

                <!-- Multi Columns Form -->
                <form class="row g-3">
                    <div class="col-md-6">
                        <label for="parent_id" class="form-label">Parent Menu</label>
                        <input type="text" class="form-control" id="parent_id" name="parent_id">
                    </div>
                    <div class="col-md-6">
                        <label for="name" class="form-label">City</label>
                        <input type="text" class="form-control" id="name" name="name">
                    </div>
                    <div class="col-md-6">
                        <label for="icon" class="form-label">Icon</label>
                        <input type="text" class="form-control" id="icon" name="icon">
                    </div>
                    <div class="col-md-6">
                        <label for="url" class="form-label">URL</label>
                        <input type="text" class="form-control" id="url" name="url">
                    </div>
                    <div class="col-md-6">
                        <label for="order" class="form-label">Order</label>
                        <input type="text" class="form-control" id="order" name="order">
                    </div>
                    <div class="col-md-6">
                        <label for="status" class="form-label">Status</label>
                        <select id="status" class="form-select" name="status">
                            <option selected>Select Status</option>
                            <option value="A">Active</option>
                            <option value="I">InActive</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="is_collapsed" name="is_collapsed">
                            <label class="form-check-label" for="is_collapsed">
                                IS Collapsed
                            </label>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="is_heading" name="is_heading">
                            <label class="form-check-label" for="is_heading">
                                IS Heading
                            </label>
                        </div>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="reset" class="btn btn-secondary">Reset</button>
                    </div>
                </form>
                <!-- End Multi Columns Form -->

            </div>
        </div>
        </div>
    </section>

</main>
<!-- End #main -->
@endsection
