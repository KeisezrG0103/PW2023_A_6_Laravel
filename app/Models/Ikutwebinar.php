<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ikutwebinar extends Model
{
    use HasFactory;

    protected $table = 'ikut_webinar';
    public $timestamps = false;
    protected $primaryKey = 'id';


    protected $fillable = [
        'id_user',
        'id_webinar',
        'created_at',
    ];
}
