<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Pembelian;
use App\Models\User;

class Subscription extends Controller
{

    public function Subscribe($id)
    {
        $user = User::find($id);

        try {
            $pembelian = Pembelian::create([
                'harga' => 100000,
                'created_at' => now(),
            ]);

            $user->id_pembelian = $pembelian->id;
            $user->save();

            return response()->json([
                'message' => 'Berhasil melakukan pembelian',
                'data' => $pembelian
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'message' => 'Gagal melakukan pembelian',
                'data' => $th->getMessage()
            ], 400);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Gagal melakukan pembelian',
                'data' => $e->getMessage()
            ], 400);
        }
    }
}
