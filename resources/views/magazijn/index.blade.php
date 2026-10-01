<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Overzicht Magazijn Jamin') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <table class="min-w-full divide-y divide-gray-200">
                        <thead>
                            <tr class="text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                <th class="px-4 py-2">Barcode</th>
                                <th class="px-4 py-2">Naam</th>
                                <th class="px-4 py-2">Verpakkingseenheid</th>
                                <th class="px-4 py-2">Aantal Aanwezig</th>
                                <th class="px-4 py-2 text-center">Allergenen Info</th>
                                <th class="px-4 py-2 text-center">Leverantie Info</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-100">
                            @foreach ($producten as $product)
                                <tr>
                                    <td class="px-4 py-2">{{ $product->Barcode }}</td>
                                    <td class="px-4 py-2">{{ $product->Naam }}</td>
                                    <td class="px-4 py-2">{{ $product->magazijn?->VerpakkingsEenheidInKilogram ?? '-' }} kg</td>
                                    <td class="px-4 py-2">{{ $product->magazijn?->AantalAanwezig ?? 'Geen voorraad' }}</td>
                                    <td class="px-4 py-2 text-center">
                                        <a href="{{ route('magazijn.allergenen', $product) }}" title="Allergenen Info" class="inline-flex items-center justify-center w-6 h-6 rounded-full bg-red-100 text-red-700 font-bold">&times;</a>
                                    </td>
                                    <td class="px-4 py-2 text-center">
                                        <a href="{{ route('magazijn.levering', $product) }}" title="Leverantie Info" class="inline-flex items-center justify-center w-6 h-6 rounded-full bg-blue-100 text-blue-700 font-bold">?</a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
