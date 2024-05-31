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
        Schema::create('tractores', function (Blueprint $table) {
            $table->id();
            $table->string("tipoTractor",40);
            $table->string("nombreTractor",40);
            $table->integer("numeroMatricula");
            $table->integer("numeroPlaca");
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tractores');
    }
};
