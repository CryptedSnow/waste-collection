<?php

namespace App\Filament\User\Resources;

use App\Filament\User\Resources\ClienteResource\Pages;
use App\Filament\User\Resources\ClienteResource\RelationManagers;
use App\Models\{Cliente,UF};
use App\Rules\UniqueValueTable;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\{TextInput,Hidden};
use Filament\Tables\Columns\TextColumn;

class ClienteResource extends Resource
{
    protected static ?string $model = Cliente::class;

    protected static ?string $navigationIcon = 'heroicon-o-user';

    protected static ?string $tenantRelationshipName = 'clienteTenant';

    protected static ?string $recordTitleAttribute = 'nome';

    protected static ?int $navigationSort = 1;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Hidden::make('uuid'),
                TextInput::make('nome')
                    ->required(),
                TextInput::make('cpf')
                    ->label('CPF')
                    ->required()
                    ->mask('999.999.999-99')
                    ->rules(['cpf', new UniqueValueTable('cpf', ['motoristas'])])
                    ->unique(ignoreRecord: true),
                TextInput::make('email')
                    ->required()
                    ->email()
                    ->unique(ignoreRecord: true)
                    ->rules([new UniqueValueTable('email', ['empresas','motoristas'])]),
                TextInput::make('telefone')
                    ->label('Telefone')
                    ->required()
                    ->mask('(99) 9999-9999')
                    ->rules(['celular_com_ddd', new UniqueValueTable('telefone', ['empresas', 'motoristas'])])
                    ->unique(ignoreRecord: true),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('nome')->label('Nome')->searchable()->sortable(),
                TextColumn::make('cpf')->label('CPF')->sortable(),
                TextColumn::make('email')->label('Email')->sortable(),
                TextColumn::make('telefone')->label('Telefone')->sortable(),
            ])
            ->filters([
                Tables\Filters\TrashedFilter::make(),
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
            'index' => Pages\ListClientes::route('/'),
            'create' => Pages\CreateCliente::route('/create'),
            'edit' => Pages\EditCliente::route('/{record:uuid}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }
}
