<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Levering Informatie') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    @if ($geenVoorraad)
                        <p>
                            Er is van dit product op dit moment geen voorraad aanwezig, de verwachte eerstvolgende
                            levering is: {{ $eerstvolgendeLevering ? \Illuminate\Support\Carbon::parse($eerstvolgendeLevering)->format('d-m-Y') : 'onbekend' }}
                        </p>

                        <script>
                            setTimeout(function () {
                                window.location.href = "{{ route('magazijn.index') }}";
                            }, 4000);
                        </script>
                    @else
                        <div class="grid grid-cols-2 sm:grid-cols-4 gap-4 mb-6">
                            <div>
                                <div class="text-xs font-medium text-gray-500 uppercase">Naam leverancier</div>
                                <div>{{ $leverancier?->Naam }}</div>
                            </div>
                            <div>
                                <div class="text-xs font-medium text-gray-500 uppercase">Contactpersoon leverancier</div>
                                <div>{{ $leverancier?->ContactPersoon }}</div>
                            </div>
                            <div>
                                <div class="text-xs font-medium text-gray-500 uppercase">Leveranciernummer</div>
                                <div>{{ $leverancier?->LeverancierNummer }}</div>
                            </div>
                            <div>
                                <div class="text-xs font-medium text-gray-500 uppercase">Mobiel</div>
                                <div>{{ $leverancier?->Mobiel }}</div>
                            </div>
                        </div>

                        <table class="min-w-full divide-y divide-gray-200">
                            <thead>
                                <tr class="text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                    <th class="px-4 py-2">Datum laatste levering</th>
                                    <th class="px-4 py-2">Aantal</th>
                                    <th class="px-4 py-2">Verwachte eerstvolgende levering</th>
                                </tr>
                            </thead>
                            <tbody class="divide-y divide-gray-100">
                                @foreach ($leveringen as $levering)
                                    <tr>
                                        <td class="px-4 py-2">{{ $levering->DatumLevering->format('d-m-Y') }}</td>
                                        <td class="px-4 py-2">{{ $levering->Aantal }}</td>
                                        <td class="px-4 py-2">{{ $levering->DatumEerstVolgendeLevering?->format('d-m-Y') ?? '-' }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    @endif
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
