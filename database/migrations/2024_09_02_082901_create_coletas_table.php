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
        Schema::create('coletas', function (Blueprint $table) {
            $table->id();
            $table->foreignId("local_coleta_id")->constrained("locais_coleta");
            $table->foreignId("tipo_residuo_id")->constrained("tipos_residuos");
            $table->foreignId("motorista_id")->constrained("motoristas");
            $table->foreignId("veiculo_id")->constrained("veiculos");
            $table->float("quantidade_residuos");
            $table->date('data_coleta');
            $table->time('hora_coleta');
            $table->string("destinacao_final");
            $table->string("status");
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('coletas');
    }
};
