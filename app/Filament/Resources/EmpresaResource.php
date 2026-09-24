<?php

namespace App\Filament\Resources;

use BackedEnum;
use App\Filament\Resources\EmpresaResource\Pages;
use App\Filament\Resources\EmpresaResource\RelationManagers;
use App\Models\{Empresa, UF};
use App\Rules\UniqueValueTable;
use Filament\Actions\{BulkActionGroup, DeleteAction, DeleteBulkAction, EditAction};
use Filament\Actions\{RestoreAction, RestoreBulkAction, ViewAction};
use Filament\Forms;
use Filament\Forms\Components\{Select, TextInput};
use Filament\Forms\Components\FileUpload;
use Filament\Notifications\Notification;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Tables;
use Filament\Tables\Columns\{ImageColumn, TextColumn};
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Schemas\Components\Utilities\Set;
use Leandrocfe\FilamentPtbrFormFields\Enums\CepFieldMode;
use Leandrocfe\FilamentPtbrFormFields\Providers\ViaCepProvider;
use Leandrocfe\FilamentPtbrFormFields\Cep;

class EmpresaResource extends Resource
{
    protected static ?string $model = Empresa::class;

    protected static string | BackedEnum | null $navigationIcon = 'heroicon-o-building-office';

    protected static ?string $navigationLabel = 'Empresas';

    protected static ?string $label = 'Empresa';

    protected static ?string $pluralLabel = 'Empresas';

    protected static ?string $recordTitleAttribute = 'nome';

    protected static ?int $navigationSort = 1;

    public static function form(Schema $schema): Schema
    {
        return $schema
            ->schema([
                TextInput::make('nome')
                    ->required(),
                TextInput::make('cnpj')
                    ->label('CNPJ')
                    ->required()
                    ->mask('99.999.999/9999-99')
                    ->rules(['cnpj', new UniqueValueTable('cnpj', ['depositos_residuos'])])
                    ->unique(ignoreRecord: true),
                Cep::make('cep')
                    ->label('CEP')
                    ->mask('99999-999')
                    ->required()
                    ->mode(CepFieldMode::SUFFIX)
                    ->errorMessage('CEP inválido.')
                    ->api(ViaCepProvider::class, function (Set $set, ?array $response): void {
                        if (blank($response) || data_get($response, 'erro')) {
                            return;
                        }
                        $set('uf', data_get($response, 'uf'));
                        $set('cidade', data_get($response, 'localidade'));
                    }),
                Select::make('uf')
                    ->label('Estado')
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
                TextInput::make('email')
                    ->required()
                    ->email()
                    ->unique(ignoreRecord: true)
                    ->rules(['email', new UniqueValueTable('email', ['clientes','motoristas'])]),
                TextInput::make('telefone')
                    ->label('Telefone')
                    ->required()
                    ->mask('(99) 9999-9999')
                    ->rules(['celular_com_ddd', new UniqueValueTable('telefone', ['clientes', 'motoristas'])])
                    ->unique(ignoreRecord: true),
                FileUpload::make('avatar_url')
                    ->label('Avatar')
                    ->disk('public')
                    ->avatar()
                    ->imageEditor()
                    ->preserveFilenames()
                    ->maxSize(2048)
                    ->directory('logo-empresas'),
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
                TextColumn::make('nome')
                    ->label('Nome')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('cnpj')
                    ->label('CNPJ')
                    ->sortable(),
                TextColumn::make('cep')
                    ->label('CEP')
                    ->sortable(),
                TextColumn::make('uf')
                    ->label('Estado')
                    ->sortable(),
                TextColumn::make('cidade')
                    ->label('Cidade')
                    ->sortable(),
                TextColumn::make('bairro')
                    ->label('Bairro')
                    ->sortable(),
                TextColumn::make('logradouro')
                    ->label('Logradouro')
                    ->sortable(),
                TextColumn::make('numero')
                    ->label('Número')
                    ->sortable(),
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
            ->recordActions([
                ViewAction::make(),
                EditAction::make()->visible(fn ($record) => !$record->trashed()),
                DeleteAction::make()
                    ->successNotification(function ($record) {
                        return Notification::make()
                            ->warning()
                            ->title("Empresa inativa")
                            ->body("<strong>{$record->nome}</strong> está na lixeira.");
                    }),
                RestoreAction::make()
                    ->successNotification(function ($record) {
                        return Notification::make()
                            ->success()
                            ->title("Empresa restaurada")
                            ->body("<strong>{$record->nome}</strong> está restaurada.");
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
            'index' => Pages\ListEmpresas::route('/'),
            'create' => Pages\CreateEmpresa::route('/create'),
            'edit' => Pages\EditEmpresa::route('/{record:uuid}/edit'),
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
