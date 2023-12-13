<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Kursus;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;

class KursusController extends Controller
{

    public function create(Request $request)
    {

        $validation = Validator::make(
            $request->all(),
            [
                'title' => 'required',
                'bahasa_pemrograman' => 'required',
                'content' => 'required',
                'author' => 'required',
                'thumbnail' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            ],
        );

        if ($validation->fails()) {
            return response()->json([
                'message' => 'Kursus creation failed!',
                'errors' => $validation->errors()
            ], 400);
        }


        if ($request->hasFile('thumbnail')) {
            $image = $request->file('thumbnail');
            $filename = time() . '.' . $image->getClientOriginalExtension();

            // Use putFileAs to specify a file name
            Storage::disk('local')->putFileAs(
                'public/thumbnail/',
                $image,
                $filename,
                'public' // Set the visibility to public
            );
        }

        try {
            $kursus = Kursus::create([
                'title' => $request->title,
                'bahasa_pemrograman' => $request->bahasa_pemrograman,
                'content' => $request->content,
                'author' => $request->author,
                'thumbnail' => $filename,
                'id_pembelian' => null,
            ]);
            return response()->json([
                'status' => 201,
                'message' => 'Kursus created',
                'kursus' => $kursus
            ], 201);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 401,
                'message' => 'Error',
                'errors' => $th->getMessage()
            ], 401);
        }
    }

    public function readAll()
    {
        $kursus = Kursus::all();

        $kursus->map(function ($item) {
            $item->thumbnail = url('storage/thumbnail/' . $item->thumbnail);
            return $item;
        });
        try {
            return response()->json([
                'status' => 200,
                'kursus' => $kursus,
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 401,
                'message' => "Error",
            ], 401);
        }
    }

    public function readByid($id)
    {
        $kursus = Kursus::find($id);

        $kursus->thumbnail = url('storage/thumbnail/' . $kursus->thumbnail);
        try {
            return response()->json([
                'status' => 200,
                'kursus' => $kursus,
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 401,
                'message' => "Error",
            ], 401);
        }
    }


    public function delete($id)
    {
        $kursus = Kursus::find($id);


        Storage::disk('local')->delete('public/thumbnail/' . $kursus->thumbnail);



        try {
            $kursus->delete();
            return response()->json([
                'status' => 200,
                'message' => "Kursus deleted",
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
        $kursus = Kursus::findOrFail($id);

        if ($request->hasFile('thumbnail')) {
            $image = $request->file('thumbnail');
            $filename = time() . '.' . $image->getClientOriginalExtension();

            // Use putFileAs to specify a file name
            Storage::disk('local')->putFileAs(
                'public/thumbnail/',
                $image,
                $filename,
                'public' // Set the visibility to public
            );

            if ($kursus->thumbnail != null) {
                Storage::disk('local')->delete('public/thumbnail/' . $kursus->thumbnail);
            }

            $kursus->update([
                'thumbnail' => $filename,
            ]);


        }

        try {
            $kursus->update([
                'title' => $request->title,
                'bahasa_pemrograman' => $request->bahasa_pemrograman,
                'content' => $request->content,
                'author' => $request->author,
            ]);

            return response()->json([
                'status' => 200,
                'message' => "Kursus updated",
                'kursus' => $kursus
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 401,
                'message' => $th->getMessage(),
            ], 401);
        }

    }

    public function findByBahasa($bahasa)
    {
        $kursus = Kursus::where('bahasa_pemrograman', $bahasa)->get();

        $kursus->map(function ($item) {
            $item->thumbnail = url('storage/thumbnail/' . $item->thumbnail);
            return $item;
        });
        try {
            return response()->json([
                'status' => 200,
                'kursus' => $kursus,
            ], 200);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 401,
                'message' => "Error",
            ], 401);
        }
    }
}
