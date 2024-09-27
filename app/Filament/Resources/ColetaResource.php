<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ColetaResource\Pages;
use App\Filament\Resources\ColetaResource\RelationManagers;
use App\Models\{Coleta,LocalColeta,TipoResiduo,Motorista,Veiculo};
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\{Select,TextInput,DatePicker,TimePicker};
use Filament\Tables\Columns\TextColumn;
use Illuminate\Validation\Rule;

class ColetaResource extends Resource
{
    protected static ?string $model = Coleta::class;

    protected static ?string $navigationIcon = 'heroicon-o-sparkles';

    protected static ?int $navigationSort = 7;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('local_coleta_id')
                    ->label('Local')
                    ->options(LocalColeta::all()->pluck('logradouro', 'id'))
                    ->required()
                    ->rules('exists:locais_coleta,id'),
                Select::make('tipo_residuo_id')
                    ->label('Resíduo')->options(TipoResiduo::all()->pluck('descricao', 'id'))
                    ->required()
                    ->rules('exists:tipos_residuos,id'),
                Select::make('motorista_id')
                    ->label('Motorista')
                    ->options(Motorista::all()->pluck('nome', 'id'))
                    ->required()
                    ->rules('exists:motoristas,id'),
                Select::make('veiculo_id')
                    ->label('Veículo')
                    ->options(Veiculo::where('status', 'Disponível')
                    ->pluck('modelo', 'id'))
                    ->required()
                    ->rules('exists:veiculos,id'),
                TextInput::make('quantidade_residuos')
                    ->label('Quantidade de resíduos (KG)')
                    ->required()
                    ->numeric()
                    ->mask('99999999')
                    ->rules(['min:1', 'max:10000000']),
                DatePicker::make('data_coleta')
                    ->label('Data da coleta')
                    ->rules('date_format:Y-m-d')
                    ->required(),
                TimePicker::make('hora_coleta')
                    ->label('Hora da coleta')
                    ->rules('date_format:H:i')
                    ->seconds(false)
                    ->required(),
                Select::make('destinacao_final')
                    ->label('Destinação')
                    ->required()
                    ->options([
                        'Reciclagem' => 'Reciclagem',
                        'Incineiração' => 'Incineiração',
                        'Compostagem' => 'Compostagem',
                        'Coprocessamento' => 'Coprocessamento',
                        'Aterro controlado' => 'Aterro controlado',
                    ])
                    ->rules([Rule::in(['Reciclagem', 'Incineiração', 'Compostagem', 'Coprocessamento', 'Aterro controlado'])]),
                Select::make('status')
                    ->label('Status')
                    ->required()
                    ->options([
                        'Em andamento' => 'Em andamento',
                        'Concluído' => 'Concluído',
                        'Cancelado' => 'Cancelado',
                    ])
                    ->rules([Rule::in(['Em andamento', 'Concluído', 'Cancelado'])]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('cliente.nome')->label('Cliente solicitante')->searchable()->sortable(),
                TextColumn::make('local_coleta.uf')->label('UF')->searchable()->sortable(),
                TextColumn::make('local_coleta.cidade')->label('Cidade')->searchable()->sortable(),
                TextColumn::make('local_coleta.bairro')->label('Bairro')->searchable()->sortable(),
                TextColumn::make('local_coleta.logradouro')->label('Logradouro')->searchable()->sortable(),
                TextColumn::make('local_coleta.numero')->label('Número')->searchable()->sortable(),
                TextColumn::make('tipo_residuo.descricao')->label('Tipo de resíduo')->searchable()->sortable(),
                TextColumn::make('motorista.nome')->label('Motorista')->sortable(),
                TextColumn::make('veiculo.modelo')->label('Veiculo')->sortable(),
                TextColumn::make('quantidade_residuos')->label('Quantidade de resíduos (KG)')->sortable(),
                TextColumn::make('data_coleta')->label('Data da coleta')->sortable()->formatStateUsing(fn($state) => \Carbon\Carbon::parse($state)->format('d/m/Y')),
                TextColumn::make('hora_coleta')->label('Hora da coleta')->sortable()->formatStateUsing(fn($state) => \Carbon\Carbon::parse($state)->format('H:i A')),
                TextColumn::make('destinacao_final')->label('Destinação')->sortable(),
                TextColumn::make('status')->label('Status')->sortable()->colors([
                    'primary' => 'Em andamento',
                    'success' => 'Concluído',
                    'danger' => 'Cancelado',
                ])
                ->icons([
                    'heroicon-m-clock' => 'Em andamento',
                    'heroicon-m-check-badge' => 'Concluído',
                    'heroicon-m-x-circle' => 'Cancelado',
                ])
                ->colors([
                    'primary' => 'Em andamento',
                    'success' => 'Concluído',
                    'danger' => 'Cancelado',
                ])->badge(),
            ])
            ->filters([
                Tables\Filters\TrashedFilter::make()->label('Exibir clientes excluídos'),
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\EditAction::make()->visible(fn ($record) => !$record->trashed()),
                Tables\Actions\DeleteAction::make(),
                Tables\Actions\RestoreAction::make()->visible(fn ($record) => $record->trashed()),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                    //Tables\Actions\ForceDeleteBulkAction::make(),
                    Tables\Actions\RestoreBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListColetas::route('/'),
            'create' => Pages\CreateColeta::route('/create'),
            'edit' => Pages\EditColeta::route('/{record}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ])
            ->with('local_coleta')
            ->with('tipo_residuo')
            ->with('motorista')
            ->with('veiculo')
            ->with('cliente');
    }
}
