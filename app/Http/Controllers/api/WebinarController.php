<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Webinar;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;

class WebinarController extends Controller
{

    public function index()
    {
        $webinar = Webinar::all();

        foreach ($webinar as $w) {
            $w->thumbnail = url('storage/webinar/' . $w->thumbnail);
        }
        return response()->json([
            'status' => 200,
            'message' => 'Get all webinar successful!',
            'webinar' => $webinar
        ], 200);
    }

    public function show($id)
    {
        $webinar = Webinar::find($id);

        $webinar->thumbnail = url('storage/webinar/' . $webinar->thumbnail);


        if (!$webinar) {
            return response()->json([
                'status' => 404,
                'message' => 'Webinar not found!'
            ], 404);
        }
        return response()->json([
            'status' => 200,
            'message' => 'Get webinar successful!',
            'webinar' => $webinar
        ], 200);
    }

    public function store(Request $request)
    {

        $validation = Validator::make($request->all(), [
            'tanggal' => 'required',
            'title' => 'required',
            'content' => 'required',
            'pengisi_acara' => 'required',
            'thumbnail' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ],

        [
            'tanggal.required' => 'Tanggal harus diisi!',
            'title.required' => 'Title harus diisi!',
            'content.required' => 'Content harus diisi!',
            'pengisi_acara.required' => 'Pengisi acara harus diisi!',
            'thumbnail.required' => 'Thumbnail harus diisi!',
            'thumbnail.image' => 'Thumbnail harus berupa gambar!',
            'thumbnail.mimes' => 'Thumbnail harus berupa gambar dengan format jpeg, png, jpg, gif, svg!',
            'thumbnail.max' => 'Thumbnail maksimal 2048kb!',
        ]
    );

        if ($validation->fails()) {
            return response()->json([
                'message' => 'Webinar creation failed!',
                'errors' => $validation->errors()
            ], 409);
        }

        if($request->hasFile('thumbnail')){
            $image = $request->file('thumbnail');
            $filename = time() . '.' . $image->getClientOriginalExtension();

            // Use putFileAs to specify a file name
            Storage::disk('local')->putFileAs(
                'public/webinar/',
                $image,
                $filename,
                'public' // Set the visibility to public
            );
        }

        $webinar = Webinar::create([
            'tanggal' => $request->tanggal,
            'title' => $request->title,
            'content' => $request->content,
            'pengisi_acara' => $request->pengisi_acara,
            'thumbnail' => $filename,
        ]);
        return response()->json([
            'status' => 201,
            'message' => 'Webinar created!',
            'webinar' => $webinar
        ], 201);
    }

    public function delete($id)
    {
        $webinar = Webinar::find($id);

        Storage::disk('local')->delete('public/webinar/' . $webinar->thumbnail);

        try {
            $webinar->delete();
            return response()->json([
                'status' => 200,
                'message' => "Webinar deleted",
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 401,
                'message' => "Error",
            ], 401);
        }

    }

    public function update($id, Request $request)
    {

        $webinar = Webinar::find($id);

        if($request->hasFile('thumbnail')){
            $image = $request->file('thumbnail');
            $filename = time() . '.' . $image->getClientOriginalExtension();

            // Use putFileAs to specify a file name
            Storage::disk('local')->putFileAs(
                'public/webinar/',
                $image,
                $filename,
                'public' // Set the visibility to public
            );

            if($webinar->thumbnail != null){
                Storage::disk('local')->delete('public/webinar/' . $webinar->thumbnail);
            }

            $webinar->update([
                'thumbnail' => $filename,
            ]);

        }

        try {
            $webinar->update([
                'tanggal' => $request->tanggal,
                'title' => $request->title,
                'content' => $request->content,
                'pengisi_acara' => $request->pengisi_acara,
            ]);
            return response()->json([
                'status' => 200,
                'message' => "Webinar updated",
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 401,
                'message' => $th->getMessage(),
            ], 401);
        }
    }


}
