<?php

namespace App\Filament\User\Resources;

use App\Filament\User\Resources\MotoristaResource\Pages;
use App\Filament\User\Resources\MotoristaResource\RelationManagers;
use App\Models\Motorista;
use App\Rules\UniqueValueTable;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\{Select, TextInput};
use Filament\Tables\Columns\{TextColumn, SelectColumn};
use Illuminate\Validation\Rule;
use Filament\Notifications\Notification;

class MotoristaResource extends Resource
{
    protected static ?string $model = Motorista::class;

    protected static ?string $navigationIcon = 'heroicon-o-identification';

    protected static ?string $tenantRelationshipName = 'motoristaTenant';

    protected static ?string $navigationLabel = 'Motoristas';

    protected static ?string $label = 'Motorista';

    protected static ?string $pluralLabel = 'Motoristas';

    protected static ?string $recordTitleAttribute = 'nome';

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
                    ->rules(['email', new UniqueValueTable('email', ['empresas','clientes'])]),
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
                TextColumn::make('nome')
                    ->label('Nome')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('cpf')
                    ->label('CPF')
                    ->sortable(),
                TextColumn::make('cnh')
                    ->label('CNH')
                    ->sortable(),
                SelectColumn::make('categoria')
                    ->label('Categoria')
                    ->sortable()
                    ->options([
                        'A' => 'A',
                        'B' => 'B',
                        'C' => 'C',
                        'D' => 'D',
                        'E' => 'E',
                    ])
                    ->selectablePlaceholder(false)
                    ->rules(['required', Rule::in(['A', 'B', 'C', 'D', 'E'])]),
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
                            ->title("Motorista inativo(a)")
                            ->body("<strong>{$record->nome}</strong> está na lixeira.");
                    }),
                Tables\Actions\RestoreAction::make()
                    ->successNotification(function ($record) {
                        return Notification::make()
                            ->success()
                            ->title("Motorista restaurado(a)")
                            ->body("<strong>{$record->nome}</strong> está restaurado(a).");
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
            'index' => Pages\ListMotoristas::route('/'),
            'create' => Pages\CreateMotorista::route('/create'),
            'edit' => Pages\EditMotorista::route('/{record:uuid}/edit'),
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
