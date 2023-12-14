<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Ikutwebinar;
use App\Models\User;

class IkutWebinarController extends Controller
{
    public function showAllWebinarByUser($id)
    {
        $user = User::find($id);
        $webinar = Ikutwebinar::where('id_user', $user->id)->join('webinar', 'ikut_webinar.id_webinar', '=', 'webinar.id')->select('webinar.*')->get();

        $webinar->map(function ($w) {
            $w->thumbnail = url('storage/webinar/' . $w->thumbnail);
        });
        try {
            return response()->json([
                'status' => 200,
                'webinar' => $webinar,
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 401,
                'message' => $th->getMessage(),
            ], 401);
        }
    }

    public function ikutWebinar(Request $request)
    {

        $webinar = Ikutwebinar::create([
            'id_user' => $request->id_user,
            'id_webinar' => $request->id_webinar,
            'created_at' => now(),
        ]);

        try {
            return response()->json([
                'status' => 200,
                'data' => $webinar,
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 401,
                'message' => $th->getMessage(),
            ], 401);
        }
    }

    public function isRegistered($id_user, $id_webinar)
    {
        $webinar = Ikutwebinar::where([
            'id_user' => $id_user,
            'id_webinar' => $id_webinar,
        ])->first();


        try {
            if ($webinar) {
                return response()->json([
                    'status' => 200,
                    'message' => 'User registered',
                    'data' => $webinar,
                ], 200);
            } else {
                return response()->json([
                    'status' => 200,
                    'message' => 'User not registered',
                    'data' => $webinar,
                ], 200);
            }
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 401,
                'message' => $th->getMessage(),
            ], 401);
        }
    }
}
