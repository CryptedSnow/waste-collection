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
        Schema::table('coletas', function (Blueprint $table) {
            $table->renameColumn('valor_quilo', 'valor_diaria');
            $table->renameColumn('quantidade_residuos', 'dias_diaria');
        });

        Schema::table('coletas', function (Blueprint $table) {
            $table->decimal('valor_diaria', 5, 2)->change();
            $table->integer('dias_diaria')->change();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('coletas', function (Blueprint $table) {
            $table->decimal('valor_diaria', 4, 2)->change();
            $table->decimal('dias_diaria', 12, 3)->change();
        });

        Schema::table('coletas', function (Blueprint $table) {
            $table->renameColumn('valor_diaria', 'valor_quilo');
            $table->renameColumn('dias_diaria', 'quantidade_residuos');
        });
    }

};
