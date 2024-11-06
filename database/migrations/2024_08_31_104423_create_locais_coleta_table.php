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
        Schema::create('locais_coleta', function (Blueprint $table) {
            $table->id();
            $table->uuid('uuid')->unique();
            $table->foreignId("empresa_id")->constrained("empresas");
            $table->foreignId("cliente_id")->constrained("clientes");
            $table->string("uf", 2);
            $table->string("cidade");
            $table->string("bairro");
            $table->string("logradouro");
            $table->integer("numero");
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('locais_coleta');
    }
};
