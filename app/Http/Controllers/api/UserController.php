<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    public function isAdmin()
    {
        $user = auth()->user();
        if ($user->role == "admin") {
            return response()->json([
                'status' => 200,
                'isAdmin' => true,
            ], 200);
        } else {
            return response()->json([
                'status' => 401,
                'isAdmin' => false,
            ], 401);
        }
    }


    public function getAllUsers()
    {
        $users = User::where('role', "=", 'user')->get();
        try {
            return response()->json([
                'status' => 200,
                'users' => $users,
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 401,
                'message' => "Error",
            ], 401);
        }
    }


    public function deleteUser($id)
    {
        $user = User::find($id);
        try {
            $user->delete();
            return response()->json([
                'status' => 200,
                'message' => "User deleted",
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 401,
                'message' => "Error",
            ], 401);
        }
    }

    public function getUserLoggedIn()
    {
        $user = auth()->user();

        try {
            return response()->json([
                'status' => 200,
                'user' => $user,
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 401,
                'message' => "Error",
            ], 401);
        }
    }

    public function updateProfile(Request $request)
    {
        $user = auth()->user();

       $Validation = Validator::make($request->all(), [
            'username' => 'required',
            'email' => 'required',
            'education' => 'required',
            'coding_experience' => 'required',
        ]);

        if ($Validation->fails()) {
            return response()->json([
                'status' => 401,
                'message' => $Validation->errors(),
            ], 401);
        }




        if ($request->password != null) {
            $user->update([
                'username' => $request->username,
                'email' => $request->email,
                'education' => $request->education,
                'coding_experience' => $request->coding_experience,
                'password' => $request->password,
            ]);
            return response()->json([
                'status' => 200,
                'message' => "User updated",
            ], 200);
        }

        try {
            $user->update([
                'username' => $request->username,
                'email' => $request->email,
                'education' => $request->education,
                'coding_experience' => $request->coding_experience,

            ]);
            return response()->json([
                'status' => 200,
                'data' => $user,
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 401,
                'message' => $th->getMessage(),
            ], 401);
        }
    }
}
