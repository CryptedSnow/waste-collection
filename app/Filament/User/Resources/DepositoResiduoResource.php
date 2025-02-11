<?php

namespace App\Filament\User\Resources;

use App\Filament\User\Resources\DepositoResiduoResource\Pages;
use App\Filament\User\Resources\DepositoResiduoResource\RelationManagers;
use App\Rules\UniqueValueTable;
use App\Models\{DepositoResiduo, UF};
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\{Select, TextInput};
use Filament\Tables\Columns\TextColumn;
use Filament\Notifications\Notification;

class DepositoResiduoResource extends Resource
{
    protected static ?string $model = DepositoResiduo::class;

    protected static ?string $navigationIcon = 'heroicon-o-home-modern';

    protected static ?string $tenantRelationshipName = 'depositoResiduoTenant';

    protected static ?string $navigationLabel = 'Depósito de resíduos';

    protected static ?string $label = 'Depósito';

    protected static ?string $pluralLabel = 'Depósitos';

    protected static ?string $recordTitleAttribute = 'nome';

    protected static ?int $navigationSort = 2;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('nome')
                    ->required(),
                TextInput::make('cnpj')
                    ->label('CNPJ')
                    ->required()
                    ->mask('99.999.999/9999-99')
                    ->rules(['cnpj'])
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
                    ->rules(['email', new UniqueValueTable('email', ['clientes','motoristas','empresas'])]),
                TextInput::make('telefone')
                    ->label('Telefone')
                    ->required()
                    ->mask('(99) 9999-9999')
                    ->rules(['celular_com_ddd', new UniqueValueTable('telefone', ['clientes', 'motoristas','empresas'])])
                    ->unique(ignoreRecord: true),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('nome')
                    ->label('Nome')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('cnpj')
                    ->label('CNPJ')
                    ->sortable(),
                TextColumn::make('uf')
                    ->label('Estado')
                    ->sortable(),
                TextColumn::make('cidade')
                    ->label('Cidade')
                    ->sortable(),
                TextColumn::make('bairro')
                    ->label('Bairro')
                    ->sortable(),
                TextColumn::make('logradouro')
                    ->label('Logradouro')
                    ->sortable(),
                TextColumn::make('numero')
                    ->label('Número')
                    ->sortable(),
                TextColumn::make('email')
                    ->label('Email')
                    ->sortable(),
                TextColumn::make('telefone')
                    ->label('Telefone')
                    ->sortable(),
            ])
            ->filters([
                Tables\Filters\TrashedFilter::make(),
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\EditAction::make()->visible(fn ($record) => !$record->trashed()),
                Tables\Actions\DeleteAction::make()
                    ->successNotification(function ($record) {
                        return Notification::make()
                            ->warning()
                            ->title("Depósito inativo")
                            ->body("<strong>{$record->nome}</strong> está na lixeira.");
                    }),
                Tables\Actions\RestoreAction::make()
                    ->successNotification(function ($record) {
                        return Notification::make()
                            ->success()
                            ->title("Depósito restaurado")
                            ->body("<strong>{$record->nome}</strong> está restaurado.");
                    })
                ->visible(fn ($record) => $record->trashed()),
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
            'index' => Pages\ListDepositoResiduos::route('/'),
            'create' => Pages\CreateDepositoResiduo::route('/create'),
            'edit' => Pages\EditDepositoResiduo::route('/{record:uuid}/edit'),
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
