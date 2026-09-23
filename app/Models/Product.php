<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

#[Fillable(['Naam', 'Barcode', 'IsActief', 'Opmerking'])]
class Product extends Model
{
    protected $table = 'Product';

    protected $primaryKey = 'Id';

    const CREATED_AT = 'DatumAangemaakt';

    const UPDATED_AT = 'DatumGewijzigd';

    protected function casts(): array
    {
        return [
            'IsActief' => 'boolean',
        ];
    }

    public function magazijn(): HasOne
    {
        return $this->hasOne(Magazijn::class, 'ProductId');
    }

    public function leveringen(): HasMany
    {
        return $this->hasMany(ProductPerLeverancier::class, 'ProductId');
    }

    public function allergenen(): BelongsToMany
    {
        return $this->belongsToMany(Allergeen::class, 'ProductPerAllergeen', 'ProductId', 'AllergeenId')
            ->withPivot('Id');
    }
}
