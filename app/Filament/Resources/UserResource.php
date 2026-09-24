<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UserResource\Pages;
use App\Filament\Resources\UserResource\RelationManagers;
use App\Models\User;
use App\Rules\UniqueValueTable;
use BackedEnum;
use Filament\Actions\{BulkActionGroup, DeleteAction, DeleteBulkAction, EditAction};
use Filament\Actions\{RestoreAction, RestoreBulkAction, ViewAction};
use Filament\Forms;
use Filament\Forms\Components\{Select, TextInput};
use Filament\Forms\Form;
use Filament\Notifications\Notification;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Tables;
use Filament\Tables\Columns\{TextColumn, ImageColumn};
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Facades\{Hash, Auth};
use Illuminate\Contracts\Support\Htmlable;
use UnitEnum;

class UserResource extends Resource
{
    protected static ?string $model = User::class;

    protected static string | BackedEnum | null $navigationIcon = 'heroicon-o-user-circle';

    protected static ?string $navigationLabel = 'Usuários';

    protected static ?string $label = 'Usuário';

    protected static ?string $pluralLabel = 'Usuários';

    protected static string | Htmlable | null $navigationBadgeTooltip = 'Número de usuários';

    protected static ?string $recordTitleAttribute = 'name';

    protected static ?int $navigationSort = 2;

    protected static string | UnitEnum | null $navigationGroup = 'Controle de acesso';

    public static function form(Schema $schema): Schema
    {
        return $schema
            ->schema([
                TextInput::make('name')
                    ->required()
                    ->label('Nome'),
                TextInput::make('email')
                    ->required()
                    ->label('Email')
                    ->email()
                    ->unique(ignoreRecord: true)
                    ->rules(['email', new UniqueValueTable('email', ['empresas','motoristas','clientes'])]),
                TextInput::make('password')
                    ->password()
                    ->label('Senha')
                    ->revealable(true)
                    ->dehydrateStateUsing(fn ($state) => filled($state) ? Hash::make($state) : null)
                    ->dehydrated(fn ($state) => filled($state))
                    ->required(fn (string $context): bool => $context === 'create')
                    ->hidden(fn (string $context): bool => $context !== 'create'),
                Select::make('roles')
                    ->required()
                    ->label('Papéis')
                    ->multiple()
                    ->relationship('roles', 'name', fn ($query) => $query->where('name', '!=', 'Super Admin'))
                    ->preload(),
                Select::make('empresas')
                    ->required()
                    ->label('Empresas')
                    ->multiple()
                    ->relationship('empresas', 'nome', fn ($query) => $query->orderBy('id'))
                    ->preload(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('avatar_url')
                    ->circular()
                    ->label('Foto')
                    ->placeholder('Sem foto'),
                TextColumn::make('name')
                    ->label('Nome')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('email')
                    ->label('Email')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('roles')
                    ->label('Papéis')
                    ->state(function ($record) {
                        return $record->roles->isNotEmpty()
                            ? $record->roles->pluck('name')->join(', ')
                            : null;
                    })
                    ->searchable(query: function (Builder $query, string $search) {
                        return $query->whereHas('roles', function ($query) use ($search) {
                            $query->where('name', 'like', "%{$search}%");
                        });
                    })
                    ->placeholder('Sem papéis'),
                TextColumn::make('empresas')
                    ->label('Empresas')
                    ->state(function ($record) {
                        return $record->empresas->isNotEmpty()
                            ? $record->empresas->pluck('nome')->join(', ')
                            : null;
                    })
                    ->searchable(query: function (Builder $query, string $search) {
                        return $query->whereHas('empresas', function ($query) use ($search) {
                            $query->where('nome', 'like', "%{$search}%");
                        });
                    })
                    ->placeholder('Sem empresas'),
            ])
            ->modifyQueryUsing(function (Builder $query) {
                $query->with(['roles', 'empresas']);
            })
            ->filters([
                Tables\Filters\TrashedFilter::make(),
            ])
            ->recordActions([
                ViewAction::make()->visible(fn ($record) => static::canView($record)),
                EditAction::make()->visible(fn ($record) => static::canEdit($record) && !$record->trashed()),
                DeleteAction::make()
                    ->visible(fn ($record) => static::canDelete($record) && !$record->trashed())
                    ->successNotification(function ($record) {
                        return Notification::make()
                            ->warning()
                            ->title("Usuário(a) inativo(a)")
                            ->body("<strong>{$record->name}</strong> está na lixeira.");
                    }),
                RestoreAction::make()
                    ->successNotification(function ($record) {
                        return Notification::make()
                            ->success()
                            ->title("Usuário(a) restaurado(a)")
                            ->body("<strong>{$record->name}</strong> está restaurado(a).");
                    })
                ->visible(fn ($record) => $record->trashed()),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    //DeleteBulkAction::make(),
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
            'index' => Pages\ListUsers::route('/'),
            'create' => Pages\CreateUser::route('/create'),
            'edit' => Pages\EditUser::route('/{record:uuid}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ])
            ->when(!Auth::user()?->hasRole('Super Admin'), function ($query) {
                $query->whereDoesntHave('roles', function ($query) {
                    $query->where('name', 'Super Admin');
                });
            });
    }

    public static function getNavigationBadge(): ?string
    {
        return static::getModel()::withoutTrashed()
            ->when(!Auth::user()?->hasRole('Super Admin'), function ($query) {
                $query->whereDoesntHave('roles', function ($query) {
                    $query->where('name', 'Super Admin');
                });
            })
            ->count();
    }

    public static function canView($record): bool
    {
        $user = Auth::user();

        if ($user->hasRole('Super Admin')) {
            return true;
        }

        if ($record->hasRole('Super Admin') || $record->hasRole('Admin')) {
            return $user->id === $record->id;
        }

        return $user->hasRole('Admin');
    }

    public static function canEdit($record): bool
    {
        return static::canView($record);
    }

    public static function canDelete($record): bool
    {
        return static::canView($record);
    }

}
