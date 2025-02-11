<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Comprovante de coleta para {{$record->cliente->nome}} </title>
</head>
<body>
    <div>Código de coleta: {{ $record->codigo_coleta }}</div>
    <div>Cliente: {{ $record->cliente->nome }}</div>
    <div>UF: {{ $record->localColeta->uf }}</div>
    <div>Cidade: {{ $record->localColeta->cidade }}</div>
    <div>Bairro: {{ $record->localColeta->bairro }}</div>
    <div>Logradouro: {{ $record->localColeta->logradouro }}</div>
    <div>Número: {{ $record->localColeta->numero }}</div>
    <div>Tipo de resíduo: {{ $record->tipoResiduo->descricao }}</div>
    <div>Motorista: {{ $record->motorista->nome }}</div>
    <div>Veículo: {{ $record->veiculo->modelo }}</div>
    <div>Placa: {{ $record->veiculo->placa_veiculo }}</div>
    <div>Depósito de resíduos: {{ $record->depositoResiduo->nome }}</div>
    <div>Quantidade de resíduos: {{ $record->quantidade_residuos }} kg</div>
    <div>Data da coleta: {{ \Carbon\Carbon::parse($record->data_coleta)->format('d/m/Y') }}</div>
    <div>Hora da coleta: {{ \Carbon\Carbon::parse($record->hora_coleta)->format('H:i A') }}</div>
    <div>Valor da coleta: R$ {{ number_format($record->valor_coleta, 2, ',', '.') }}</div>
    <div>Finalidade: {{ $record->finalidade }}</div>
    <div>Status: {{ $record->status }}</div>
</body>
</html>
