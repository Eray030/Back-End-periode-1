<?php

namespace App\Http\Controllers;

use App\Models\Leverancier;
use App\Models\Magazijn;
use App\Models\Product;
use App\Models\ProductPerLeverancier;
use Illuminate\Http\Request;
use Illuminate\View\View;

class LeverancierController extends Controller
{
    public function index(): View
    {
        $leveranciers = Leverancier::with('leveringen')
            ->get()
            ->map(function (Leverancier $leverancier) {
                $leverancier->aantalProducten = $leverancier->leveringen
                    ->unique('ProductId')
                    ->count();

                return $leverancier;
            })
            ->sortByDesc('aantalProducten')
            ->values();

        return view('leverancier.index', compact('leveranciers'));
    }

    public function producten(Leverancier $leverancier): View
    {
        $producten = ProductPerLeverancier::with(['product.magazijn'])
            ->where('LeverancierId', $leverancier->Id)
            ->get()
            ->groupBy('ProductId')
            ->map(function ($groep) {
                return $groep->sortByDesc('DatumLevering')->first();
            })
            ->sortByDesc(function ($levering) {
                return $levering?->product?->magazijn?->AantalAanwezig ?? 0;
            })
            ->values();

        return view('leverancier.producten', [
            'leverancier' => $leverancier,
            'producten' => $producten,
            'noProducts' => $producten->isEmpty(),
        ]);
    }

    public function createLeveringForm(Leverancier $leverancier, Product $product): View
    {
        return view('leverancier.levering', [
            'leverancier' => $leverancier,
            'product' => $product,
        ]);
    }

    public function storeLevering(Request $request, Leverancier $leverancier, Product $product)
    {
        $validated = $request->validate([
            'Aantal' => ['required', 'integer', 'min:1'],
            'DatumLevering' => ['required', 'date'],
            'DatumEerstVolgendeLevering' => ['nullable', 'date'],
        ]);

        if (! $product->IsActief) {
            return redirect()->route('leverancier.producten', $leverancier)
                ->with('error', 'Het product '.$product->Naam.' van de leverancier '.$leverancier->Naam.' wordt niet meer geproduceerd');
        }

        ProductPerLeverancier::create([
            'LeverancierId' => $leverancier->Id,
            'ProductId' => $product->Id,
            'DatumLevering' => $validated['DatumLevering'],
            'Aantal' => (int) $validated['Aantal'],
            'DatumEerstVolgendeLevering' => $validated['DatumEerstVolgendeLevering'] ?? null,
            'IsActief' => true,
            'Opmerking' => null,
        ]);

        $magazijn = Magazijn::firstOrNew(['ProductId' => $product->Id]);
        $magazijn->VerpakkingsEenheidInKilogram ??= 1;
        $magazijn->AantalAanwezig = ($magazijn->AantalAanwezig ?? 0) + (int) $validated['Aantal'];
        $magazijn->save();

        return redirect()->route('leverancier.producten', $leverancier)
            ->with('success', 'Levering opgeslagen.');
    }
}
