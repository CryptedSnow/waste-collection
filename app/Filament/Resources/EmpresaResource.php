<?php

namespace App\Filament\Resources;

use App\Filament\Resources\EmpresaResource\Pages;
use App\Filament\Resources\EmpresaResource\RelationManagers;
use App\Models\{Empresa,UF};
use App\Rules\UniqueValueTable;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Forms\Components\{Select,TextInput,Hidden};
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Facades\Auth;

class EmpresaResource extends Resource
{
    protected static ?string $model = Empresa::class;

    protected static ?string $navigationIcon = 'heroicon-o-building-office';

    protected static ?string $recordTitleAttribute = 'nome';

    protected static ?int $navigationSort = 1;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Hidden::make('uuid'),
                TextInput::make('nome')
                    ->required(),
                TextInput::make('cnpj')
                    ->label('CNPJ')
                    ->required()
                    ->mask('99.999.999/9999-99')
                    ->rules(['cnpj', new UniqueValueTable('cnpj', ['depositos_residuos'])])
                    ->unique(ignoreRecord: true),
                Select::make('uf')
                    ->label('Estado')
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
                TextInput::make('email')
                    ->required()
                    ->email()
                    ->unique(ignoreRecord: true)
                    ->rules([new UniqueValueTable('email', ['clientes','motoristas'])]),
                TextInput::make('telefone')
                    ->label('Telefone')
                    ->required()
                    ->mask('(99) 9999-9999')
                    ->rules(['celular_com_ddd', new UniqueValueTable('telefone', ['clientes', 'motoristas'])])
                    ->unique(ignoreRecord: true),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('nome')->label('Nome')->searchable()->sortable(),
                TextColumn::make('cnpj')->label('CNPJ')->sortable(),
                TextColumn::make('uf')->label('Estado')->sortable(),
                TextColumn::make('cidade')->label('Cidade')->sortable(),
                TextColumn::make('bairro')->label('Bairro')->sortable(),
                TextColumn::make('logradouro')->label('Logradouro')->sortable(),
                TextColumn::make('numero')->label('Número')->sortable(),
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
            'index' => Pages\ListEmpresas::route('/'),
            'create' => Pages\CreateEmpresa::route('/create'),
            'edit' => Pages\EditEmpresa::route('/{record:uuid}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }

    public static function canViewAny(): bool
    {
        return Auth::user()->hasRole('Admin');
    }

    public static function canCreate(): bool
    {
        return Auth::user()->hasRole('Admin');
    }

    public static function canEdit($record): bool
    {
        return Auth::user()->hasRole('Admin');
    }

    public static function canDelete($record): bool
    {
        return Auth::user()->hasRole('Admin');
    }

    public static function canRestore($record): bool
    {
        return Auth::user()->hasRole('Admin');
    }

    public static function canRestoreBulk(): bool
    {
        return Auth::user()->hasRole('Admin');
    }
}
