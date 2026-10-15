<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Levering product') }}
        </h2>
    </x-slot>

    <div class="py-8">
        <div class="max-w-2xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white shadow-sm sm:rounded-lg p-6">
                <div class="mb-6 space-y-1">
                    <p><strong>Naam leverancier:</strong> {{ $leverancier->Naam }}</p>
                    <p><strong>Product:</strong> {{ $product->Naam }}</p>
                    <p><strong>Barcode:</strong> {{ $product->Barcode }}</p>
                </div>

                <form method="POST" action="{{ route('leverancier.producten.levering.store', ['leverancier' => $leverancier, 'product' => $product]) }}">
                    @csrf

                    <div class="grid grid-cols-1 gap-5">
                        <div>
                            <label for="Aantal" class="block text-sm font-medium text-gray-700">Aantal producteenheden</label>
                            <input id="Aantal" name="Aantal" type="number" min="1" value="{{ old('Aantal', 1) }}" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500" required>
                        </div>

                        <div>
                            <label for="DatumLevering" class="block text-sm font-medium text-gray-700">Datum levering</label>
                            <input id="DatumLevering" name="DatumLevering" type="date" value="{{ old('DatumLevering', now()->toDateString()) }}" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500" required>
                        </div>

                        <div>
                            <label for="DatumEerstVolgendeLevering" class="block text-sm font-medium text-gray-700">Datum eerstvolgende levering</label>
                            <input id="DatumEerstVolgendeLevering" name="DatumEerstVolgendeLevering" type="date" value="{{ old('DatumEerstVolgendeLevering') }}" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
                        </div>
                    </div>

                    <div class="mt-6 flex justify-end gap-3">
                        <a href="{{ route('leverancier.producten', $leverancier) }}" class="inline-flex items-center px-4 py-2 rounded border border-gray-300 bg-white text-gray-700 hover:bg-gray-100">Terug</a>
                        <button type="submit" class="inline-flex items-center px-4 py-2 bg-indigo-600 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-indigo-500">
                            Sla op
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
