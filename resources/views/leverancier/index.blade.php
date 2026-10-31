<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Overzicht leveranciers') }}
        </h2>
    </x-slot>

    <div class="py-8">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="mt-4 bg-white shadow-sm sm:rounded-lg overflow-hidden">
                <table class="min-w-full divide-y divide-gray-200 text-left">
                    <thead class="bg-gray-50">
                        <tr>
                            <th class="px-4 py-3 text-xs font-semibold uppercase tracking-wide text-gray-700">Naam</th>
                            <th class="px-4 py-3 text-xs font-semibold uppercase tracking-wide text-gray-700">Contactpersoon</th>
                            <th class="px-4 py-3 text-xs font-semibold uppercase tracking-wide text-gray-700">Leveranciernummer</th>
                            <th class="px-4 py-3 text-xs font-semibold uppercase tracking-wide text-gray-700">Mobiel</th>
                            <th class="px-4 py-3 text-center text-xs font-semibold uppercase tracking-wide text-gray-700">Aantal verschillende producten</th>
                            <th class="px-4 py-3 text-center text-xs font-semibold uppercase tracking-wide text-gray-700">Toon producten</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-200">
                        @forelse ($leveranciers as $leverancier)
                            <tr>
                                <td class="px-4 py-3">{{ $leverancier->Naam }}</td>
                                <td class="px-4 py-3">{{ $leverancier->ContactPersoon }}</td>
                                <td class="px-4 py-3">{{ $leverancier->LeverancierNummer }}</td>
                                <td class="px-4 py-3">{{ $leverancier->Mobiel }}</td>
                                <td class="px-4 py-3 text-center">{{ $leverancier->aantalProducten }}</td>
                                <td class="px-4 py-3 text-center">
                                    <a href="{{ route('leverancier.producten', $leverancier) }}" title="Toon producten" class="inline-flex items-center justify-center w-8 h-8 bg-white text-lg text-gray-700 hover:bg-gray-100" style="border: 1px solid #cbd5e1; box-shadow: none;">
                                        ▢
                                    </a>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="6" class="px-4 py-6 text-center text-gray-500">Geen leveranciers gevonden.</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>

            <div class="mt-6 flex justify-end">
                <a href="{{ route('dashboard') }}" class="inline-flex items-center px-4 py-2 rounded border border-gray-300 bg-white text-gray-700 hover:bg-gray-100">Home</a>
            </div>
        </div>
    </div>
</x-app-layout>
