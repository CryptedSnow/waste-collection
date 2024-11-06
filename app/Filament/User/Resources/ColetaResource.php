<?php

namespace App\Filament\User\Resources;

use App\Filament\User\Resources\ColetaResource\Pages;
use App\Filament\User\Resources\ColetaResource\RelationManagers;
use App\Models\{Coleta,LocalColeta,TipoResiduo,Motorista,Veiculo,DepositoResiduo};
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\{Select,TextInput,DatePicker,TimePicker,Hidden};
use Filament\Tables\Columns\TextColumn;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Auth;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Blade;
use Leandrocfe\FilamentPtbrFormFields\Money;
use Filament\Tables\Columns\Summarizers\Sum;

class ColetaResource extends Resource
{
    protected static ?string $model = Coleta::class;

    protected static ?string $navigationIcon = 'heroicon-o-sparkles';

    protected static ?string $tenantRelationshipName = 'coletaTenant';

    protected static ?string $navigationBadgeTooltip = 'Número de coletas';

    protected static ?string $recordTitleAttribute = 'codigo_coleta';

    protected static ?int $navigationSort = 7;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Hidden::make('uuid'),
                Select::make('local_coleta_id')
                    ->label('Local da coleta')
                    ->options(function () {
                        $user = Auth::user();
                        if ($user && $user->empresas()->exists()) {
                            return LocalColeta::whereIn('empresa_id', $user->empresas()->pluck('empresas.id'))
                            ->get()
                            ->mapWithKeys(function ($local) {
                                return [$local->id => "{$local->logradouro}, {$local->numero} ({$local->clientes->nome})"];
                            });
                        }
                    })
                    ->searchable()
                    ->required()
                    ->rules('exists:locais_coleta,id'),
                Select::make('tipo_residuo_id')
                    ->label('Resíduo')
                    ->options(function () {
                        $user = Auth::user();
                        if ($user && $user->empresas()->exists()) {
                            return TipoResiduo::where('empresa_id', $user->empresas()->pluck('empresas.id'))
                            ->orderBy('id')
                            ->pluck('descricao', 'id');
                        }
                    })
                    ->searchable()
                    ->required()
                    ->rules('exists:tipos_residuos,id'),
                Select::make('motorista_id')
                    ->label('Motorista')
                    ->options(function () {
                        $user = Auth::user();
                        if ($user && $user->empresas()->exists()) {
                            return Motorista::where('empresa_id', $user->empresas()->pluck('empresas.id'))
                            ->orderBy('id')
                            ->pluck('nome', 'id');
                        }
                    })
                    ->searchable()
                    ->required()
                    ->rules('exists:motoristas,id'),
                Select::make('veiculo_id')
                    ->label('Veículo')
                    ->options(function () {
                        $user = Auth::user();
                        if ($user && $user->empresas()->exists()) {
                            return Veiculo::whereIn('empresa_id', $user->empresas()->pluck('empresas.id'))
                            ->where('status', 'Disponível')
                            ->get()
                            ->mapWithKeys(function ($veiculo) {
                                return [$veiculo->id => "{$veiculo->modelo} (Placa {$veiculo->placa_veiculo})"];
                            });
                        }
                    })
                    ->searchable()
                    ->required()
                    ->rules('exists:veiculos,id'),
                Select::make('deposito_residuo_id')
                    ->label('Local para descarte')
                    ->options(function () {
                        $user = Auth::user();
                        if ($user && $user->empresas()->exists()) {
                            return DepositoResiduo::where('empresa_id', $user->empresas()->pluck('empresas.id'))
                            ->orderBy('id')
                            ->pluck('nome', 'id');
                        }
                    })
                    ->searchable()
                    ->required()
                    ->rules('exists:depositos_residuos,id'),
                TextInput::make('quantidade_residuos')
                    ->label('Quantidade de resíduos (KG)')
                    ->required()
                    ->numeric()
                    ->mask('999999')
                    ->rules(['min:1', 'max:999999']),
                DatePicker::make('data_coleta')
                    ->label('Data da coleta')
                    ->rules('date_format:Y-m-d')
                    ->required(),
                TimePicker::make('hora_coleta')
                    ->label('Hora da coleta')
                    ->rules('date_format:H:i')
                    ->seconds(false)
                    ->required(),
                Money::make('valor_coleta')
                    ->label('Valor da coleta')
                    ->required(),
                Select::make('finalidade')
                    ->label('Finalidade')
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
                Hidden::make('codigo_coleta')
                    ->default(fn () => self::generateCodigoColeta())
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('codigo_coleta')->label('Código de coleta')->searchable()->sortable(),
                TextColumn::make('cliente.nome')->label('Cliente')->searchable()->sortable()->toggleable(),
                TextColumn::make('localColeta.uf')->label('UF')->searchable()->sortable()->toggleable(),
                TextColumn::make('localColeta.cidade')->label('Cidade')->searchable()->sortable()->toggleable(),
                TextColumn::make('localColeta.bairro')->label('Bairro')->searchable()->sortable()->toggleable(),
                TextColumn::make('localColeta.logradouro')->label('Logradouro')->searchable()->sortable()->toggleable(),
                TextColumn::make('localColeta.numero')->label('Número')->searchable()->sortable()->toggleable(),
                TextColumn::make('tipoResiduo.descricao')->label('Tipo de resíduo')->searchable()->sortable()->toggleable(),
                TextColumn::make('motorista.nome')->label('Motorista')->searchable()->sortable()->toggleable(),
                TextColumn::make('veiculo.modelo')->label('Veículo')->searchable()->sortable()->toggleable(),
                TextColumn::make('veiculo.placa_veiculo')->label('Placa')->searchable()->sortable()->toggleable(),
                TextColumn::make('depositoResiduo.nome')->label('Local de descarte')->searchable()->sortable()->toggleable(),
                TextColumn::make('quantidade_residuos')
                    ->label('Quantidade de resíduos (KG)')
                    ->sortable(),
                TextColumn::make('data_coleta')
                    ->label('Data da coleta')
                    ->sortable()
                    ->formatStateUsing(fn($state) => \Carbon\Carbon::parse($state)->format('d/m/Y')),
                TextColumn::make('hora_coleta')
                    ->label('Hora da coleta')
                    ->sortable()
                    ->formatStateUsing(fn($state) => \Carbon\Carbon::parse($state)->format('H:i A')),
                TextColumn::make('valor_coleta')
                    ->label('Valor')
                    ->formatStateUsing(fn ($state) => 'R$ ' . number_format($state, 2, ',', '.'))
                    ->summarize([
                        Sum::make()
                            ->formatStateUsing(fn ($state) => 'R$ ' . number_format($state, 2, ',', '.'))
                            ->query(fn ($query) => $query->where('status', '!=', 'Cancelado')),
                    ]),
                TextColumn::make('finalidade')
                    ->label('Finalidade')
                    ->sortable(),
                TextColumn::make('status')
                    ->label('Status')
                    ->colors([
                        'warning' => 'Em andamento',
                        'success' => 'Concluído',
                        'danger' => 'Cancelado',
                    ])
                    ->icons([
                        'heroicon-m-clock' => 'Em andamento',
                        'heroicon-m-check-badge' => 'Concluído',
                        'heroicon-m-x-circle' => 'Cancelado',
                    ])
                    ->colors([
                        'warning' => 'Em andamento',
                        'success' => 'Concluído',
                        'danger' => 'Cancelado',
                    ])->badge(),
                TextColumn::make('created_at')
                    ->label('Criado em')
                    ->sortable()
                    ->formatStateUsing(fn($state) => \Carbon\Carbon::parse($state)->format('d/m/Y H:i:s')),

            ])
            ->filters([
                Tables\Filters\TrashedFilter::make(),
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\Action::make('pdf')
                    ->label('PDF')
                    ->color('success')
                    ->icon('heroicon-o-document-arrow-down')
                    ->action(function (Coleta $record) {
                        $cliente_nome = $record->cliente->nome ?? 'Cliente';
                        return response()->streamDownload(function () use ($record) {
                            echo Pdf::loadHtml(
                                Blade::render('invoice-coleta', ['record' => $record])
                            )->stream();
                        }, "Comprovante de coleta para $cliente_nome" . '.pdf');
                    }),
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
            ])
            ->groups([
                Tables\Grouping\Group::make('created_at')
                    ->label('Data de compra')
                    ->date()
                    ->collapsible(),
            ])
            ->defaultSort('created_at', 'desc');
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
            'edit' => Pages\EditColeta::route('/{record:uuid}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ])
            ->with(['localColeta','tipoResiduo','motorista','veiculo','depositoResiduo']);
    }

    public static function getNavigationBadge(): ?string
    {
        $user = Auth::user();
        if (!$user) {
            return null;
        }
        $empresa_id = $user->empresas->pluck('id');
        return static::getModel()::whereIn('empresa_id', $empresa_id)->withoutTrashed()->count();
    }

    public static function generateCodigoColeta(): string
    {
        $data_atual = date('ymd');
        $numero = random_int(10000, 99999);
        $letra = chr(random_int(65, 90));
        $numero_final = random_int(100, 999);
        return sprintf('%s%05d%s%03d', $data_atual, $numero, $letra, $numero_final);
    }

}
