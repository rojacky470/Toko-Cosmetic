<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Str;

class Cosmetic extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'name',
        'slug',
        'photo',
        'about',
        'price',
        'brand_id',
        'category_id',
        'is_popular',
        'stock',
    ];

    protected $casts = [
        'is_popular' => 'boolean',
    ];

    // Mutator untuk slug otomatis dari name
    public function setNameAttribute($value)
    {
        $this->attributes['name'] = $value;
        $this->attributes['slug'] = Str::slug($value);
    }

    public function benefits(): HasMany
    {
        return $this->hasMany(CosmeticBenefit::class);
    }
    public function additionalPhotos()
    {
        return $this->hasMany(CosmeticAdditional::class);
    }

    // Ganti nama relasi ini agar tidak bentrok dengan kolom photo
    public function photos(): HasMany
    {
        return $this->hasMany(CosmeticPhoto::class);
    }
    public function testimonials(): HasMany
    {
        return $this->hasMany(CosmeticTestimonial::class);
    }


    public function category(): BelongsTo
    {
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function brand(): BelongsTo
    {
        return $this->belongsTo(Brand::class, 'brand_id');
    }
}
