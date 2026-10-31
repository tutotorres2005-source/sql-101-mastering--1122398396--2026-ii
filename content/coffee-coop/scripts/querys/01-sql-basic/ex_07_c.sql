-- Exercise 07 - c
-- Farms in municipality 54518 without registered geographic coordinates (latitude or longitude is null)

SELECT
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T1.latitude AS latitude,
    T1.longitude AS longitude
FROM farm.farms AS T1
WHERE T1.municipality_code = '54518'
  AND (T1.latitude IS NULL OR T1.longitude IS NULL);

/*
      farm       |    rural_district    | latitude | longitude
------------------+----------------------+----------+-----------
 El Recuerdo      | Alto Grande          |          |
 La Esperanza     | El Palchal           |          |
 Las Delicias     | Caima                |          |
 Los Arrayanes    | Cabecera Municipal   |          |
 El Brillante     | Pe├▒as                |          |
 El Porvenir      | Fontib├│n             |          |
 La Florida       | Pe├▒as                |          |
 Los Arrayanes    | Navarro              |          |
 El Guayabo       | San Francisco        |          |
 El Encanto       | Fontib├│n             |          |
 Cafetal Viejo    | San Jos├® De Tonchala |          |
 El Vergel        | Cabecera Municipal   |          |
 El Higuer├│n      | Caima                |          |
 Bella Vista Alta | El Rosal             |          |
 El Horizonte     | San Jos├® De Tonchala |          |
 La Esperanza     | Pe├▒as                |          |
 El Mes├│n         | Iscaligua            |          |
 Las Mercedes     | Llano Castro         |          |
 Las Orqu├¡deas    | Sabaneta Baja        |          |
 La Uni├│n         | La Legua             |          |
 San Antonio      | Jurado               |          |
 San Luis         | Sabaneta Alta        |          |
 El Danubio       | Garc├¡a               |          |
 Tierra Linda     | Lengua               |          |
 Tierra Linda     | Iscaligua            |          |
 Los Laureles     | Pe├▒as                |          |
 Bella Vista Alta | Sabaneta Baja        |          |
 La Argentina     | Pe├▒as                |          |
 El Triunfo       | Cabecera Municipal   |          |
 La Holanda       | Cabecera Municipal   |          |
 Los Naranjos     | El Rosal             |          |
 La Floresta      | Alcaparral           |          |
 El Guamo         | Fontib├│n             |          |
 La Reserva       | Garc├¡a               |          |
 El Nogal         | El Totumo            |          |
 La Loma          | Sabagua              |          |
 El Encanto       | San Jos├® De Tonchala |          |
 El Mirador       | Fontib├│n             |          |
 La Siberia       | Sabaneta Baja        |          |
 El Higuer├│n      | La ÔöîPa               |          |
 El Tesoro        | Pe├▒as                |          |
 San Antonio      | La Legua             |          |
 La Siberia       | Monteadentro         |          |
 El Refugio       | Monteadentro         |          |
 Santa Clara      | Cunuba               |          |
 La Esperanza     | El Rosal             |          |
 La Loma          | Jurado               |          |
 La Gloria        | San Jos├® De Tonchala |          |
 La Floresta      | San Jos├® De Tonchala |          |
 El Guamo         | Fontib├│n             |          |
 La Cumbre        | Cabecera Municipal   |          |
 Santa B├írbara    | Caima                |          |
 La Palma         | Cunuba               |          |
 Tierra Linda     | Tampanqueba          |          |
 Los Laureles     | San Jos├® De Tonchala |          |
 San Jos├®         | Iscaligua            |          |
 El Brillante     | La Legua             |          |
 Altamira         | El Alizal            |          |
 La Primavera     | San Jos├® De Tonchala |          |
 El Guayabo       | El Totumo            |          |
 La Palma         | El Escorial          |          |
 El Bosque        | Tampanqueba          |          |
 El Manantial     | Santa Matilde        |          |
 Las Margaritas   | Garc├¡a               |          |
 Las Mercedes     | San Francisco        |          |
 Villa Rosa       | Cunuba               |          |
 San Luis         | Sabaneta Alta        |          |
 San Luis         | Tampanqueba          |          |
 El Mirador       | El Palchal           |          |
 La Caba├▒a        | La ÔöîPa               |          |
 El Ed├®n          | Cabecera Municipal   |          |
 Los Arrayanes    | El Palchal           |          |
 La Palma         | Tampanqueba          |          |
 Villa Rosa       | Pe├▒as                |          |
 Las Brisas       | Alto Grande          |          |
 La Siberia       | El Alizal            |          |
 El Silencio      | Iscaligua            |          |
 El Triunfo       | El Escorial          |          |
 La Quebrada      | El Totumo            |          |
 El Horizonte     | La ÔöîPa               |          |
 El Placer        | Monteadentro         |          |
 Villa Hermosa    | El Escorial          |          |
 Tierra Linda     | La Legua             |          |
 Los Laureles     | El Alizal            |          |
 Bellavista       | Cunuba               |          |
 La Carolina      | Llano Castro         |          |
 Cafetal Viejo    | La Legua             |          |
 Villa Hermosa    | El Rosal             |          |
 La Cascada       | Lengua               |          |
 Bellavista       | Pe├▒as                |          |
 San Rafael       | El Totumo            |          |
 Los Pinos        | Alcaparral           |          |
 El Refugio       | Sabaneta Baja        |          |
 Monteverde       | Tampanqueba          |          |
 San Rafael       | Tampanqueba          |          |
 Los Guaduales    | Santa Matilde        |          |
 El Para├¡so       | Navarro              |          |
 Miraflores       | Alcaparral           |          |
 La Isabela       | Monteadentro         |          |
 La Esperanza     | Monteadentro         |          |
 La Aurora        | El Palchal           |          |
 La Palma         | Iscaligua            |          |
 Las Margaritas   | El Palchal           |          |
 El Nogal         | Tampanqueba          |          |
 San Antonio      | Iscaligua            |          |
 El Brillante     | Navarro              |          |
 La Fortuna       | San Francisco        |          |
 La Selva         | Pe├▒as                |          |
 Las Mercedes     | Navarro              |          |
 La Caba├▒a        | Cunuba               |          |
 Bellavista       | Alto Grande          |          |
 El Encanto       | Garc├¡a               |          |
 La Milagrosa     | El Palchal           |          |
 El Cedro         | La Legua             |          |
 Bella Vista Alta | Alto Grande          |          |
 El Mango         | La Legua             |          |
 La Palma         | Cunuba               |          |
 Villa Rosa       | El Alizal            |          |
 La Pradera       | Sabagua              |          |
 El Mango         | La ÔöîPa               |          |
 El Diamante      | El Alizal            |          |
 El Oasis         | El Alizal            |          |
 El Para├¡so       | El Palchal           |          |
 El Diamante      | Monteadentro         |          |
 La Gaitana       | Cunuba               |          |
 Bellavista       | San Jos├® De Tonchala |          |
 Las Margaritas   | Fontib├│n             |          |
 La Argentina     | Sabaneta Baja        |          |
 El Cedro         | Iscaligua            |          |
 Cafetal Viejo    | Caima                |          |
 Mi Ranchito      | Iscaligua            |          |
 San Rafael       | San Jos├® De Tonchala |          |
 La Floresta      | Pe├▒as                |          |
 La Granja        | El Palchal           |          |
 La Isabela       | Garc├¡a               |          |
 El Silencio      | Jurado               |          |
 El Guayabo       | Caima                |          |
 La Quebrada      | Monteadentro         |          |
 La Caba├▒a        | Sabagua              |          |
 Las Margaritas   | Caima                |          |
 La Cascada       | Caima                |          |
 La Milagrosa     | Jurado               |          |
 San Jos├®         | Tampanqueba          |          |
 La Reserva       | El Escorial          |          |
 El Danubio       | Tampanqueba          |          |
 El Guayabo       | Tampanqueba          |          |
 El Retiro        | Sabaneta Alta        |          |
 Bella Vista Alta | Sabaneta Baja        |          |
 Las Palmas       | El Escorial          |          |
 Santa Clara      | La Legua             |          |
 El Refugio       | Pe├▒as                |          |
 San Jos├®         | Santa Matilde        |          |
 La Caba├▒a        | Lengua               |          |
(153 filas)
/*