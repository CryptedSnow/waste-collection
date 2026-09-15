<?php

namespace App\Filament\Resources;

use App\Models\Activity;
use Filament\Tables\Table;
use Rmsramos\Activitylog\Resources\ActivitylogResource as BaseActivitylogResource;
use Rmsramos\Activitylog\Resources\ActivitylogResource\Pages\ListActivitylog;
use Rmsramos\Activitylog\Resources\ActivitylogResource\Pages\ViewActivitylog;

class ActivitylogResource extends BaseActivitylogResource
{
    protected static ?string $model = Activity::class;

    /**
     * Usa uuid na URL: /admin/activitylogs/{uuid}
     */
    public static function getRecordRouteKeyName(): ?string
    {
        return 'uuid';
    }

    public static function table(Table $table): Table
    {
        return parent::table($table)
            ->columns([
                static::getCauserNameColumnComponent()->searchable(),
                static::getLogNameColumnComponent(),
                static::getEventColumnComponent(),
                static::getSubjectTypeColumnComponent(),
                static::getPropertiesColumnComponent(),
                static::getCreatedAtColumnComponent(),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => ListActivitylog::route('/'),
            'view'  => ViewActivitylog::route('/{record}'),
        ];
    }
}
