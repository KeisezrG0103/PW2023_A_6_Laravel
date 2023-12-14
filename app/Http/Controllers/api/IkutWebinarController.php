<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Ikut_webinar;

class IkutWebinarController extends Controller
{
    public function showAllWebinarByUser(){
        $user = auth()->user();
        $webinar = Ikut_webinar::where('id_user', $user->id)->
        join('webinar', 'ikut_webinar.id_webinar', '=', 'webinar.id')->
        select('webinar.*')->get();

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

    public function ikutWebinar(Request $request){
        $user = auth()->user();
        $webinar = Ikut_webinar::create([
            'id_user' => $user->id,
            'id_webinar' => $request->id_webinar,
            'created_at' => now(),
        ]);

        try {
            return response()->json([
                'status' => 200,
                'message' => "Berhasil ikut webinar",
                'webinar' => $webinar,
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 401,
                'message' => $th->getMessage(),
            ], 401);
        }
    }
}
