<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductPerLeverancier;
use Illuminate\View\View;

class MagazijnController extends Controller
{
    /**
     * Scherm: Overzicht Magazijn Jamin.
     * Toont alle producten in het magazijn, gesorteerd op Barcode oplopend.
     */
    public function index(): View
    {
        $producten = Product::with('magazijn')
            ->orderBy('Barcode')
            ->get();

        return view('magazijn.index', compact('producten'));
    }

    /**
     * Userstory 01: Inzien leveringsinformatie product.
     *
     * Scenario_01: er is voorraad -> toon leveringsdata + eerstvolgende leveringsdata.
     * Scenario_02: er is geen voorraad -> toon melding en stuur na 4 seconden terug.
     */
    public function leveringInfo(Product $product): View
    {
        $magazijn = $product->magazijn;

        if (! $magazijn || $magazijn->AantalAanwezig === null) {
            $laatsteLevering = ProductPerLeverancier::where('ProductId', $product->Id)
                ->with('leverancier')
                ->orderByDesc('DatumEerstVolgendeLevering')
                ->first();

            return view('magazijn.levering', [
                'product' => $product,
                'geenVoorraad' => true,
                'leverancier' => $laatsteLevering?->leverancier,
                'eerstvolgendeLevering' => $laatsteLevering?->DatumEerstVolgendeLevering,
            ]);
        }

        $leveringen = $product->leveringen()
            ->orderBy('DatumLevering')
            ->get();

        return view('magazijn.levering', [
            'product' => $product,
            'geenVoorraad' => false,
            'leveringen' => $leveringen,
            'leverancier' => $leveringen->first()?->leverancier,
        ]);
    }

    /**
     * Userstory 02: Inzien allergeneninformatie van product.
     *
     * Scenario_01: product bevat allergenen -> toon overzicht allergenen.
     * Scenario_02: product bevat geen allergenen -> toon melding en stuur na 4 seconden terug.
     */
    public function allergenenInfo(Product $product): View
    {
        $allergenen = $product->allergenen()
            ->orderBy('Naam')
            ->get();

        return view('magazijn.allergenen', [
            'product' => $product,
            'allergenen' => $allergenen,
        ]);
    }
}
