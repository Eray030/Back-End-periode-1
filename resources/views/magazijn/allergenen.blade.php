<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Overzicht Allergenen') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    @if ($allergenen->isEmpty())
                        <p>In dit product zitten geen stoffen die een allergische reactie kunnen veroorzaken</p>

                        <script>
                            setTimeout(function () {
                                window.location.href = "{{ route('magazijn.index') }}";
                            }, 4000);
                        </script>
                    @else
                        <div class="grid grid-cols-2 gap-4 mb-6">
                            <div>
                                <div class="text-xs font-medium text-gray-500 uppercase">Naam Product</div>
                                <div>{{ $product->Naam }}</div>
                            </div>
                            <div>
                                <div class="text-xs font-medium text-gray-500 uppercase">Barcode</div>
                                <div>{{ $product->Barcode }}</div>
                            </div>
                        </div>

                        <table class="min-w-full divide-y divide-gray-200">
                            <thead>
                                <tr class="text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                    <th class="px-4 py-2">Naam</th>
                                    <th class="px-4 py-2">Omschrijving</th>
                                </tr>
                            </thead>
                            <tbody class="divide-y divide-gray-100">
                                @foreach ($allergenen as $allergeen)
                                    <tr>
                                        <td class="px-4 py-2">{{ $allergeen->Naam }}</td>
                                        <td class="px-4 py-2">{{ $allergeen->Omschrijving }}</td>
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
