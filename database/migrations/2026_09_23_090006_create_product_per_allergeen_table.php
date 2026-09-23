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
        Schema::create('ProductPerAllergeen', function (Blueprint $table) {
            $table->id('Id');
            $table->unsignedBigInteger('ProductId');
            $table->unsignedBigInteger('AllergeenId');

            // Systeemvelden
            $table->boolean('IsActief')->default(true);
            $table->string('Opmerking', 250)->nullable();
            $table->dateTime('DatumAangemaakt', 6);
            $table->dateTime('DatumGewijzigd', 6);

            $table->foreign('ProductId')->references('Id')->on('Product');
            $table->foreign('AllergeenId')->references('Id')->on('Allergeen');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ProductPerAllergeen');
    }
};
