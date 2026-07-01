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
            $table->decimal('valor_quilo', 4, 2)->after('deposito_residuo_id');
            $table->decimal('quantidade_residuos', 12, 3);
            $table->decimal('valor_coleta', 9, 2);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('coletas', function (Blueprint $table) {
            $table->dropColumn('valor_quilo');
            $table->dropColumn('quantidade_residuos');
            $table->dropColumn('valor_coleta');
        });
    }
};
