<?php

namespace App\Filament\User\Resources;

use App\Filament\User\Resources\VeiculoResource\Pages;
use App\Filament\User\Resources\VeiculoResource\RelationManagers;
use App\Models\Veiculo;
use App\Enum\StatusVeiculoEnum;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\{Select, TextInput};
use Filament\Tables\Columns\TextColumn;
use Illuminate\Validation\Rule;
use Filament\Notifications\Notification;

class VeiculoResource extends Resource
{
    protected static ?string $model = Veiculo::class;

    protected static ?string $navigationIcon = 'heroicon-o-truck';

    protected static ?string $tenantRelationshipName = 'veiculoTenant';

    protected static ?string $navigationLabel = 'Veículos';

    protected static ?string $label = 'Veículo';

    protected static ?string $pluralLabel = 'Veículos';

    protected static ?string $recordTitleAttribute = 'modelo';

    protected static ?int $navigationSort = 4;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('placa_veiculo')
                    ->label('Placa do veículo')
                    ->required()
                    ->rules(['formato_placa_de_veiculo'])
                    ->unique(ignoreRecord: true)
                    ->helperText('Exemplo: ABC-1234 ou ABC1D23'),
                TextInput::make('modelo')
                    ->required(),
                Select::make('status')
                    ->required()
                    ->label('Status')
                    ->options(StatusVeiculoEnum::class),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('placa_veiculo')
                    ->label('Placa')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('modelo')
                    ->label('Modelo')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('status')
                    ->label('Status')
                    ->colors([
                        'warning' => 'Em manutenção',
                        'success' => 'Disponível',
                    ])
                    ->icons([
                        'heroicon-m-wrench-screwdriver' => 'Em manutenção',
                        'heroicon-m-check-badge' => 'Disponível',
                    ])
                    ->badge(),
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
                            ->title("Veículo inativo")
                            ->body("x<strong>{$record->placa_veiculo}</strong> está na lixeira.");
                    }),
                Tables\Actions\RestoreAction::make()
                    ->successNotification(function ($record) {
                        return Notification::make()
                            ->success()
                            ->title("Veículo restaurado")
                            ->body("<strong>{$record->placa_veiculo}</strong> está restaurado.");
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
            'index' => Pages\ListVeiculos::route('/'),
            'create' => Pages\CreateVeiculo::route('/create'),
            'edit' => Pages\EditVeiculo::route('/{record:uuid}/edit'),
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
