<?php

namespace App\Filament\Resources;

use App\Filament\Resources\LocalColetaResource\Pages;
use App\Filament\Resources\LocalColetaResource\RelationManagers;
use App\Models\{LocalColeta,UF,Cliente};
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\{Select,TextInput};
use Filament\Tables\Columns\TextColumn;

class LocalColetaResource extends Resource
{
    protected static ?string $model = LocalColeta::class;

    protected static ?string $navigationIcon = 'heroicon-o-map-pin';

    protected static ?string $navigationLabel = 'Locais de coleta';

    protected static ?int $navigationSort = 6;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('cliente_id')
                    ->label('Cliente')
                    ->options(Cliente::all()->pluck('nome', 'id'))
                    ->required()
                    ->rules('exists:clientes,id'),
                Select::make('uf')->label('Estado')
                    ->options(UF::all()->pluck('estado', 'sigla'))
                    ->required()
                    ->rules('exists:ufs,sigla'),
                TextInput::make('cidade')
                    ->required(),
                TextInput::make('bairro')
                    ->required(),
                TextInput::make('logradouro')
                    ->required(),
                TextInput::make('numero')
                    ->label('Número')
                    ->required()
                    ->integer()
                    ->mask('9999'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('cliente.nome')->label('Cliente solicitante')->searchable()->sortable(),
                TextColumn::make('uf')->label('Estado')->searchable()->sortable(),
                TextColumn::make('cidade')->label('Cidade')->searchable()->sortable(),
                TextColumn::make('bairro')->label('Bairro')->searchable()->sortable(),
                TextColumn::make('logradouro')->label('Logradouro')->searchable()->sortable(),
                TextColumn::make('numero')->label('Número')->sortable(),
            ])
            ->filters([
                Tables\Filters\TrashedFilter::make()->label('Exibir locais de coleta excluídos'),
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
            'index' => Pages\ListLocalColetas::route('/'),
            'create' => Pages\CreateLocalColeta::route('/create'),
            'edit' => Pages\EditLocalColeta::route('/{record}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ])
            ->with('cliente');
    }
}
