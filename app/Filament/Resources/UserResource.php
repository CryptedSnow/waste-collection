<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UserResource\Pages;
use App\Filament\Resources\UserResource\RelationManagers;
use App\Models\User;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\{Select, TextInput};
use Filament\Tables\Columns\TextColumn;
use App\Rules\UniqueValueTable;
use Illuminate\Support\Facades\{Hash, Auth};
use Filament\Notifications\Notification;

class UserResource extends Resource
{
    protected static ?string $model = User::class;

    protected static ?string $navigationIcon = 'heroicon-o-user-circle';

    protected static ?string $navigationLabel = 'Usuários';

    protected static ?string $label = 'Usuário';

    protected static ?string $pluralLabel = 'Usuários';

    protected static ?string $navigationBadgeTooltip = 'Número de usuários';

    protected static ?string $recordTitleAttribute = 'name';

    protected static ?int $navigationSort = 2;

    protected static ?string $navigationGroup = 'Controle de acesso';

    public static function form(Form $form): Form
    {
        return $form
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
                    ->relationship('roles', 'name')
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
                    ->formatStateUsing(function ($record) {
                        if ($record->roles->isNotEmpty()) {
                            return $record->roles->pluck('name')->join(', ');
                        }
                    })
                    ->searchable(query: function (Builder $query, string $search) {
                        $query->whereHas('roles', function ($query) use ($search) {
                            $query->where('name', 'like', "%{$search}%");
                        });
                    })
                    ->placeholder('Sem papéis'),
                TextColumn::make('empresas')
                    ->label('Empresas')
                    ->formatStateUsing(function ($record) {
                        if ($record->empresas->isNotEmpty()) {
                            return $record->empresas->pluck('nome')->join(', ');
                        }
                    })
                    ->searchable(query: function (Builder $query, string $search) {
                        $query->whereHas('empresas', function ($query) use ($search) {
                            $query->where('nome', 'like', "%{$search}%");
                        });
                    })
                    ->placeholder('Sem empresas'),
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
                            ->title("Usuário(a) inativo(a)")
                            ->body("<strong>{$record->name}</strong> está na lixeira.");
                    }),
                Tables\Actions\RestoreAction::make()
                    ->successNotification(function ($record) {
                        return Notification::make()
                            ->success()
                            ->title("Usuário(a) restaurado(a)")
                            ->body("<strong>{$record->name}</strong> está restaurado(a).");
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
            ->when(Auth::user()?->hasRole('Admin'), function ($query) {
                $query->where(function ($query) {
                    $query->where('id', Auth::id())
                        ->orWhereDoesntHave('roles', function ($query) {
                            $query->where('name', 'Admin');
                        });
                });
            });
    }

    public static function getNavigationBadge(): ?string
    {
        return static::getModel()::withoutTrashed()
            ->when(Auth::user()?->hasRole('Admin'), function ($query) {
                $query->where(function ($query) {
                    $query->where('id', Auth::id())
                        ->orWhereDoesntHave('roles', function ($query) {
                            $query->where('name', 'Admin');
                        });
                });
            })->count();
    }

    public static function canEdit($record): bool
    {
      $user = Auth::user();
      return $user->hasRole('Admin') && ($user->id === $record->id || !$record->hasRole('Admin'));
    }

    public static function canView($record): bool
    {
      $user = Auth::user();
      return $user->hasRole('Admin') && ($user->id === $record->id || !$record->hasRole('Admin'));
    }

    public static function canDelete($record): bool
    {
      $user = Auth::user();
      return $user->hasRole('Admin') && ($user->id === $record->id || !$record->hasRole('Admin'));
    }

}
