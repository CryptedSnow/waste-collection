<?php

namespace App\Filament\Resources;

use App\Filament\Resources\VeiculoResource\Pages;
use App\Filament\Resources\VeiculoResource\RelationManagers;
use App\Models\{Veiculo,Empresa};
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\{Select,TextInput};
use Filament\Tables\Columns\TextColumn;
use Illuminate\Validation\Rule;

class VeiculoResource extends Resource
{
    protected static ?string $model = Veiculo::class;

    protected static ?string $navigationIcon = 'heroicon-o-truck';

    protected static ?int $navigationSort = 4;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('empresa_id')
                    ->label('Empresa')
                    ->options(Empresa::all()->pluck('nome', 'id'))
                    ->required()->rules('exists:empresas,id'),
                TextInput::make('placa_veiculo')
                    ->label('Placa do veículo')
                    ->required()
                    ->rules(['formato_placa_de_veiculo'])
                    ->unique(ignoreRecord: true),
                TextInput::make('modelo')
                    ->required(),
                TextInput::make('capacidade_carga')
                    ->label('Capacidade de carga (KG)')
                    ->required()
                    ->numeric()
                    ->mask('99999999')
                    ->rules(['min:1', 'max:10000000']),
                Select::make('status')
                        ->label('Status')
                        ->required()
                        ->options([
                            'Disponível' => 'Disponível',
                            'Em manutenção' => 'Em manutenção',
                        ])
                        ->rules([Rule::in(['Disponível', 'Em manutenção'])]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('empresa.nome')->label('Empresa')->searchable()->sortable(),
                TextColumn::make('placa_veiculo')->label('Placa do veículo')->searchable()->sortable(),
                TextColumn::make('modelo')->label('Modelo')->sortable(),
                TextColumn::make('capacidade_carga')->label('Capacidade da carga (KG)')->sortable(),
                TextColumn::make('status')->label('Status')->sortable()->colors([
                    'primary' => 'Em manutenção',
                    'success' => 'Disponível',
                ])
                ->icons([
                    'heroicon-m-wrench-screwdriver' => 'Em manutenção',
                    'heroicon-m-check-badge' => 'Disponível',
                ])
                ->colors([
                    'primary' => 'Em manutenção',
                    'success' => 'Disponível',
                ])->badge(),
            ])
            ->filters([
                Tables\Filters\TrashedFilter::make()->label('Exibir veículos excluídos'),
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
            'index' => Pages\ListVeiculos::route('/'),
            'create' => Pages\CreateVeiculo::route('/create'),
            'edit' => Pages\EditVeiculo::route('/{record}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ])
            ->with('empresa');
    }
}
