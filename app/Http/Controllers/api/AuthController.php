<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use App\Mail\MailSend;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;


class AuthController extends Controller
{
    public function Register(Request $request)
    {
        $str = Str::random(100);
        $validation = Validator::make($request->all(), [
            'username' => 'required',
            'email' => 'required',
            'password' => 'required',
            'education' => 'required',
            'coding_experience' => 'required',
        ]);
        if ($validation->fails()) {
            return response()->json([
                'message' => 'User registration failed!',
                'errors' => $validation->errors()
            ], 409);
        }
        try {
            $user = User::create([
                'username' => $request->username,
                'email' => $request->email,
                'password' => $request->password,
                'education' => $request->education,
                'coding_experience' => $request->coding_experience,
                'verify_key' => $str,
            ]);

            $details = [
                'username' => $request->username,
                'website' => 'Education',
                'datetime' => date('Y-m-d H:i:s'),
                'url' => request()->getHttpHost() . '/register/verify/' . $str
            ];

            Mail::to($request->email)->send(new MailSend($details));

            return response()->json([
                'status' => 201,
                'message' => 'User registration successful!',
                'user' => $user
            ], 201);
        } catch (\Exception $e) {
            return response()->json([
                'status' => 409,
                'message' => 'User registration failed!',
                'error' => $e->getMessage(),
            ], 409);
        }
    }



    public function Login(Request $request)
    {
        $request->only('email', 'password');

        if (auth()->attempt($request->all())) {
            $user = auth()->user();
            //$token = $user->createToken('token')->accessToken;
            if ($user->active) {
                return response()->json([
                    'message' => 'User login successful!',
                    'user' => $user,
                    //'token' => $token
                ], 201);
            } else {
                Auth::logout();
                return response()->json([
                    'message' => 'Akun belum verifikasi!',
                ], 401);
            }

            
        } else {
            return response()->json([
                'message' => 'User login failed!',
            ], 401);
        }
    }

}
