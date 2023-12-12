<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class Kursus extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        if($this->method() == 'POST'){
            return [
                'tanggal' => 'required',
                'title' => 'required',
                'content' => 'required',
                'pengisi_acara' => 'required',
                'thumbnail' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            ];
        }else{
            return [
                'tanggal' => 'required',
                'title' => 'required',
                'content' => 'required',
                'pengisi_acara' => 'required',
                'thumbnail' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            ];
        }
    }

    public function messages(): array
    {
        return [
            'tanggal.required' => 'Tanggal harus diisi!',
            'title.required' => 'Title harus diisi!',
            'content.required' => 'Content harus diisi!',
            'pengisi_acara.required' => 'Pengisi Acara harus diisi!',
            'thumbnail.required' => 'Thumbnail harus diisi!',
            'thumbnail.image' => 'Thumbnail harus berupa gambar!',
            'thumbnail.mimes' => 'Thumbnail harus berupa gambar dengan format jpeg, png, jpg, gif, svg!',
            'thumbnail.max' => 'Thumbnail maksimal 2048kb!',
        ];
    }
}
