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
        Schema::create('pilotos', function (Blueprint $table) {
            $table->id();
            //$table->timestamps();
            $table->string('nombre');
            $table->string('apellido');
            $table->unsignedSmallInteger('puntos');
            $table->unsignedTinyInteger('numero');
            $table->unsignedBigInteger('equipo_id');
            $table->foreign('equipo_id')->references('id')->on('equipos');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pilotos');
    }
};
