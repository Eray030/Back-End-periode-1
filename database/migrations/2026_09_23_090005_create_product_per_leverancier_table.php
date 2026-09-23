<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('ProductPerLeverancier', function (Blueprint $table) {
            $table->id('Id');
            $table->unsignedBigInteger('LeverancierId');
            $table->unsignedBigInteger('ProductId');
            $table->date('DatumLevering');
            $table->unsignedInteger('Aantal');
            $table->date('DatumEerstVolgendeLevering')->nullable();

            // Systeemvelden
            $table->boolean('IsActief')->default(true);
            $table->string('Opmerking', 250)->nullable();
            $table->dateTime('DatumAangemaakt', 6);
            $table->dateTime('DatumGewijzigd', 6);

            $table->foreign('LeverancierId')->references('Id')->on('Leverancier');
            $table->foreign('ProductId')->references('Id')->on('Product');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ProductPerLeverancier');
    }
};
