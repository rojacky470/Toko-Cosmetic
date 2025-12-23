<?php

namespace App\Filament\Resources\Cosmetics\Schemas;

use Filament\Schemas\Schema;
use Filament\Schemas\Components\Fieldset;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Select;

class CosmeticForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                /* =======================
                 * DETAILS
                 * ======================= */
                Fieldset::make('Details')
                    ->schema([
                        TextInput::make('slug')
                            ->required()
                            ->columnSpanFull(),

                        TextInput::make('name')
                            ->required()
                            ->columnSpanFull(),

                        Select::make('category_id')
                            ->label('Kategori')
                            ->relationship('category', 'name')
                            ->required()
                            ->searchable()
                            ->preload()
                            ->columnSpanFull(),

                        Select::make('brand_id')
                            ->label('Brand')
                            ->relationship('brand', 'name')
                            ->required()
                            ->searchable()
                            ->preload()
                            ->columnSpanFull(),

                        FileUpload::make('photo')
                            ->disk('public')
                            ->directory('thumbnail')
                            ->image()
                            ->visibility('public')
                            ->required(),
                        Textarea::make('about')
                            ->required()
                            ->columnSpanFull(),

                        TextInput::make('stock')
                            ->numeric()
                            ->required()
                            ->prefix('Qty')
                            ->columnSpanFull(),

                        TextInput::make('price')
                            ->numeric()
                            ->required()
                            ->prefix('IDR')
                            ->columnSpanFull(),

                        Select::make('is_popular')
                            ->label('Is Popular')
                            ->options([
                                true  => 'Popular',
                                false => 'Not Popular',
                            ])
                            ->required()
                            ->columnSpanFull(),
                    ]),

                /* =======================
                 * BENEFITS (REPEATER)
                 * ======================= */
                Fieldset::make('Benefits')
                    ->schema([
                        Repeater::make('benefits')
                            ->relationship('benefits')
                            ->schema([
                                TextInput::make('name')
                                    ->required(),
                            ])
                            ->columnSpanFull(),
                    ]),

                /* =======================
                 * ADDITIONAL (REPEATER)
                 * ======================= */
                Fieldset::make('Additional')
                    ->schema([
                        Repeater::make('additionalPhotos') // nama relasi
                            ->relationship('additionalPhotos')
                            ->schema([
                                FileUpload::make('photo')
                                    ->disk('public')
                                    ->directory('thumbnail')
                                    ->image()
                                    ->visibility('public')
                                    ->required(),
                            ])
                            ->columnSpanFull(),
                    ]),
            ]);
    }
}
