<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ikut_webinar extends Model
{
    use HasFactory;

    protected $table = 'ikut_webinar';
    public $timestamps = false;

    protected $fillable = [
        'id_user',
        'id_webinar',
        'created_at',
    ];
}
