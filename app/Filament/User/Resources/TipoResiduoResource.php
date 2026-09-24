<?php

namespace App\Filament\User\Resources;

use App\Filament\User\Resources\TipoResiduoResource\Pages;
use App\Filament\User\Resources\TipoResiduoResource\RelationManagers;
use App\Models\TipoResiduo;
use Filament\Actions\{BulkActionGroup, DeleteAction, DeleteBulkAction, EditAction};
use Filament\Actions\{RestoreAction, RestoreBulkAction, ViewAction};
use BackedEnum;
use Filament\Schemas\Schema;
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

    protected static string | BackedEnum | null $navigationIcon = 'heroicon-o-trash';

    protected static ?string $tenantRelationshipName = 'tipoResiduoTenant';

    protected static ?string $navigationLabel = 'Tipos de resíduos';

    protected static ?string $label = 'Resíduo';

    protected static ?string $pluralLabel = 'Resíduos';

    protected static ?string $recordTitleAttribute = 'descricao';

    protected static ?int $navigationSort = 3;

    public static function form(Schema $schema): Schema
    {
        return $schema
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
            ->modifyQueryUsing(function (Builder $query) {
                $query->with('empresa');
            })
            ->filters([
                Tables\Filters\TrashedFilter::make(),
            ])
            ->recordActions([
                ViewAction::make(),
                EditAction::make()->visible(fn ($record) => !$record->trashed()),
                DeleteAction::make()
                    ->successNotification(function ($record) {
                        return Notification::make()
                            ->warning()
                            ->title("Resíduo inativo")
                            ->body("<strong>{$record->descricao}</strong> está na lixeira.");
                    }),
                RestoreAction::make()
                    ->successNotification(function ($record) {
                        return Notification::make()
                            ->success()
                            ->title("Resíduo restaurado")
                            ->body("<strong>{$record->descricao}</strong> está restaurado.");
                    })
                ->visible(fn ($record) => $record->trashed()),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                    //ForceDeleteBulkAction::make(),
                    RestoreBulkAction::make(),
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
