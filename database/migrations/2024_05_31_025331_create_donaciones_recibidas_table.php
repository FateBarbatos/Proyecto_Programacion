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
        Schema::create('donaciones_recibidas', function (Blueprint $table) {
            $table->id();
            $table->date("fechaDonacion");
            $table->decimal("cantidadDonacion",8,2);
            $table->foreignId("idEmpleadoReceptor")->nullable()->constrained("empleados")->cascadeOnUpdate()->nullOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('donaciones_recibidas');
    }
};
