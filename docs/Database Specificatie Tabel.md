# Database Specificatie Tabel

## 1. Leverancier
| Veld | Type | Lengte | Null | Opmerking |
| --- | --- | --- | --- | --- |
| Id | bigint unsigned | PK | Nee | Primaire sleutel |
| Naam | varchar | 100 | Nee | Naam van de leverancier |
| ContactPersoon | varchar | 100 | Nee | Contactpersoon |
| LeverancierNummer | varchar | 20 | Nee | Uniek nummer |
| Mobiel | varchar | 15 | Nee | Mobiel nummer |
| IsActief | bit | 1 | Nee | Status actief/inactief |
| Opmerking | varchar | 255 | Ja | Extra notitie |
| DatumAangemaakt | datetime(6) | - | Nee | Aanmaakdatum |
| DatumGewijzigd | datetime(6) | - | Nee | Wijzigingsdatum |

## 2. Product
| Veld | Type | Lengte | Null | Opmerking |
| --- | --- | --- | --- | --- |
| Id | bigint unsigned | PK | Nee | Primaire sleutel |
| Naam | varchar | 100 | Nee | Productnaam |
| Barcode | varchar | 20 | Nee | Unieke barcode |
| IsActief | bit | 1 | Nee | Status actief/inactief |
| Opmerking | varchar | 255 | Ja | Extra notitie |
| DatumAangemaakt | datetime(6) | - | Nee | Aanmaakdatum |
| DatumGewijzigd | datetime(6) | - | Nee | Wijzigingsdatum |

## 3. Magazijn
| Veld | Type | Lengte | Null | Opmerking |
| --- | --- | --- | --- | --- |
| Id | bigint unsigned | PK | Nee | Primaire sleutel |
| ProductId | bigint unsigned | FK | Nee | Verwijst naar Product.Id |
| VerpakkingsEenheidInKilogram | decimal | 8,2 | Nee | Verpakkingseenheid in kilogram |
| AantalAanwezig | int | - | Ja | Aantal in voorraad |
| IsActief | bit | 1 | Nee | Status actief/inactief |
| Opmerking | varchar | 255 | Ja | Extra notitie |
| DatumAangemaakt | datetime(6) | - | Nee | Aanmaakdatum |
| DatumGewijzigd | datetime(6) | - | Nee | Wijzigingsdatum |

## 4. Allergenen
| Veld | Type | Lengte | Null | Opmerking |
| --- | --- | --- | --- | --- |
| Id | bigint unsigned | PK | Nee | Primaire sleutel |
| Naam | varchar | 100 | Nee | Naam van het allergen |
| Omschrijving | varchar | 255 | Nee | Beschrijving |
| IsActief | bit | 1 | Nee | Status actief/inactief |
| Opmerking | varchar | 255 | Ja | Extra notitie |
| DatumAangemaakt | datetime(6) | - | Nee | Aanmaakdatum |
| DatumGewijzigd | datetime(6) | - | Nee | Wijzigingsdatum |

## 5. ProductPerLeverancier
| Veld | Type | Lengte | Null | Opmerking |
| --- | --- | --- | --- | --- |
| Id | bigint unsigned | PK | Nee | Primaire sleutel |
| LeverancierId | bigint unsigned | FK | Nee | Verwijst naar Leverancier.Id |
| ProductId | bigint unsigned | FK | Nee | Verwijst naar Product.Id |
| DatumLevering | date | - | Nee | Leveringsdatum |
| Aantal | int | - | Nee | Aantal geleverde eenheden |
| DatumEerstVolgendeLevering | date | - | Ja | Volgende verwachte levering |
| IsActief | bit | 1 | Nee | Status actief/inactief |
| Opmerking | varchar | 255 | Ja | Extra notitie |
| DatumAangemaakt | datetime(6) | - | Nee | Aanmaakdatum |
| DatumGewijzigd | datetime(6) | - | Nee | Wijzigingsdatum |

## 6. ProductPerAllergeen
| Veld | Type | Lengte | Null | Opmerking |
| --- | --- | --- | --- | --- |
| Id | bigint unsigned | PK | Nee | Primaire sleutel |
| ProductId | bigint unsigned | FK | Nee | Verwijst naar Product.Id |
| AllergeenId | bigint unsigned | FK | Nee | Verwijst naar Allergenen.Id |
| IsActief | bit | 1 | Nee | Status actief/inactief |
| Opmerking | varchar | 255 | Ja | Extra notitie |
| DatumAangemaakt | datetime(6) | - | Nee | Aanmaakdatum |
| DatumGewijzigd | datetime(6) | - | Nee | Wijzigingsdatum |

## Relaties
- Leverancier 1:n ProductPerLeverancier
- Product 1:n ProductPerLeverancier
- Product 1:n Magazijn
- Product n:n Allergenen via ProductPerAllergeen
- Allergenen n:n Product via ProductPerAllergeen

## Seed-data
De app bevat een Jamin-seeder met de leveranciers, producten, magazijnrecords, relaties en allergenen zoals in de opdracht is beschreven.
