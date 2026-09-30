@php
    use Carbon\Carbon;

    $dataColeta = Carbon::parse($record->data_coleta);
    $termino    = $dataColeta->copy()->addDays((int) $record->dias_diaria);
    $diasLabel  = $record->dias_diaria == 1 ? 'dia' : 'dias';
    $local      = $record->localColetas;

    // Cor do selo de status (ajuste conforme os valores do seu enum)
    $status = mb_strtolower((string) ($record->status?->value ?? $record->status));

    [$badgeBg, $badgeFg] = match (true) {
        str_contains($status, 'andamento') => ['#fffbeb', '#d97706'],
        str_contains($status, 'concluido') => ['#f0fdf4', '#008236'],
        str_contains($status, 'cancelado') => ['#fef2f2', '#c10007'],
        default                            => ['#e7ece9', '#3b4a42'],
    };
@endphp
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comprovante de coleta para {{ $record->clientes->nome }}</title>
    <style>
        @page { margin: 28px 32px; }

        * { box-sizing: border-box; }

        body {
            margin: 0;
            font-family: 'DejaVu Sans', Helvetica, Arial, sans-serif;
            font-size: 11px;
            line-height: 1.45;
            color: #1f2a24;
            background: #ffffff;
        }

        table { width: 100%; border-collapse: collapse; }
        td { vertical-align: top; }

        .sheet { max-width: 720px; margin: 0 auto; }

        /* Cabeçalho */
        .head { background: #1f4d38; color: #ffffff; }
        .head td { padding: 22px 24px; vertical-align: bottom; }
        .head .doc   { font-size: 11px; color: #b9d6c6; }
        .head .title { font-size: 20px; font-weight: bold; margin-top: 2px; }
        .head .code-label { font-size: 10px; color: #b9d6c6; text-align: right; }
        .head .code  { font-size: 20px; font-weight: bold; text-align: right; margin-top: 2px; }

        /* Faixa de status */
        .strip { background: #f1f5f2; border-bottom: 1px solid #dfe6e1; }
        .strip td { padding: 10px 24px; font-size: 11px; color: #4d5d54; }
        .badge {
            display: inline-block;
            padding: 3px 12px;
            border-radius: 10px;
            font-size: 10px;
            font-weight: bold;
            background: {{ $badgeBg }};
            color: {{ $badgeFg }};
        }

        /* Seções */
        .section { padding: 18px 24px 4px; }
        .section h2 {
            margin: 0 0 8px;
            padding-bottom: 6px;
            font-size: 12px;
            font-weight: bold;
            color: #1f4d38;
            border-bottom: 2px solid #1f4d38;
        }

        .grid { table-layout: fixed; }
        .grid td { padding: 6px 12px 8px 0; width: 50%; }
        .grid td.third  { width: 33.33%; }
        .grid td.fourth { width: 25%; }
        .label { display: block; font-size: 9.5px; color: #71817a; margin-bottom: 1px; }
        .value { display: block; font-size: 11.5px; font-weight: bold; color: #1f2a24; }

        /* Valores */
        .money { margin: 6px 24px 0; border: 1px solid #dfe6e1; }
        .money td { padding: 12px 16px; text-align: center; }
        .money .sep { border-left: 1px solid #dfe6e1; }
        .money .amount { font-size: 17px; font-weight: bold; color: #1f4d38; margin-top: 2px; }
        .money .note { font-size: 9.5px; color: #71817a; margin-top: 2px; }

        /* Rodapé */
        .foot { padding: 20px 24px 0; font-size: 9.5px; color: #71817a; }
        .foot td { padding-top: 10px; border-top: 1px solid #dfe6e1; }
    </style>
</head>
<body>
<div class="sheet">

    {{-- Cabeçalho --}}
    <table class="head">
        <tr>
            <td>
                <div class="title">Comprovante de coleta</div>
            </td>
            <td style="width: 38%;">
                <div class="code-label">Código de coleta</div>
                <div class="code">{{ $record->codigo_coleta }}</div>
            </td>
        </tr>
    </table>

    {{-- Faixa de status --}}
    <table class="strip">
        <tr>
            <td>Coleta em {{ $dataColeta->format('d/m/Y') }} às {{ Carbon::parse($record->hora_coleta)->format('H:i') }}</td>
            <td style="text-align: right;"><span class="badge">{{ $record->status?->value ?? $record->status }}</span></td>
        </tr>
    </table>

    {{-- Cliente e local --}}
    <div class="section">
        <h2>Cliente e local da coleta</h2>
        <table class="grid">
            <tr>
                <td colspan="2">
                    <span class="label">Cliente</span>
                    <span class="value">{{ $record->clientes->nome }}</span>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="label">UF</span>
                    <span class="value">{{ $local->uf }}</span>
                </td>
                <td>
                    <span class="label">Cidade</span>
                    <span class="value">{{ $local->cidade }}</span>
                </td>
            </tr>
            <tr>
                <td>
                    <span class="label">Bairro</span>
                    <span class="value">{{ $local->bairro }}</span>
                </td>
                <td>
                    <span class="label">Logradouro</span>
                    <span class="value">{{ $local->logradouro }}, {{ $local->numero }}</span>
                </td>
            </tr>
        </table>
    </div>

    {{-- Resíduo e destino --}}
    <div class="section">
        <h2>Resíduo e destino</h2>
        <table class="grid">
            <tr>
                <td>
                    <span class="label">Depósito de resíduos</span>
                    <span class="value">{{ $record->depositoResiduos->nome }}</span>
                </td>
                <td>
                    <span class="label">Tipo de resíduo</span>
                    <span class="value">{{ $record->tipoResiduos->descricao }}</span>
                </td>
                <td>
                    <span class="label">Finalidade:</span>
                    <span class="value">{{ $record->finalidade }}</span>
                </td>
            </tr>
        </table>
    </div>

    {{-- Motorista e veículo --}}
    <div class="section">
        <h2>Motorista e veículo</h2>
        <table class="grid">
            <tr>
                <td class="third">
                    <span class="label">Motorista</span>
                    <span class="value">{{ $record->motoristas->nome }}</span>
                </td>
                <td class="third">
                    <span class="label">Veículo</span>
                    <span class="value">{{ $record->veiculos->modelo }}</span>
                </td>
                <td class="third">
                    <span class="label">Placa</span>
                    <span class="value">{{ $record->veiculos->placa_veiculo }}</span>
                </td>
            </tr>
        </table>
    </div>

    {{-- Período --}}
    <div class="section">
        <h2>Período</h2>
        <table class="grid">
            <tr>
                <td class="fourth">
                    <span class="label">Início</span>
                    <span class="value">{{ $dataColeta->format('d/m/Y') }}</span>
                </td>
                <td class="fourth">
                    <span class="label">Término</span>
                    <span class="value">{{ $termino->format('d/m/Y') }}</span>
                </td>
                <td class="fourth">
                    <span class="label">Valor da diária</span>
                    <span class="value">R$ {{ number_format($record->valor_diaria, 2, ',', '.') }}</span>
                </td>
                <td class="fourth">
                    <span class="label">Duração da diária</span>
                    <span class="value">{{ $record->dias_diaria }} {{ $diasLabel }}</span>
                </td>
            </tr>
        </table>
    </div>

    {{-- Valores --}}
    <div class="section">
        <h2>Valores</h2>
    </div>
    <table class="money">
        <tr>
            <td style="width: 50%;">
                <span class="label">Valor da coleta</span>
                <div class="amount">R$ {{ number_format($record->valor_coleta, 2, ',', '.') }}</div>
            </td>
        </tr>
    </table>

    {{-- Rodapé --}}
    <table class="foot">
        <tr>
            <td>Emitido em {{ now()->format('d/m/Y \à\s H:i') }}</td>
        </tr>
    </table>

</div>
</body>
</html>
