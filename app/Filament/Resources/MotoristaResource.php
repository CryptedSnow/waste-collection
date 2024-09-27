<?php

namespace App\Filament\Resources;

use App\Filament\Resources\MotoristaResource\Pages;
use App\Filament\Resources\MotoristaResource\RelationManagers;
use App\Models\{Motorista,Empresa};
use App\Rules\{UniqueValueTable};
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

class MotoristaResource extends Resource
{
    protected static ?string $model = Motorista::class;

    protected static ?string $navigationIcon = 'heroicon-o-identification';

    protected static ?int $navigationSort = 5;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('nome')
                    ->required(),
                TextInput::make('cpf')
                    ->label('CPF')
                    ->required()
                    ->mask('999.999.999-99')
                    ->rules(['cpf', new UniqueValueTable('cpf', ['clientes'])])
                    ->unique(ignoreRecord: true),
                Select::make('empresa_id')
                    ->label('Empresa')
                    ->options(Empresa::all()->pluck('nome', 'id'))
                    ->required()
                    ->rules('exists:empresas,id'),
                TextInput::make('cnh')
                    ->label('CNH')
                    ->required()
                    ->mask('99999999999')
                    ->unique(ignoreRecord: true)->rules(['cnh']),
                Select::make('categoria')
                    ->label('Categoria da habilitação')
                    ->required()
                    ->options([
                        'A' => 'A',
                        'B' => 'B',
                        'C' => 'C',
                        'D' => 'D',
                        'E' => 'E',
                    ])
                    ->rules([Rule::in(['A', 'B', 'C', 'D', 'E'])]),
                TextInput::make('email')
                    ->required()
                    ->email()
                    ->unique(ignoreRecord: true)
                    ->rules([new UniqueValueTable('email', ['empresas','clientes'])]),
                TextInput::make('telefone')
                    ->label('Telefone')
                    ->required()
                    ->mask('(99) 9999-9999')->rules(['celular_com_ddd', new UniqueValueTable('telefone', ['empresas', 'clientes'])])
                    ->unique(ignoreRecord: true),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('nome')->label('Motorista')->searchable()->sortable(),
                TextColumn::make('cpf')->label('CPF')->sortable(),
                TextColumn::make('empresa.nome')->label('Empresa')->sortable(),
                TextColumn::make('cnh')->label('CNH')->sortable(),
                TextColumn::make('categoria')->label('Categoria')->sortable(),
                TextColumn::make('email')->label('Email')->sortable(),
                TextColumn::make('telefone')->label('Telefone')->sortable(),
            ])
            ->filters([
                Tables\Filters\TrashedFilter::make()->label('Exibir motoristas excluídos'),
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
            'index' => Pages\ListMotoristas::route('/'),
            'create' => Pages\CreateMotorista::route('/create'),
            'edit' => Pages\EditMotorista::route('/{record}/edit'),
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
