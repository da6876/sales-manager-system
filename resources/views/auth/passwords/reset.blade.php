@extends('layout.public')
@section('title', ' Reset Password')

@section('publicMain')
    <div class="container">
        <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                        <div class="card mb-3" style="background-color: #ffe6aa;">
                            <div class="card-body UserLogin text-center">
                                <img class="text-center pt-1" src="" alt="Logo Loading ..." id="logoPreview1" width="130px" height="100px">
                                <b><h3 class="d-none d-lg-block" id="brandName"></h3></b>
                                <div>
                                    <h5 class="card-title text-center pb-0">Reset Your Password</h5>
                                    <p class="text-center small">Enter your New password to login</p>
                                </div>

                                <form class="row g-3 needs-validation" novalidate>@csrf
                                    <input type="hidden" name="email" value="{{ $email }}">

                                    <div class="col-12">
                                        <div class="input-group has-validation">
                                            <span class="input-group-text" id="inputGroupPrepend">**</span>
                                            <input type="password" name="password" class="form-control" id="password" placeholder="Enter New Password" required minlength="8" oninput="updatePasswordStrength()">
                                            <div class="invalid-feedback">Please provide a valid password (at least 8 characters).</div>
                                        </div>
                                        <div class="progress mt-2" id="passwordStrengthProgress" style="height: 10px; display: none;">
                                            <div id="passwordStrengthBar" class="progress-bar" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <div id="passwordStrengthText" class="mt-1 bi-text-right" style="display: none; align-content: start"></div> <!-- Text indicator -->
                                    </div>

                                    <div class="col-12">
                                        <div class="input-group has-validation">
                                            <span class="input-group-text" id="inputGroupPrepend">**</span>
                                            <input type="password" name="password_confirmation" class="form-control" id="password_confirmation" placeholder="Confirm Password" required>
                                            <div class="invalid-feedback"></div>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <button class="btn btn-primary w-100" type="button" onclick="resetPassword()">Reset Password</button>
                                        <div class="spinner-border text-primary" role="status" id="loadingSpinner" style="display: none;">
                                            <span class="visually-hidden">Loading...</span>
                                        </div>
                                    </div>
                                </form>

                                <div class="credits mt-1" style="font-family: Arial, sans-serif;">
                                    Designed by <a target="_blank" href="https://sourceofcapacity.com/">SOC</a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection

@section('script')
    <script>
        function updatePasswordStrength() {
            const password = $('#password').val();
            const strengthBar = $('#passwordStrengthBar');
            const strengthProgress = $('#passwordStrengthProgress');
            const strengthText = $('#passwordStrengthText');

            let strength = 0;

            if (password.length >= 8) strength += 25; // Minimum length
            if (/[A-Z]/.test(password)) strength += 25; // Uppercase letter
            if (/[a-z]/.test(password)) strength += 25; // Lowercase letter
            if (/\d/.test(password)) strength += 25; // Number
            if (/[!@#$%^&*(),.?":{}|<>]/.test(password)) strength += 25; // Special character

            // Show the progress bar and text when typing
            if (password.length > 0) {
                strengthProgress.show();
                strengthText.show();
            } else {
                strengthProgress.hide();
                strengthText.hide();
            }

            // Update the progress bar width and text
            strengthBar.css('width', `${strength}%`);
            strengthBar.attr('aria-valuenow', strength);

            // Change color based on strength and update the text
            if (strength < 50) {
                strengthBar.removeClass('bg-success bg-warning').addClass('bg-danger');
                strengthText.text('Weak').css('color', 'red');
            } else if (strength < 75) {
                strengthBar.removeClass('bg-success bg-danger').addClass('bg-warning');
                strengthText.text('Moderate').css('color', 'orange');
            } else {
                strengthBar.removeClass('bg-warning bg-danger').addClass('bg-success');
                strengthText.text('Strong').css('color', 'green');
            }
        }

        function resetPassword() {
            const url = "{{ url('password/reset') }}"; // Adjust the URL to your password reset route
            const password = $('#password').val();
            const passwordConfirmation = $('#password_confirmation').val();

            // Client-side validation
            if (password !== passwordConfirmation) {
                swal({
                    title: "Oops",
                    text: "Passwords do not match.",
                    icon: "error",
                    timer: '1500'
                });
                return;
            }

            $('#loadingSpinner').show(); // Show the loading spinner

            $.ajax({
                url: url,
                type: "POST",
                data: new FormData($(".UserLogin form")[0]),
                contentType: false,
                processData: false,
                success: function (data) {
                    $('#loadingSpinner').hide();
                    if (data.statusCode == 200) {
                        swal({
                            title: "Success!",
                            text: data.statusMsg,
                            icon: "success",
                            buttons: {
                                cancel: false,
                                confirm: true,
                            },
                        }).then((willRedirect) => {
                            if (willRedirect) {
                                window.location.href = data.route;
                            }
                        });
                        $('.UserLogin form')[0].reset();
                    } else if (data.statusCode == 204) {
                        showErrors(data.errors);
                    } else {
                        swal({
                            title: "Oops",
                            text: data.statusMsg,
                            icon: "error",
                            timer: '1500'
                        });
                    }
                },
                error: function (data) {
                    $('#loadingSpinner').hide();
                    swal({
                        title: "Oops",
                        text: "Error occurred",
                        icon: "error",
                        timer: '1500'
                    });
                }
            });
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
