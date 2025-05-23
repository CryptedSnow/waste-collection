<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class EmpresaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $empresas = [
            [
                'uuid' => Str::uuid()->toString(),
                'nome' => 'Scarlet Overdrive',
                'cnpj' => '92.772.051/0001-50',
                'cep' => '46430-000',
                'uf' => 'BA',
                'cidade' => 'Lucky Land',
                'bairro' => "JoJo's Bizarre Adventure",
                'logradouro' => 'Phantom Blood',
                'numero' => 140,
                'email' => 'scarlet.overdrive@email.com',
                'telefone' => '(77) 9090-5021',
            ],
            [
                'uuid' => Str::uuid()->toString(),
                'nome' => 'The World',
                'cnpj' => '68.611.034/0001-56',
                'cep' => '46430-000',
                'uf' => 'BA',
                'cidade' => 'Lucky Land',
                'bairro' => "JoJo's Bizarre Adventure",
                'logradouro' => 'Stardust Crusaders',
                'numero' => 138,
                'email' => 'the.world@email.com',
                'telefone' => '(77) 9980-9747',
            ],
            [
                'uuid' => Str::uuid()->toString(),
                'nome' => 'Tusk',
                'cnpj' => '56.891.048/0001-91',
                'cep' => '46430-000',
                'uf' => 'BA',
                'cidade' => 'Lucky Land',
                'bairro' => "JoJo's Bizarre Adventure",
                'logradouro' => 'Steel Ball Run',
                'numero' => 159,
                'email' => 'tusk@email.com',
                'telefone' => '(77) 9804-7001',
            ],
            [
                'uuid' => Str::uuid()->toString(),
                'nome' => 'Ball Breaker',
                'cnpj' => '21.972.182/0001-32',
                'cep' => '46430-000',
                'uf' => 'BA',
                'cidade' => 'Lucky Land',
                'bairro' => "JoJo's Bizarre Adventure",
                'logradouro' => 'Steel Ball Run',
                'numero' => 128,
                'email' => 'ball.breaker@email.com',
                'telefone' => '(77) 9940-6801',
            ]
        ];

        DB::table('empresas')->insert($empresas);
    }
}
