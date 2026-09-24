<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RoleResource\Pages;
use App\Filament\Resources\RoleResource\RelationManagers;
use App\Models\Role;
use BackedEnum;
use UnitEnum;
use Filament\Forms\Components\{TextInput, Select};
use Filament\Actions\{BulkActionGroup, DeleteAction, DeleteBulkAction, EditAction};
use Filament\Actions\{RestoreAction, RestoreBulkAction, ViewAction};
use Filament\Forms\Form;
use Filament\Notifications\Notification;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Facades\Auth;

class RoleResource extends Resource
{
    protected static ?string $model = Role::class;

    protected static string | BackedEnum | null $navigationIcon = 'heroicon-o-identification';

    protected static ?string $navigationLabel = 'Papéis';

    protected static ?string $pluralLabel = 'Papéis';

    protected static ?string $label = 'Papel';

    protected static ?string $recordTitleAttribute = 'name';

    protected static ?int $navigationSort = 3;

    protected static string | UnitEnum | null $navigationGroup = 'Controle de acesso';

    public static function form(Schema $schema): Schema
    {
        return $schema
            ->schema([
                TextInput::make('name')
                    ->required()
                    ->label('Papel'),
                Select::make('permissions')
                    ->label('Permissões')
                    ->multiple()
                    ->relationship('permissions', 'name', fn ($query) => $query->orderBy('id'))
                    ->preload(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')->label('Papel')->searchable()->sortable(),
                TextColumn::make('permissions_list')
                    ->label('Permissões')
                    ->state(function ($record) {
                        return $record->permissions->isNotEmpty()
                            ? $record->permissions->pluck('name')->join(', ')
                            : 'Sem permissões';
                    })
                    ->searchable(query: function (Builder $query, string $search): Builder {
                        return $query->whereHas('permissions', function (Builder $query) use ($search) {
                            $query->where('name', 'like', "%{$search}%");
                        });
                    })
                    ->placeholder('Sem permissões'),
            ])
            ->modifyQueryUsing(function (Builder $query) {
                $query->with('permissions');
            })
            ->filters([
                Tables\Filters\TrashedFilter::make(),
            ])
            ->recordActions([
                //ViewAction::make(),
                //EditAction::make()->visible(fn ($record) => !$record->trashed()),
                // DeleteAction::make()
                //     ->successNotification(function ($record) {
                //         return Notification::make()
                //             ->warning()
                //             ->title("Papel inativo")
                //             ->body("<strong>{$record->name}</strong> está na lixeira.");
                //     }),
                RestoreAction::make()
                    ->successNotification(function ($record) {
                        return Notification::make()
                            ->success()
                            ->title("Papel restaurado")
                            ->body("<strong>{$record->name}</strong> está restaurado.");
                    })
                ->visible(fn ($record) => $record->trashed()),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    //DeleteBulkAction::make(),
                    //ForceDeleteBulkAction::make(),
                    RestoreBulkAction::make(),
                ]),
            ])
            ->recordUrl(null);
    }

    public static function canGloballySearch(): bool
    {
        return false;
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
            'index' => Pages\ListRoles::route('/'),
            'create' => Pages\CreateRole::route('/create'),
            'edit' => Pages\EditRole::route('/{record:uuid}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ])
            ->when(!Auth::user()?->hasRole('Super Admin'), function ($query) {
                $query->where('name', '!=', 'Super Admin');
            });
    }

}
