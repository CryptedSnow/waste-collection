<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RoleResource\Pages;
use App\Filament\Resources\RoleResource\RelationManagers;
use App\Models\Role;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\{TextInput,Select,Hidden};
use Filament\Tables\Columns\TextColumn;
use Illuminate\Support\Facades\Auth;

class RoleResource extends Resource
{
    protected static ?string $model = Role::class;

    protected static ?string $navigationIcon = 'heroicon-o-identification';

    protected static ?string $navigationLabel = 'Papéis';

    protected static ?string $recordTitleAttribute = 'name';

    protected static ?int $navigationSort = 3;

    protected static ?string $navigationGroup = 'Configurações';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Hidden::make('uuid'),
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
                TextColumn::make('permissions')
                        ->label('Permissões')
                        ->formatStateUsing(function ($record) {
                            if ($record->permissions->isNotEmpty()) {
                                return $record->permissions->pluck('name')->join(', ');
                            }
                            return 'Sem permissões';
                        })
                        ->searchable()
                        ->placeholder('Sem permissões'),
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
