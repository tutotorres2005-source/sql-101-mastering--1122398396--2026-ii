/*
Exercise 08
c
Farms in municipality 54518 that delivered coffee in 2025 but not in 2026
*/

SELECT
    T1.farm_name AS farm,
    T1.rural_district AS rural_district
FROM farm.farms AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.farm_id = T2.farm_id
WHERE T1.municipality_code = '54518'
  AND EXTRACT(year FROM T2.delivered_at) = 2025

EXCEPT

SELECT
    T1.farm_name AS farm,
    T1.rural_district AS rural_district
FROM farm.farms AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.farm_id = T2.farm_id
WHERE T1.municipality_code = '54518'
  AND EXTRACT(year FROM T2.delivered_at) = 2026

ORDER BY farm ASC, rural_district ASC;

/*
     farm      |    rural_district
---------------+----------------------
 Agua Bonita   | Garc├¡a
 Altamira      | El Alizal
 Bellavista    | Cunuba
 Cafetal Viejo | Caima
 Cafetal Viejo | Cunuba
 Cafetal Viejo | San Jos├® De Tonchala
 El Array├ín    | Iscaligua
 El Brillante  | Pe├▒as
 El Diamante   | San Jos├® De Tonchala
 El Encanto    | Cunuba
 El Guamo      | Fontib├│n
 El Guayabo    | Caima
 El Guayabo    | El Rosal
 El Higuer├│n   | Caima
 El Higuer├│n   | La ÔöîPa
 El Horizonte  | El Totumo
 El Horizonte  | Tampanqueba
 El Jard├¡n     | Cabecera Municipal
 El Jard├¡n     | El Escorial
 El Jard├¡n     | La Legua
 El Manantial  | Santa Matilde
 El Mango      | La Legua
 El Mirador    | El Palchal
 El Porvenir   | Iscaligua
 El Porvenir   | La ÔöîPa
 El Recreo     | La Legua
 El Recuerdo   | El Escorial
 El Refugio    | Pe├▒as
 El Retiro     | Sabaneta Alta
 El Rosal      | Cabecera Municipal
 El Tesoro     | San Francisco
 El Vergel     | Cabecera Municipal
 La Argentina  | El Escorial
 La Argentina  | Lengua
 La Argentina  | San Jos├® De Tonchala
 La Aurora     | La ÔöîPa
 La Caba├▒a     | Cunuba
 La Caba├▒a     | Llano Castro
 La Caba├▒a     | Sabagua
 La Carolina   | Tampanqueba
 La Ceiba      | San Francisco
 La Divisa     | Cabecera Municipal
 La Esperanza  | El Palchal
 La Floresta   | San Jos├® De Tonchala
 La Fortuna    | El Palchal
 La Gaitana    | Sabagua
 La Granja     | El Palchal
 La Loma       | Navarro
 La Milagrosa  | Cabecera Municipal
 La Milagrosa  | El Alizal
 La Monta├▒a    | Monteadentro
 La Palma      | Cunuba
 La Primavera  | Sabagua
 La Primavera  | Tampanqueba
 La Quebrada   | El Totumo
 La Quebrada   | Navarro
 La Selva      | Pe├▒as
 La Selva      | Sabagua
 La Siberia    | Garc├¡a
 La Uni├│n      | Llano Castro
 La Uni├│n      | Santa Matilde
 La Victoria   | El Escorial
 La Victoria   | La ÔöîPa
 Las Acacias   | Cunuba
 Las Brisas    | Alto Grande
 Las Delicias  | Caima
 Las Palmas    | El Rosal
 Los Guaduales | Santa Matilde
 Los Laureles  | Lengua
 Los Laureles  | Pe├▒as
 Miraflores    | El Rosal
 Monteverde    | El Alizal
 Monteverde    | El Palchal
 San Antonio   | Monteadentro
 San Jos├®      | Iscaligua
 San Rafael    | San Jos├® De Tonchala
 Tierra Linda  | El Palchal
 Villa Hermosa | Cunuba
 Villa Hermosa | La Legua
(79 filas
/*