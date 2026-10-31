<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Geleverde producten') }}
        </h2>
    </x-slot>

    <div class="py-8">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            @if (session('error'))
                <div class="mb-4 rounded border border-red-200 bg-red-50 px-4 py-3 text-red-700">
                    {{ session('error') }}
                </div>
                <script>
                    setTimeout(function () {
                        window.location.href = "{{ route('leverancier.producten', $leverancier) }}";
                    }, 4000);
                </script>
            @endif

            @if ($noProducts)
                <div class="mt-4 bg-white shadow-sm sm:rounded-lg overflow-hidden">
                    <div class="px-6 py-4 border-b border-gray-200 text-base text-gray-800">
                        <p class="flex items-center gap-3 mb-1">
                            <span class="inline-block min-w-[180px] font-medium">Naam leverancier:</span>
                            <span>{{ $leverancier->Naam }}</span>
                        </p>
                        <p class="flex items-center gap-3 mb-1">
                            <span class="inline-block min-w-[180px] font-medium">Contactpersoon:</span>
                            <span>{{ $leverancier->ContactPersoon }}</span>
                        </p>
                        <p class="flex items-center gap-3 mb-1">
                            <span class="inline-block min-w-[180px] font-medium">Leveranciernummer:</span>
                            <span>{{ $leverancier->LeverancierNummer }}</span>
                        </p>
                        <p class="flex items-center gap-3">
                            <span class="inline-block min-w-[180px] font-medium">Mobiel:</span>
                            <span>{{ $leverancier->Mobiel }}</span>
                        </p>
                    </div>

                    <table class="min-w-full divide-y divide-gray-200 text-left">
                        <thead class="bg-gray-50">
                            <tr>
                                <th class="px-4 py-3 text-xs font-semibold uppercase tracking-wide text-gray-700">Naam product</th>
                                <th class="px-4 py-3 text-center text-xs font-semibold uppercase tracking-wide text-gray-700">Aantal in magazijn</th>
                                <th class="px-4 py-3 text-center text-xs font-semibold uppercase tracking-wide text-gray-700">Verpakkingseenheid</th>
                                <th class="px-4 py-3 text-center text-xs font-semibold uppercase tracking-wide text-gray-700">Laatste levering</th>
                                <th class="px-4 py-3 text-center text-xs font-semibold uppercase tracking-wide text-gray-700">Nieuwe levering</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-200">
                            <tr>
                                <td colspan="5" class="px-4 py-6 text-center text-lg text-gray-700">
                                    Dit bedrijf heeft tot nu toe geen producten geleverd aan Jamin
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            @else
                <div class="mt-4 bg-white shadow-sm sm:rounded-lg overflow-hidden">
                    <div class="px-6 py-4 border-b border-gray-200 text-base text-gray-800">
                        <p class="flex items-center gap-3 mb-1">
                            <span class="inline-block min-w-[180px] font-medium">Naam leverancier:</span>
                            <span>{{ $leverancier->Naam }}</span>
                        </p>
                        <p class="flex items-center gap-3 mb-1">
                            <span class="inline-block min-w-[180px] font-medium">Contactpersoon:</span>
                            <span>{{ $leverancier->ContactPersoon }}</span>
                        </p>
                        <p class="flex items-center gap-3 mb-1">
                            <span class="inline-block min-w-[180px] font-medium">Leveranciernummer:</span>
                            <span>{{ $leverancier->LeverancierNummer }}</span>
                        </p>
                        <p class="flex items-center gap-3">
                            <span class="inline-block min-w-[180px] font-medium">Mobiel:</span>
                            <span>{{ $leverancier->Mobiel }}</span>
                        </p>
                    </div>

                    <table class="min-w-full divide-y divide-gray-200 text-left">
                        <thead class="bg-gray-50">
                            <tr>
                                <th class="px-4 py-3 text-xs font-semibold uppercase tracking-wide text-gray-700">Naam product</th>
                                <th class="px-4 py-3 text-center text-xs font-semibold uppercase tracking-wide text-gray-700">Aantal in magazijn</th>
                                <th class="px-4 py-3 text-center text-xs font-semibold uppercase tracking-wide text-gray-700">Verpakkingseenheid</th>
                                <th class="px-4 py-3 text-center text-xs font-semibold uppercase tracking-wide text-gray-700">Laatste levering</th>
                                <th class="px-4 py-3 text-center text-xs font-semibold uppercase tracking-wide text-gray-700">Nieuwe levering</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-200">
                            @foreach ($producten as $levering)
                                <tr>
                                    <td class="px-4 py-3">{{ $levering->product->Naam }}</td>
                                    <td class="px-4 py-3 text-center">{{ $levering->product->magazijn?->AantalAanwezig ?? '0' }}</td>
                                    <td class="px-4 py-3 text-center">{{ $levering->product->magazijn?->VerpakkingsEenheidInKilogram ?? '-' }} kg</td>
                                    <td class="px-4 py-3 text-center">{{ optional($levering->DatumLevering)->format('d-m-Y') ?? '-' }}</td>
                                    <td class="px-4 py-3 text-center">
                                        <a href="{{ route('leverancier.producten.levering', ['leverancier' => $leverancier, 'product' => $levering->product]) }}" title="Nieuwe levering" class="inline-flex items-center justify-center text-xl font-semibold text-gray-700 hover:text-gray-900">
                                            +
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            @endif

            <div class="mt-6 flex justify-end gap-3">
                <a href="{{ route('dashboard') }}" class="inline-flex items-center px-4 py-2 rounded border border-gray-300 bg-white text-gray-700 hover:bg-gray-100">Home</a>
                <a href="{{ route('dashboard') }}" class="inline-flex items-center px-4 py-2 rounded border border-gray-300 bg-white text-gray-700 hover:bg-gray-100">Terug</a>
            </div>
        </div>
    </div>
</x-app-layout>
