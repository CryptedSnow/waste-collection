<?php

namespace App\Filament\User\Resources;

use App\Filament\User\Resources\TipoResiduoResource\Pages;
use App\Filament\User\Resources\TipoResiduoResource\RelationManagers;
use App\Models\TipoResiduo;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\TextColumn;
use Filament\Notifications\Notification;

class TipoResiduoResource extends Resource
{
    protected static ?string $model = TipoResiduo::class;

    protected static ?string $navigationIcon = 'heroicon-o-trash';

    protected static ?string $tenantRelationshipName = 'tipoResiduoTenant';

    protected static ?string $navigationLabel = 'Tipos de resíduos';

    protected static ?string $label = 'Resíduo';

    protected static ?string $pluralLabel = 'Resíduos';

    protected static ?string $recordTitleAttribute = 'descricao';

    protected static ?int $navigationSort = 3;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('descricao')
                    ->label('Descrição')
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('descricao')
                    ->label('Descrição')
                    ->searchable()
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
                            ->title("Resíduo inativo")
                            ->body("<strong>{$record->descricao}</strong> está na lixeira.");
                    }),
                Tables\Actions\RestoreAction::make()
                    ->successNotification(function ($record) {
                        return Notification::make()
                            ->success()
                            ->title("Resíduo restaurado")
                            ->body("<strong>{$record->descricao}</strong> está restaurado.");
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
            'index' => Pages\ListTipoResiduos::route('/'),
            'create' => Pages\CreateTipoResiduo::route('/create'),
            'edit' => Pages\EditTipoResiduo::route('/{record:uuid}/edit'),
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
