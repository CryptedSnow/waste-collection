<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UFSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $ufs = [
            ['estado' => 'Acre', 'sigla' => 'AC'],
            ['estado' => 'Alagoas', 'sigla' => 'AL'],
            ['estado' => 'Amapá', 'sigla' => 'AP'],
            ['estado' => 'Amazonas', 'sigla' => 'AM'],
            ['estado' => 'Bahia', 'sigla' => 'BA'],
            ['estado' => 'Ceará', 'sigla' => 'CE'],
            ['estado' => 'Distrito Federal', 'sigla' => 'DF'],
            ['estado' => 'Espírito Santo', 'sigla' => 'ES'],
            ['estado' => 'Goiás', 'sigla' => 'GO'],
            ['estado' => 'Maranhão', 'sigla' => 'MA'],
            ['estado' => 'Mato Grosso', 'sigla' => 'MT'],
            ['estado' => 'Mato Grosso do Sul', 'sigla' => 'MS'],
            ['estado' => 'Minas Gerais', 'sigla' => 'MG'],
            ['estado' => 'Pará', 'sigla' => 'PA'],
            ['estado' => 'Paraíba', 'sigla' => 'PB'],
            ['estado' => 'Paraná', 'sigla' => 'PR'],
            ['estado' => 'Pernambuco', 'sigla' => 'PE'],
            ['estado' => 'Piauí', 'sigla' => 'PI'],
            ['estado' => 'Rio de Janeiro', 'sigla' => 'RJ'],
            ['estado' => 'Rio Grande do Norte', 'sigla' => 'RN'],
            ['estado' => 'Rio Grande do Sul', 'sigla' => 'RS'],
            ['estado' => 'Rondônia', 'sigla' => 'RO'],
            ['estado' => 'Roraima', 'sigla' => 'RR'],
            ['estado' => 'Santa Catarina', 'sigla' => 'SC'],
            ['estado' => 'São Paulo', 'sigla' => 'SP'],
            ['estado' => 'Sergipe', 'sigla' => 'SE'],
            ['estado' => 'Tocantins', 'sigla' => 'TO'],
        ];

        DB::table('ufs')->insert($ufs);
    }
}
