<?php

namespace App\Http\Resources\api;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CosmeticApiResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'slug' => $this->slug,
            'name' => $this->name,
            'photo' => $this->photo,
            'about' => $this->about,
            'stock' => $this->stock,
            'price' => $this->price,
            'is_popular' => $this->is_popular,
            'category_id' => $this->category_id,
            'brand_id' => $this->brand_id,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,

            // Relasi yang sudah di-load
            'category' => $this->whenLoaded('category'),
            'brand' => $this->whenLoaded('brand'),
            
            // ADDITIONAL PHOTOS ← INI YANG PENTING
            'additionalPhotos' => $this->whenLoaded('additionalPhotos', function () {
                return $this->additionalPhotos->map(function ($photo) {
                    return [
                        'id' => $photo->id,
                        'photo' => $photo->photo,
                    ];
                });
            }),

            // Relasi lain yang sudah ada
            'benefits' => $this->whenLoaded('benefits'),
            'testimonials' => $this->whenLoaded('testimonials'),
            'photos' => $this->whenLoaded('photos'),
        ];
    }
}
