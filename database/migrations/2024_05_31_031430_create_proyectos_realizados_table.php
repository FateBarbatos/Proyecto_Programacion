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
        Schema::create('proyectos_realizados', function (Blueprint $table) {
            $table->id();
            $table->foreignId("idHerramienta")->nullable()->constrained("herramientas")->cascadeOnUpdate()->nullOnDelete();
            $table->foreignId("idMaquina")->nullable()->constrained("tractores")->cascadeOnUpdate()->nullOnDelete();
            $table->string("nombreProyecto",100);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('proyectos_realizados');
    }
};
