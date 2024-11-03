<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Location extends Model
{
    use HasFactory;

    protected $fillable = [
        'city',
        'address',
        'zip_code',
        'country_code',
        'phone_number'
    ];

    public function facilities(): HasMany
    {
        return $this->hasMany(Facility::class);
    }
}
