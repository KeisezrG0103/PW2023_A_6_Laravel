<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('kursus', function (Blueprint $table) {
            $table->id();
            $table->foreignId('id_sertifikat')->constrained('sertifikat', 'id')->onDelete('cascade');
            $table->foreignId('id_kategori_kursus')->constrained('kategori_kursuses', 'id')->onDelete('cascade');
            $table->foreignId('id_mentor')->constrained('mentors', 'id')->onDelete('cascade');
            $table->string('nama_kursus');
            $table->dateTime('waktu_penyelesaian');
            $table->string('tingkat_kesukaran');
            $table->string('pembelajaran');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('kursus');
    }


};
