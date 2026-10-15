<?php

namespace Tests\Feature;

use App\Models\User;
use Database\Seeders\JaminSeeder;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class LeverancierFeatureTest extends TestCase
{
    use RefreshDatabase;

    protected function setUp(): void
    {
        parent::setUp();

        $this->seed(JaminSeeder::class);
    }

    protected function loginUser(): void
    {
        $this->actingAs(User::factory()->create());
    }

    public function test_supplier_overview_lists_suppliers_by_number_of_products(): void
    {
        $this->loginUser();

        $response = $this->get(route('leverancier.index'));

        $response->assertOk();
        $response->assertSeeText('Venco');
        $response->assertSeeText('Astra Sweets');
    }

    public function test_supplier_detail_page_shows_empty_state_when_no_products_have_been_delivered(): void
    {
        $this->loginUser();

        $response = $this->get(route('leverancier.producten', ['leverancier' => 6]));

        $response->assertOk();
        $response->assertSeeText('Dit bedrijf heeft tot nu toe geen producten geleverd aan Jamin');
    }

    public function test_product_delivery_can_be_added_to_stock(): void
    {
        $this->loginUser();

        $response = $this->post(route('leverancier.producten.levering.store', ['leverancier' => 1, 'product' => 1]), [
            'Aantal' => 25,
            'DatumLevering' => '2024-05-29',
        ]);

        $response->assertRedirect(route('leverancier.producten', ['leverancier' => 1]));
        $this->assertDatabaseHas('ProductPerLeverancier', [
            'LeverancierId' => 1,
            'ProductId' => 1,
            'Aantal' => 25,
        ]);
    }

    public function test_inactive_product_cannot_be_added_for_delivery(): void
    {
        $this->loginUser();

        $response = $this->post(route('leverancier.producten.levering.store', ['leverancier' => 4, 'product' => 10]), [
            'Aantal' => 30,
            'DatumLevering' => now()->toDateString(),
        ]);

        $response->assertSessionHas('error');
        $response->assertRedirect(route('leverancier.producten', ['leverancier' => 4]));
    }
}
