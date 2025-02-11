<?php

namespace App\Filament\User\Resources;

use App\Filament\User\Resources\LocalColetaResource\Pages;
use App\Filament\User\Resources\LocalColetaResource\RelationManagers;
use App\Models\{LocalColeta, Cliente, UF};
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
use Filament\Facades\Filament;

class LocalColetaResource extends Resource
{
    protected static ?string $model = LocalColeta::class;

    protected static ?string $navigationIcon = 'heroicon-o-map-pin';

    protected static ?string $tenantRelationshipName = 'localColetaTenant';

    protected static ?string $recordTitleAttribute = 'logradouro';

    protected static ?string $navigationLabel = 'Locais de coleta';

    protected static ?string $label = 'Local';

    protected static ?string $pluralLabel = 'Locais';

    protected static ?int $navigationSort = 6;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('cliente_id')
                    ->label('Cliente')
                    ->options(function () {
                        $tenant = Filament::getTenant();
                        if ($tenant) {
                            return Cliente::where('empresa_id', $tenant->id)
                            ->orderBy('id')
                            ->pluck('nome', 'id');
                        }
                    })
                    ->searchable()
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
                TextColumn::make('clientes.nome')
                    ->label('Cliente')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('uf')
                    ->label('Estado')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('cidade')
                    ->label('Cidade')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('bairro')
                    ->label('Bairro')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('logradouro')
                    ->label('Logradouro')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('numero')
                    ->label('Número')
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
                            ->title("Local de coleta inativo")
                            ->body("<strong>{$record->logradouro}, {$record->numero}</strong> está na lixeira.");
                    }),
                Tables\Actions\RestoreAction::make()
                    ->successNotification(function ($record) {
                        return Notification::make()
                            ->success()
                            ->title("Local de coleta restaurado")
                            ->body("<strong>{$record->logradouro}, {$record->numero}</strong> está restaurado.");
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
            'index' => Pages\ListLocalColetas::route('/'),
            'create' => Pages\CreateLocalColeta::route('/create'),
            'edit' => Pages\EditLocalColeta::route('/{record:uuid}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ])
            ->with('clientes');
    }
}
