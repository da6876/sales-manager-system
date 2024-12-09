@extends('layout.public')
@section('title', 'Email Verification')

@section('publicMain')
    <div style="font-family: Arial, sans-serif; background-color: #f7f7f7; padding: 20px;">

        <div style="max-width: 600px; margin: auto; background-color: #ffe6aa; padding: 20px; border-radius: 8px; border: 1px solid #ccc;">
            <h2 style="text-align: center;">Password Reset Request</h2>

            <p>Dear {{$email}},</p>
            <p>We received a request to reset your password. Click the link below to reset it:</p>

            <div style="text-align: center; margin-bottom: 20px;">
                <a href="{{ url('password-reset/'.$token.'/'.$email) }}" style="display: inline-block; padding: 10px 20px; background-color: #007bff; color: white; text-decoration: none; border-radius: 5px;">Reset Password Now</a>
            </div>

            <small><b>Note:</b> If you did not request a password reset, please ignore this email.</small>

            <p style="font-size: 0.8em; color: #666;">&copy; {{ date('Y') }} Your SOC Foodi. All rights reserved.</p>
        </div>

    </div>
@endsection
