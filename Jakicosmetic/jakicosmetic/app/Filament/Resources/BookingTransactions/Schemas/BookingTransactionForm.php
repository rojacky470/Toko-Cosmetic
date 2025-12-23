<?php

namespace App\Filament\Resources\BookingTransactions\Schemas;

use App\Models\Cosmetic;
use App\Models\TransactionDetails;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\ToggleButtons;
use Filament\Schemas\Components\Grid;
use Filament\Schemas\Components\Utilities\Get;
use Filament\Schemas\Components\Utilities\Set;
use Filament\Schemas\Components\Wizard;
use Filament\Schemas\Components\Wizard\Step;
use Filament\Schemas\Schema;


class BookingTransactionForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema->components([
            Wizard::make([
                /*
                |----------------------------------------------------------------------
                | STEP 1 — TRANSACTION DETAILS
                |----------------------------------------------------------------------
                */
                Step::make('Transaction Details')
                    ->schema([
                        Repeater::make('transactionDetails')
                            ->relationship('transactionDetails')
                            ->schema([
                                Grid::make(3)->schema([
                                    Select::make('cosmetic_id')
                                        ->label('Product')
                                        ->options(Cosmetic::pluck('name', 'id'))
                                        ->searchable()
                                        ->required()
                                        ->live()
                                        ->afterStateUpdated(function (Set $set, Get $get, ?int $state) {
                                            $price = Cosmetic::find($state)?->price ?? 0;

                                            $set('unit_price', $price);
                                            $set('quantity', 1);
                                            $set('price', $price);

                                            // ⬇️ HITUNG TOTAL DI SINI
                                            $items = collect($get('../../transactionDetails') ?? []);
                                            $sub   = $items->sum(fn($i) => (int) ($i['price'] ?? 0));
                                            $tax   = (int) round($sub * 0.10);

                                            $set('../../sub_total_amount', $sub);
                                            $set('../../total_tax_amount', $tax);
                                            $set('../../total_amount', $sub + $tax);
                                        }),


                                    TextInput::make('quantity')
                                        ->numeric()
                                        ->default(1)
                                        ->minValue(1)
                                        ->live()
                                        ->afterStateUpdated(function (Set $set, Get $get) {
                                            $price = ($get('unit_price') ?? 0) * ($get('quantity') ?? 1);
                                            $set('price', $price);

                                            // ⬇️ HITUNG ULANG
                                            $items = collect($get('../../transactionDetails') ?? []);
                                            $sub   = $items->sum(fn($i) => (int) ($i['price'] ?? 0));
                                            $tax   = (int) round($sub * 0.10);

                                            $set('../../sub_total_amount', $sub);
                                            $set('../../total_tax_amount', $tax);
                                            $set('../../total_amount', $sub + $tax);
                                        }),
                                    TextInput::make('price')
                                        ->label('Total Price')
                                        ->numeric()
                                        ->readOnly()
                                        ->dehydrated()   // ⬅️ WAJIB
                                        ->required(),

                                    // Hidden helper (tidak ke DB)
                                    TextInput::make('unit_price')
                                        ->hidden()
                                        ->default(0)
                                        ->dehydrated(false),
                                ]),

                            ])
                            ->defaultItems(1)
                            ->columnSpanFull(),

                        Grid::make(3)->schema([
                            TextInput::make('sub_total_amount')->readOnly(),
                            TextInput::make('total_tax_amount')->readOnly(),
                            TextInput::make('total_amount')->readOnly(),
                        ]),
                    ]),
                /*
                |----------------------------------------------------------------------
                | STEP 2 — CUSTOMER INFORMATION
                |----------------------------------------------------------------------
                */
                Step::make('Customer Information')
                    ->description('For our information')
                    ->schema([
                        Grid::make(3)->schema([
                            TextInput::make('name')
                                ->label('Name')
                                ->required(),

                            TextInput::make('phone')
                                ->label('Phone')
                                ->tel()
                                ->required(),

                            TextInput::make('email')
                                ->label('Email')
                                ->email()
                                ->required(),
                        ]),
                    ]),

                /*
                |----------------------------------------------------------------------
                | STEP 3 — DELIVERY INFORMATION
                |----------------------------------------------------------------------
                */
                Step::make('Delivery Information')
                    ->schema([
                        Grid::make(3)->schema([
                            TextInput::make('city')
                                ->label('City')
                                ->required(),

                            TextInput::make('post_code')
                                ->label('Post Code')
                                ->required(),

                            TextInput::make('address')
                                ->label('Address')
                                ->columnSpanFull()
                                ->required(),
                        ]),
                    ]),

                /*
                |----------------------------------------------------------------------
                | STEP 4 — PAYMENT INFORMATION
                |----------------------------------------------------------------------
                */
                Step::make('Payment Information')
                    ->schema([
                        Grid::make(2)->schema([
                            TextInput::make('booking_trx_id')
                                ->label('Booking Transaction ID')
                                ->readOnly()
                                ->dehydrated(),

                            ToggleButtons::make('is_paid')
                                ->label('Status Pembayaran')
                                ->options([
                                    0 => 'Belum Dibayar',
                                    1 => 'Sudah Dibayar',
                                ])
                                ->icons([
                                    0 => 'heroicon-m-clock',
                                    1 => 'heroicon-m-check-circle',
                                ])
                                ->colors([
                                    0 => 'warning',
                                    1 => 'success',
                                ])
                                ->default(0)
                                ->inline()
                                ->live(),

                            FileUpload::make('proof')
                                ->label('Bukti Transfer')
                                ->image()
                                ->directory('payment-proofs')
                                ->disk('public')
                                ->required()
                                ->columnSpanFull(),
                        ])->columnSpanFull(),
                    ]),

            ])->columnSpanFull(),


        ]);
    }
}
