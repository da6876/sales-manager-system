@extends('layout.public')
@section('title', ' Login')

@section('publicMain')
    <div class="container">

        <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                        <div class="card mb-3" style="background-color: #ffe6aa;">
                            <div class="card-body UserLogin text-center">
                                <img class="text-center pt-1" src="" alt="Logo Loading ..." id="logoPreview1" width="130px" height="100px">
                               <b> <h3 class="d-none d-lg-block" id="brandName"></h3></b>
                                <div class="">
                                    <h5 class="card-title text-center pb-0">Login to Your Account</h5>
                                    <p class="text-center small">Enter your username & password to login</p>
                                </div>

                                <form class="row g-3 needs-validation" novalidate>@csrf
                                    <input type="hidden" name="latitude" id="latitude">
                                    <input type="hidden" name="longitude" id="longitude">
                                    <div class="col-12">
                                        <div class="input-group has-validation">
                                            <span class="input-group-text" id="inputGroupPrepend">@</span>
                                            <input type="text" name="email" class="form-control" id="email"
                                                  placeholder="Enter Username" required>
                                            <div class="invalid-feedback"></div>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="input-group has-validation">
                                            <span class="input-group-text" id="inputGroupPrepend">**</span>
                                            <input type="password" name="password" class="form-control" id="password"
                                                   placeholder="Enter Password" required>
                                            <div class="invalid-feedback"></div>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <button class="btn btn-primary w-100" type="button" onclick="loginNow()">Login</button>
                                    </div>

                                    <div class="col-12">
                                        <p class="small mb-0"><a href="{{url('reset-email')}}">Forget Password</a></p>
                                    </div>
                                </form>
                                <hr>
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
            url = "{{ url('requestLogin') }}";
            $.ajax({
                url: url,
                type: "POST",
                data: new FormData($(".UserLogin form")[0]),
                contentType: false,
                processData: false,
                success: function (data) {
                    console.log(data);
                    var dataResult = JSON.parse(data);
                    if (dataResult.statusCode == 200) {
                        window.location.href = dataResult.route;
                        $('.UserLogin form')[0].reset();
                    }else if (dataResult.statusCode == 204) {
                        showErrors(dataResult.errors);
                    }else{
                            swal({
                                title: "Oops",
                                text: dataResult.statusMsg,
                                icon: "error",
                                timer: '1500'
                            });

                        }
                }, error: function (data) {
                    swal({
                        title: "Oops",
                        text: "Error occured",
                        icon: "error",
                        timer: '1500'
                    });
                }
            });
            return false;


        };

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
