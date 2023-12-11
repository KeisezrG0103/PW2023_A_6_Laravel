<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class VerificationController extends Controller
{
    public function verify(Request $request, $id)
    {
        if (!$request->hasValidSignature()) {
            return response()->json([
                'message' => 'Invalid/Expired url provided.'
            ], 401);
        }

        $user = User::findOrFail($id);

        if (!$user->hasVerifiedEmail()) {
            $user->markEmailAsVerified();
        }

        return response()->json([
            'message' => 'Email successfully verified!'
        ], 200);
    }
}
