<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Comprovante de coleta para {{ $record->clientes->nome }} </title>
</head>
<body>
    <div>Código de coleta: {{ $record->codigo_coleta }}</div>
    <div>Cliente: {{ $record->clientes->nome }}</div>
    <div>UF: {{ $record->localColetas->uf }}</div>
    <div>Cidade: {{ $record->localColetas->cidade }}</div>
    <div>Bairro: {{ $record->localColetas->bairro }}</div>
    <div>Logradouro: {{ $record->localColetas->logradouro }}</div>
    <div>Número: {{ $record->localColetas->numero }}</div>
    <div>Tipo de resíduo: {{ $record->tipoResiduos->descricao }}</div>
    <div>Motorista: {{ $record->motoristas->nome }}</div>
    <div>Veículo: {{ $record->veiculos->modelo }}</div>
    <div>Placa: {{ $record->veiculos->placa_veiculo }}</div>
    <div>Depósito de resíduos: {{ $record->depositoResiduos->nome }}</div>
    <div>Valor da diária: R$ {{ number_format($record->valor_diaria, 2, ',', '.') }}</div>
    <div>Dias da diária: {{ $record->dias_diaria }} {{ $record->dias_diaria == 1 ? 'dia' : 'dias' }}</div>
    <div>Data da coleta: {{ \Carbon\Carbon::parse($record->data_coleta)->format('d/m/Y') }}</div>
    <div>Hora da coleta: {{ \Carbon\Carbon::parse($record->hora_coleta)->format('H:i A') }}</div>
    <div>Valor da coleta: R$ {{ number_format($record->valor_coleta, 2, ',', '.') }}</div>
    <div>Finalidade: {{ $record->finalidade }}</div>
    <div>Status: {{ $record->status }}</div>
</body>
</html>
