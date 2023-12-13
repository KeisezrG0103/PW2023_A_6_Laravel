<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Pembelian extends Model
{
    use HasFactory;

    protected $table = 'pembelian';

    public $timestamps = false;

    protected $fillable = [
        'harga',
        'created_at',
    ];
}
