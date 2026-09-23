<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

#[Fillable(['LeverancierId', 'ProductId', 'DatumLevering', 'Aantal', 'DatumEerstVolgendeLevering', 'IsActief', 'Opmerking'])]
class ProductPerLeverancier extends Model
{
    protected $table = 'ProductPerLeverancier';

    protected $primaryKey = 'Id';

    const CREATED_AT = 'DatumAangemaakt';

    const UPDATED_AT = 'DatumGewijzigd';

    protected function casts(): array
    {
        return [
            'IsActief' => 'boolean',
            'DatumLevering' => 'date',
            'DatumEerstVolgendeLevering' => 'date',
        ];
    }

    public function product(): BelongsTo
    {
        return $this->belongsTo(Product::class, 'ProductId');
    }

    public function leverancier(): BelongsTo
    {
        return $this->belongsTo(Leverancier::class, 'LeverancierId');
    }
}
