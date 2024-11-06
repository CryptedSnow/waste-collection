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
        Schema::create('depositos_residuos', function (Blueprint $table) {
            $table->id();
            $table->uuid('uuid')->unique();
            $table->foreignId("empresa_id")->constrained("empresas");
            $table->string("nome", 50);
            $table->string("cnpj", 18);
            $table->string("uf", 2);
            $table->string("cidade");
            $table->string("bairro");
            $table->string("logradouro");
            $table->integer("numero");
            $table->string("email");
            $table->string("telefone");
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('depositos_residuos');
    }
};
