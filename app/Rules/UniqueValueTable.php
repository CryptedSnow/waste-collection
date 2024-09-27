<?php

namespace App\Rules;

use Closure;
use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Support\Facades\DB;

class UniqueValueTable implements ValidationRule
{
    private array $tablesToCheck;
    private string $field;

    /**
     * Recebe um array de tabelas e o nome do campo para checar a existência.
     */
    public function __construct(string $field, array $tablesToCheck)
    {
        $this->field = $field;
        $this->tablesToCheck = $tablesToCheck;
    }

    /**
     * Execute the validation rule.
     */
    public function validate(string $attribute, mixed $value, Closure $fail): void
    {
        $foundInTables = [];

        foreach ($this->tablesToCheck as $table) {
            if (DB::table($table)->where($this->field, $value)->exists()) {
                $foundInTables[] = $table;
            }
        }

        if (!empty($foundInTables)) {
            $tablesList = implode(', ', $foundInTables);
            $fail("O {$this->field} já está registrado nas seguintes tabelas: {$tablesList}.");
        }
    }
}
