@extends('layout.public')
@section('title', 'Reset Password')

@section('publicMain')
    <div class="container">

        <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                        <div class="card mb-3" style="background-color: #ffe6aa;">
                            <div class="card-body UserLogin text-center position-relative">
                                <img class="text-center pt-1" src="" alt="Logo Loading ..." id="logoPreview1" width="130px" height="100px">
                                <b> <h3 class="d-none d-lg-block" id="brandName"></h3></b>
                                <div class="">
                                    <h5 class="card-title text-center pb-0">Reset Your Password</h5>
                                    <p class="text-center small">Enter your Username or Email to Reset Password</p>
                                </div>

                                <div class="spinner-border position-absolute top-50 start-50 translate-middle" id="loader" style="display: none;" role="status">
                                    <span class="visually-hidden">Loading...</span>
                                </div>

                                <form class="row g-3 needs-validation" novalidate>@csrf
                                    <input type="hidden" name="latitude" id="latitude">
                                    <input type="hidden" name="longitude" id="longitude">
                                    <div class="col-12">
                                        <div class="input-group has-validation">
                                            <span class="input-group-text" id="inputGroupPrepend">@</span>
                                            <input type="text" name="email" class="form-control" id="email"
                                                  placeholder="Enter Username or Email" required>
                                            <div class="invalid-feedback"></div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100" type="button" onclick="loginNow()">Forget Password</button>
                                    </div>
                                </form>

                                <div class="credits mt-1" style="font-family: Arial, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">
                                    Designed by <a target="_blank" href="https://sourceofcapacity.com/">SOC</a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </section>

    </div>
    <!-- End #main -->
@endsection

@section('script')
    <script>
        getLocation();
        function getLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(
                    function(position) {
                        var latitude = position.coords.latitude;
                        var longitude = position.coords.longitude;
                        document.getElementById('latitude').value = latitude;
                        document.getElementById('longitude').value = longitude;
                    },
                    function(error) {
                        console.error('Error getting location:', error);
                        var retry = confirm('Location access is required for this feature. Please enable location services and try again. Click "OK" to retry or "Cancel" to submit without location.');
                        if (retry) {
                            getLocation();
                        }
                    }
                );
            } else {
                console.error('Geolocation is not supported by this browser.');
                alert('Geolocation is not supported by this browser. Some features may not work properly.');
            }
        }

        function loginNow() {
            const loader = $('#loader');
            loader.show(); // Show the loader

            const url = "{{ url('sendResetLinkEmail') }}";
            $.ajax({
                url: url,
                type: "POST",
                data: new FormData($(".UserLogin form")[0]),
                contentType: false,
                processData: false,
                success: function (data) {
                    console.log(data);
                    var dataResult = JSON.parse(data);
                    loader.hide(); // Hide the loader on success

                    if (dataResult.statusCode == 200) {
                        swal({
                            title: "Success",
                            text: dataResult.statusMsg,
                            icon: "success",
                            timer: '1500'
                        });
                        $('.UserLogin form')[0].reset();
                    } else if (dataResult.statusCode == 204) {
                        showErrors(dataResult.errors);
                    } else {
                        swal({
                            title: "Oops",
                            text: dataResult.statusMsg,
                            icon: "error",
                            timer: '1500'
                        });
                    }
                },
                error: function (data) {
                    loader.hide(); // Hide the loader on error
                    swal({
                        title: "Oops",
                        text: "Error occurred",
                        icon: "error",
                        timer: '1500'
                    });
                }
            });
            return false;
        }

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
@endsection
