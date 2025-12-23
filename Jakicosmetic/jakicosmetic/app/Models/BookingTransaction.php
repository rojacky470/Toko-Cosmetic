<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Str;

class BookingTransaction extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'booking_trx_id',
        'name',
        'phone',
        'email',
        'city',
        //'quantity',
        'post_code',
        'address',
        'sub_total_amount',
        'total_tax_amount',
        'total_amount',
        'is_paid',
        'proof',
    ];

    protected static function booted()
    {
        static::creating(function ($model) {
            if (empty($model->booking_trx_id)) {
                $model->booking_trx_id = self::generateUniqueTrxId();
            }
        });
    }

    // ⬇⬇⬇ INI YANG KURANG ⬇⬇⬇
    public static function generateUniqueTrxId(): string
    {
        do {
            $trxId = 'TRX-' . now()->format('Ymd') . '-' . strtoupper(Str::random(6));
        } while (self::where('booking_trx_id', $trxId)->exists());

        return $trxId;
    }

    public function transactionDetails(): HasMany
    {
        return $this->hasMany(TransactionDetails::class, 'booking_transaction_id');
    }
}
