<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

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
        $users = User::where('role',"=", 'user')->get();
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


    public function deleteUser($id){
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
}
