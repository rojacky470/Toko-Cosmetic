<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CosmeticAdditional extends Model
{
    protected $fillable = ['cosmetic_id', 'photo'];

    public function cosmetic()
    {
        return $this->belongsTo(Cosmetic::class);
    }
}
