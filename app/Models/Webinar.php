<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Webinar extends Model
{
    use HasFactory;

    public $timestamps = false;

    protected $table = 'webinar';

    protected $fillable = [
        'tanggal',
        'title',
        'content',
        'pengisi_acara',
        'thumbnail',
    ];
}
