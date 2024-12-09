<?php

namespace App\Http\Controllers\settings;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Services\LogService;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Mockery\Exception;

class UserProfileController extends Controller
{
    public function __construct()
    {
        $this->middleware('permission:view_profile', ['only' => ['index']]);
        $this->middleware('permission:update_profile', ['only' => ['updateProfile']]);
        $this->middleware('permission:change_password', ['only' => ['changePassword']]);
    }

    public function index()
    {
        $this->checkLogin();
        return view('WebSetup.settings.profile');
    }
    public function updateProfile(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'address' => 'required',
            'phone' => 'required',
        ]);

        if ($validator->fails()) {
            return json_encode(array('statusCode' => 204, 'statusMsg' => 'Validation Error.', 'errors' => $validator->errors()));
        }
        $permission = User::findOrFail($request['id']);
        $permission->update([
            'name' => $request->name,
            'phone' => $request->phone,
            'address' => $request->address,
        ]);
        LogService::log(auth()->user()->id, 'User Profile', 'update', $permission->getChanges());

        return json_encode(array(
            "statusCode" => 200,
            "statusMsg" => "Profile Update Successfully"
        ));
    }

    public function updateProfileImage(Request $request)
    {
        // Validate the request for the image
        $validator = Validator::make($request->all(), [
            'image2' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', // Adjust validation as needed
        ]);

        if ($validator->fails()) {
            return response()->json([
                'statusCode' => 204,
                'statusMsg' => 'Validation Error.',
                'errors' => $validator->errors()
            ]);
        }

        // Find the user by ID
        $user = User::findOrFail($request['id']);

        // Initialize the variable for the image URL
        $image2fileUrl = "";

        // Check if the user already has a profile image
        if ($user->profile_image) {
            $existingImagePath = public_path($user->profile_image);
            // Delete the existing image if it exists
            if (file_exists($existingImagePath)) {
                unlink($existingImagePath);
            }
        }

        // Handle the new image upload
        if ($request->hasFile('image2')) {
            $ran_one = uniqid();
            $ext_one = strtolower($request->image2->getClientOriginalExtension());
            $one_full_name = $ran_one . '.' . $ext_one;
            $upload_path_one = public_path("assets/profile_img/");
            $request->image2->move($upload_path_one, $one_full_name);
            $image2fileUrl = "assets/profile_img/" . $one_full_name;

            // Update the user's profile image path
            $user->update([
                'profile_image' => $image2fileUrl,
            ]);

            return response()->json([
                "statusCode" => 200,
                "statusMsg" => "Image uploaded successfully"
            ]);
            return json_encode(array(
                "statusCode" => 200,
                "statusMsg" => "Image uploaded successfully"
            ));
        } else {
            return json_encode(array(
                "statusCode" => 201,
                "statusMsg" => "Image upload failed"
            ));
        }
    }

    public function changePassword(Request $request)
    {
        // Validate the incoming request data
        $validator = Validator::make($request->all(), [
            'currentPassword' => 'required|string',
            'newPassword' => 'required|string|min:8|confirmed', // Ensure confirmation
        ]);

        // Handle validation failures
        if ($validator->fails()) {
            return json_encode(array('statusCode' => 204, 'statusMsg' => 'Validation Error.', 'errors' => $validator->errors()));
        }

        // Check if the current password is correct
        if (!Auth::attempt(['email' => Auth::user()->email, 'password' => $request->currentPassword])) {

            return json_encode(array(
                "statusCode" => 401,
                "statusMsg" => "Current password is incorrect."
            ));
        }

        // Update the password
        $user = Auth::user();
        $user->password = Hash::make($request->newPassword);
        $user->save();

        // Log the password change
        LogService::log($user->id, 'User Profile', 'change_password', [
            'user_id' => $user->id,
            'email' => $user->email,
        ]);

        return json_encode(array(
            "statusCode" => 200,
            "statusMsg" => "Password changed successfully"
        ));

    }

    public function showLinkRequestForm()
    {
        return view('auth.passwords.email');
    }

    public function sendResetLinkEmail(Request $request)
    {
        $request->validate(['email' => 'required|email']);

        $user = User::where('email', $request->email)->first();
        if (!$user) {
            return json_encode(array('statusCode' => 205, 'statusMsg' => 'Email Address is not valid.'));
        }
        $token = Str::random(60);

        $existingToken = DB::table('password_reset_tokens')->where('email', $request->email)->first();
        if ($existingToken) {
            // Update the existing token
            DB::table('password_reset_tokens')
                ->where('email', $request->email)
                ->update(['token' => $token, 'created_at' => Carbon::now()]);
        } else {
            // Insert a new token
            DB::table('password_reset_tokens')->insert([
                'email' => $request->email,
                'token' => $token,
                'created_at' => Carbon::now()
            ]);
        }
       // $url = route('password.reset/'.$token.'/'.$request->email);
        $url = route('password.reset', ['token' => $token, 'email' => $request->email]);
        Mail::send('auth.passwords.reset_email', ['token' => $token,'url' => $url, 'email' => $request->email], function ($message) use ($request) {
            $message->to($request->email);
            $message->subject('Password Reset Request');
        });
        return json_encode(array('statusCode' => 200, 'statusMsg' => 'Password reset link sent!'));

    }

    public function showResetForm($token,$email)
    {
        try {
            $passwordReset = DB::table('password_reset_tokens')->where('token', $token)->where('email', $email)->first();
            if (!$passwordReset) {
                return view('errors.403');
            }
            return view('auth.passwords.reset', ['token' => $token, 'email' => $email]);
        }catch (Exception ){
            return view('errors.403');
        }

    }

    public function reset(Request $request)
    {
        // Validate the request
        $validator = Validator::make($request->all(), [
            'email' => 'required|email', // Ensure email is provided
            'password' => 'required|string|min:8|confirmed', // Ensure 'confirmed' checks for password_confirmation
        ]);

        if ($validator->fails()) {
            return response()->json(['statusCode' => 204, 'errors' => $validator->errors()]);
        }

        // Find user by email
        $user = User::where('email', $request->email)->first();

        // Check if user exists
        if (!$user) {
            return response()->json(['statusCode' => 404, 'statusMsg' => 'User not found.'], 404);
        }

        // Reset the password
        $user->password = Hash::make($request->password);
        $user->save();

        return response()->json(['statusCode' => 200, 'statusMsg' => 'Password has been reset successfully.', 'route' => route('login')]);
    }
}
