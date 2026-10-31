<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Levering product') }}
        </h2>
    </x-slot>

    <div class="py-8">
        <div class="max-w-2xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white border border-gray-200 p-6" style="box-shadow: none;">
                <h2 class="mb-4 text-2xl font-semibold text-gray-800" style="font-size: 2rem; letter-spacing: -0.02em;">
                    Levering product
                </h2>

                <div class="mb-6 space-y-2 text-base text-gray-800">
                    <p class="flex items-center gap-3">
                        <span class="inline-block min-w-[180px] font-medium">Product:</span>
                        <span>{{ $product->Naam }}</span>
                    </p>
                    <p class="flex items-center gap-3">
                        <span class="inline-block min-w-[180px] font-medium">Leverancier:</span>
                        <span>{{ $leverancier->Naam }}</span>
                    </p>
                    <p class="flex items-center gap-3">
                        <span class="inline-block min-w-[180px] font-medium">Contactpersoon:</span>
                        <span>{{ $leverancier->ContactPersoon }}</span>
                    </p>
                    <p class="flex items-center gap-3">
                        <span class="inline-block min-w-[180px] font-medium">Mobiel:</span>
                        <span>{{ $leverancier->Mobiel }}</span>
                    </p>
                </div>

                <form method="POST" action="{{ route('leverancier.producten.levering.store', ['leverancier' => $leverancier, 'product' => $product]) }}">
                    @csrf

                    <div class="space-y-5">
                        <div class="flex items-center gap-4">
                            <label for="Aantal" class="w-56 shrink-0 text-base font-medium text-gray-800 leading-snug">Aantal producteenheden</label>
                            <input id="Aantal" name="Aantal" type="number" min="1" value="{{ old('Aantal', 1) }}" class="w-full h-11 border border-gray-300 bg-white px-3 text-base text-gray-800 focus:outline-none focus:ring-0 focus:border-gray-400" style="appearance: none; box-shadow: none; border-radius: 0;" required>
                        </div>

                        <div class="flex items-center gap-4">
                            <label for="DatumEerstVolgendeLevering" class="w-56 shrink-0 text-base font-medium text-gray-800 leading-snug">Datum eerstvolgende levering</label>
                            <div class="relative w-full">
                                <input id="DatumEerstVolgendeLevering" name="DatumEerstVolgendeLevering" type="date" value="{{ old('DatumEerstVolgendeLevering') }}" class="w-full h-11 border border-gray-300 bg-white px-3 pr-10 text-base text-gray-800 placeholder:text-gray-400 focus:outline-none focus:ring-0 focus:border-gray-400" style="appearance: none; box-shadow: none; border-radius: 0;">
                                <span class="pointer-events-none absolute inset-y-0 right-0 flex items-center justify-center w-10 border-l border-gray-300 bg-white text-gray-500">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" class="h-4 w-4">
                                        <rect x="3" y="5" width="18" height="16" rx="1.5"></rect>
                                        <path d="M8 3v4M16 3v4M3 10h18"></path>
                                    </svg>
                                </span>
                            </div>
                        </div>
                    </div>

                    <div class="mt-8 flex items-center justify-between gap-3">
                        <button type="submit" class="inline-flex items-center justify-center min-w-[110px] h-11 border border-gray-300 bg-white px-4 text-base text-gray-700 hover:bg-gray-100" style="border-radius: 0;">
                            Sla op
                        </button>

                        <div class="flex items-center gap-3">
                            <a href="{{ route('leverancier.producten', $leverancier) }}" class="inline-flex items-center justify-center min-w-[110px] h-11 border border-gray-300 bg-white px-4 text-base text-gray-700 hover:bg-gray-100" style="border-radius: 0;">Terug</a>
                            <a href="{{ route('dashboard') }}" class="inline-flex items-center justify-center min-w-[110px] h-11 border border-gray-300 bg-white px-4 text-base text-gray-700 hover:bg-gray-100" style="border-radius: 0;">Home</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
