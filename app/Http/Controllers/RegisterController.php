<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use App\Mail\MailSend;
use Illuminate\Support\Facades\Session;

class RegisterController extends Controller
{
    public function actionRegister(Request $request)
    {
        $str = Str::random(100);
        // $validation = Validator::make($request->all(), [
        //     'username' => 'required',
        //     'email' => 'required',
        //     'password' => 'required',
        //     'education' => 'required',
        //     'coding_experience' => 'required',
        //     'verify_key'=>'nullable'
        // ]);
        // if ($validation->fails()) {
        //     return response()->json([
        //         'message' => 'User registration failed!',
        //         'errors' => $validation->errors()
        //     ], 409);
        // }
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

            Session::flash('message', 'Link verifikasi telah dikirim ke email anda. Silahkan cek email anda untuk mengaktifkan akun.');
            //return redirect('register');

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

    public function verify($verify_key)
    {
        $keyCheck = User::select('verify_key')->where('verify_key', $verify_key)->exists();

        if ($keyCheck) {
            $user = User::where('verify_key', $verify_key)->update([
                'active' => 1,
                'email_verified_at' => date('Y-m-d H:i:s'),
            ]);
            return "Verifikasi Berhasil. Akun anda sudah aktif";
        } else {
            return "Keys tidak valid.";
        }
    }
}
