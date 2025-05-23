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
        Schema::create('empresas', function (Blueprint $table) {
            $table->id();
            $table->uuid('uuid')->unique();
            $table->string("nome", 50);
            $table->string("cnpj", 18);
            $table->string("cep", 9);
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
        Schema::dropIfExists('empresas');
    }
};
