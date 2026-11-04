
-- Exercise 04 -c
-- Municipalities and farms for Pamplona (54518) using NATURAL JOIN


SELECT
    municipality_code,
    municipality_name,
    farm_name,
    rural_district
FROM geo.municipalities
NATURAL JOIN farm.farms
WHERE municipality_code = '54518'
ORDER BY farm_name ASC;

/*
 municipality_code | municipality_name |    farm_name     |    rural_district
-------------------+-------------------+------------------+----------------------
 54518             | Pamplona          | Agua Bonita      | Garc├¡a
 54518             | Pamplona          | Agua Bonita      | Monteadentro
 54518             | Pamplona          | Agua Bonita      | Iscaligua
 54518             | Pamplona          | Altamira         | El Alizal
 54518             | Pamplona          | Altamira         | Sabaneta Alta
 54518             | Pamplona          | Bella Vista Alta | Sabaneta Baja
 54518             | Pamplona          | Bella Vista Alta | Alto Grande
 54518             | Pamplona          | Bella Vista Alta | El Rosal
 54518             | Pamplona          | Bella Vista Alta | Sabaneta Baja
 54518             | Pamplona          | Bellavista       | Cunuba
 54518             | Pamplona          | Bellavista       | San Jos├® De Tonchala
 54518             | Pamplona          | Bellavista       | Alto Grande
 54518             | Pamplona          | Bellavista       | Alto Grande
 54518             | Pamplona          | Bellavista       | Sabagua
 54518             | Pamplona          | Bellavista       | Pe├▒as
 54518             | Pamplona          | Buenavista       | Alcaparral
 54518             | Pamplona          | Buenavista       | El Alizal
 54518             | Pamplona          | Cafetal Viejo    | Lengua
 54518             | Pamplona          | Cafetal Viejo    | Navarro
 54518             | Pamplona          | Cafetal Viejo    | San Jos├® De Tonchala
 54518             | Pamplona          | Cafetal Viejo    | La Legua
 54518             | Pamplona          | Cafetal Viejo    | Cunuba
 54518             | Pamplona          | Cafetal Viejo    | Caima
 54518             | Pamplona          | El Array├ín       | Iscaligua
 54518             | Pamplona          | El Array├ín       | Cunuba
 54518             | Pamplona          | El Array├ín       | Navarro
 54518             | Pamplona          | El Array├ín       | Tampanqueba
 54518             | Pamplona          | El Bosque        | Tampanqueba
 54518             | Pamplona          | El Bosque        | Llano Castro
 54518             | Pamplona          | El Bosque        | Sabaneta Alta
 54518             | Pamplona          | El Bosque        | Sabaneta Baja
 54518             | Pamplona          | El Brillante     | La Legua
 54518             | Pamplona          | El Brillante     | Pe├▒as
 54518             | Pamplona          | El Brillante     | La Legua
 54518             | Pamplona          | El Brillante     | Jurado
 54518             | Pamplona          | El Brillante     | Navarro
 54518             | Pamplona          | El Cafetal       | Sabaneta Alta
 54518             | Pamplona          | El Caney         | Alto Grande
 54518             | Pamplona          | El Cedro         | La Legua
 54518             | Pamplona          | El Cedro         | Llano Castro
 54518             | Pamplona          | El Cedro         | La Legua
 54518             | Pamplona          | El Cedro         | La ÔöîPa
 54518             | Pamplona          | El Cedro         | Iscaligua
 54518             | Pamplona          | El Danubio       | Garc├¡a
 54518             | Pamplona          | El Danubio       | Tampanqueba
 54518             | Pamplona          | El Diamante      | Monteadentro
 54518             | Pamplona          | El Diamante      | El Alizal
 54518             | Pamplona          | El Diamante      | Sabaneta Baja
 54518             | Pamplona          | El Diamante      | Tampanqueba
 54518             | Pamplona          | El Diamante      | San Jos├® De Tonchala
 54518             | Pamplona          | El Diamante      | Tampanqueba
 54518             | Pamplona          | El Diamante      | El Escorial
 54518             | Pamplona          | El Ed├®n          | Alto Grande
 54518             | Pamplona          | El Ed├®n          | Santa Matilde
 54518             | Pamplona          | El Ed├®n          | Cabecera Municipal
 54518             | Pamplona          | El Encanto       | Fontib├│n
 54518             | Pamplona          | El Encanto       | San Jos├® De Tonchala
 54518             | Pamplona          | El Encanto       | Garc├¡a
 54518             | Pamplona          | El Encanto       | Cunuba
 54518             | Pamplona          | El Encanto       | San Jos├® De Tonchala
 54518             | Pamplona          | El Encanto       | Cunuba
 54518             | Pamplona          | El Guamo         | Fontib├│n
 54518             | Pamplona          | El Guamo         | El Escorial
 54518             | Pamplona          | El Guamo         | Fontib├│n
 54518             | Pamplona          | El Guayabo       | Sabaneta Baja
 54518             | Pamplona          | El Guayabo       | El Rosal
 54518             | Pamplona          | El Guayabo       | Navarro
 54518             | Pamplona          | El Guayabo       | San Francisco
 54518             | Pamplona          | El Guayabo       | Caima
 54518             | Pamplona          | El Guayabo       | Alto Grande
 54518             | Pamplona          | El Guayabo       | El Totumo
 54518             | Pamplona          | El Guayabo       | Sabaneta Baja
 54518             | Pamplona          | El Guayabo       | Tampanqueba
 54518             | Pamplona          | El Higuer├│n      | Jurado
 54518             | Pamplona          | El Higuer├│n      | Caima
 54518             | Pamplona          | El Higuer├│n      | Tampanqueba
 54518             | Pamplona          | El Higuer├│n      | La ÔöîPa
 54518             | Pamplona          | El Horizonte     | El Totumo
 54518             | Pamplona          | El Horizonte     | El Escorial
 54518             | Pamplona          | El Horizonte     | Pe├▒as
 54518             | Pamplona          | El Horizonte     | San Jos├® De Tonchala
 54518             | Pamplona          | El Horizonte     | Tampanqueba
 54518             | Pamplona          | El Horizonte     | La ÔöîPa
 54518             | Pamplona          | El Jard├¡n        | Pe├▒as
 54518             | Pamplona          | El Jard├¡n        | La Legua
 54518             | Pamplona          | El Jard├¡n        | Cunuba
 54518             | Pamplona          | El Jard├¡n        | Cabecera Municipal
 54518             | Pamplona          | El Jard├¡n        | El Escorial
 54518             | Pamplona          | El Manantial     | Santa Matilde
 54518             | Pamplona          | El Mango         | Cabecera Municipal
 54518             | Pamplona          | El Mango         | La Legua
 54518             | Pamplona          | El Mango         | La ÔöîPa
 54518             | Pamplona          | El Mes├│n         | Iscaligua
 54518             | Pamplona          | El Mes├│n         | Navarro
 54518             | Pamplona          | El Mes├│n         | Llano Castro
 54518             | Pamplona          | El Mirador       | Fontib├│n
 54518             | Pamplona          | El Mirador       | San Francisco
 54518             | Pamplona          | El Mirador       | El Palchal
 54518             | Pamplona          | El Nogal         | Tampanqueba
 54518             | Pamplona          | El Nogal         | San Jos├® De Tonchala
 54518             | Pamplona          | El Nogal         | El Totumo
 54518             | Pamplona          | El Nogal         | Tampanqueba
 54518             | Pamplona          | El Nogal         | Alto Grande
 54518             | Pamplona          | El Nogal         | Garc├¡a
 54518             | Pamplona          | El Oasis         | El Alizal
 54518             | Pamplona          | El Oasis         | Fontib├│n
 54518             | Pamplona          | El Oasis         | El Alizal
 54518             | Pamplona          | El Oasis         | La ÔöîPa
 54518             | Pamplona          | El Para├¡so       | Navarro
 54518             | Pamplona          | El Para├¡so       | El Palchal
 54518             | Pamplona          | El Placer        | Monteadentro
 54518             | Pamplona          | El Placer        | Tampanqueba
 54518             | Pamplona          | El Porvenir      | Fontib├│n
 54518             | Pamplona          | El Porvenir      | El Escorial
 54518             | Pamplona          | El Porvenir      | El Palchal
 54518             | Pamplona          | El Porvenir      | Iscaligua
 54518             | Pamplona          | El Porvenir      | La ÔöîPa
 54518             | Pamplona          | El Porvenir      | La ÔöîPa
 54518             | Pamplona          | El Recreo        | Cunuba
 54518             | Pamplona          | El Recreo        | La Legua
 54518             | Pamplona          | El Recreo        | Caima
 54518             | Pamplona          | El Recuerdo      | Caima
 54518             | Pamplona          | El Recuerdo      | Alto Grande
 54518             | Pamplona          | El Recuerdo      | Sabaneta Baja
 54518             | Pamplona          | El Recuerdo      | El Escorial
 54518             | Pamplona          | El Recuerdo      | La Legua
 54518             | Pamplona          | El Recuerdo      | Monteadentro
 54518             | Pamplona          | El Refugio       | Monteadentro
 54518             | Pamplona          | El Refugio       | Sabaneta Baja
 54518             | Pamplona          | El Refugio       | Fontib├│n
 54518             | Pamplona          | El Refugio       | Alto Grande
 54518             | Pamplona          | El Refugio       | Pe├▒as
 54518             | Pamplona          | El Retiro        | Sabaneta Alta
 54518             | Pamplona          | El Retiro        | Garc├¡a
 54518             | Pamplona          | El Retiro        | El Totumo
 54518             | Pamplona          | El Rosal         | Cabecera Municipal
 54518             | Pamplona          | El Rosal         | Navarro
 54518             | Pamplona          | El Silencio      | Sabagua
 54518             | Pamplona          | El Silencio      | San Francisco
 54518             | Pamplona          | El Silencio      | Sabaneta Alta
 54518             | Pamplona          | El Silencio      | Santa Matilde
 54518             | Pamplona          | El Silencio      | Jurado
 54518             | Pamplona          | El Silencio      | Iscaligua
 54518             | Pamplona          | El Tesoro        | Fontib├│n
 54518             | Pamplona          | El Tesoro        | El Alizal
 54518             | Pamplona          | El Tesoro        | Llano Castro
 54518             | Pamplona          | El Tesoro        | Pe├▒as
 54518             | Pamplona          | El Tesoro        | San Francisco
 54518             | Pamplona          | El Triunfo       | Garc├¡a
 54518             | Pamplona          | El Triunfo       | Cabecera Municipal
 54518             | Pamplona          | El Triunfo       | El Escorial
 54518             | Pamplona          | El Vergel        | Cabecera Municipal
 54518             | Pamplona          | El Vergel        | Sabagua
 54518             | Pamplona          | El Vergel        | Santa Matilde
 54518             | Pamplona          | La Argentina     | Fontib├│n
 54518             | Pamplona          | La Argentina     | Sabaneta Baja
 54518             | Pamplona          | La Argentina     | Lengua
 54518             | Pamplona          | La Argentina     | Caima
 54518             | Pamplona          | La Argentina     | Pe├▒as
 54518             | Pamplona          | La Argentina     | El Escorial
 54518             | Pamplona          | La Argentina     | San Jos├® De Tonchala
 54518             | Pamplona          | La Aurora        | Jurado
 54518             | Pamplona          | La Aurora        | Llano Castro
 54518             | Pamplona          | La Aurora        | El Palchal
 54518             | Pamplona          | La Aurora        | La ÔöîPa
 54518             | Pamplona          | La Caba├▒a        | Santa Matilde
 54518             | Pamplona          | La Caba├▒a        | La ÔöîPa
 54518             | Pamplona          | La Caba├▒a        | Cunuba
 54518             | Pamplona          | La Caba├▒a        | Llano Castro
 54518             | Pamplona          | La Caba├▒a        | Sabagua
 54518             | Pamplona          | La Caba├▒a        | Lengua
 54518             | Pamplona          | La Carolina      | Tampanqueba
 54518             | Pamplona          | La Carolina      | Llano Castro
 54518             | Pamplona          | La Cascada       | Lengua
 54518             | Pamplona          | La Cascada       | Caima
 54518             | Pamplona          | La Cascada       | Fontib├│n
 54518             | Pamplona          | La Ceiba         | San Francisco
 54518             | Pamplona          | La Ceiba         | Llano Castro
 54518             | Pamplona          | La Cristalina    | El Escorial
 54518             | Pamplona          | La Cumbre        | Jurado
 54518             | Pamplona          | La Cumbre        | Cabecera Municipal
 54518             | Pamplona          | La Cumbre        | Sabagua
 54518             | Pamplona          | La Divisa        | San Francisco
 54518             | Pamplona          | La Divisa        | El Totumo
 54518             | Pamplona          | La Divisa        | Cabecera Municipal
 54518             | Pamplona          | La Esperanza     | El Rosal
 54518             | Pamplona          | La Esperanza     | Pe├▒as
 54518             | Pamplona          | La Esperanza     | El Palchal
 54518             | Pamplona          | La Esperanza     | Monteadentro
 54518             | Pamplona          | La Estrella      | Llano Castro
 54518             | Pamplona          | La Estrella      | Garc├¡a
 54518             | Pamplona          | La Floresta      | San Jos├® De Tonchala
 54518             | Pamplona          | La Floresta      | Pe├▒as
 54518             | Pamplona          | La Floresta      | Alcaparral
 54518             | Pamplona          | La Floresta      | Pe├▒as
 54518             | Pamplona          | La Floresta      | San Jos├® De Tonchala
 54518             | Pamplona          | La Florida       | Pe├▒as
 54518             | Pamplona          | La Fortuna       | San Francisco
 54518             | Pamplona          | La Fortuna       | El Palchal
 54518             | Pamplona          | La Fortuna       | Lengua
 54518             | Pamplona          | La Gaitana       | Cunuba
 54518             | Pamplona          | La Gaitana       | Sabagua
 54518             | Pamplona          | La Gaitana       | La ÔöîPa
 54518             | Pamplona          | La Gloria        | San Jos├® De Tonchala
 54518             | Pamplona          | La Granja        | Alcaparral
 54518             | Pamplona          | La Granja        | El Palchal
 54518             | Pamplona          | La Granja        | La Legua
 54518             | Pamplona          | La Granja        | Garc├¡a
 54518             | Pamplona          | La Granja        | Iscaligua
 54518             | Pamplona          | La Holanda       | Caima
 54518             | Pamplona          | La Holanda       | El Palchal
 54518             | Pamplona          | La Holanda       | Cabecera Municipal
 54518             | Pamplona          | La Isabela       | Cunuba
 54518             | Pamplona          | La Isabela       | Garc├¡a
 54518             | Pamplona          | La Isabela       | Monteadentro
 54518             | Pamplona          | La Loma          | Jurado
 54518             | Pamplona          | La Loma          | Navarro
 54518             | Pamplona          | La Loma          | Sabagua
 54518             | Pamplona          | La Loma          | Alto Grande
 54518             | Pamplona          | La Milagrosa     | El Alizal
 54518             | Pamplona          | La Milagrosa     | Jurado
 54518             | Pamplona          | La Milagrosa     | Cabecera Municipal
 54518             | Pamplona          | La Milagrosa     | Lengua
 54518             | Pamplona          | La Milagrosa     | Cabecera Municipal
 54518             | Pamplona          | La Milagrosa     | El Palchal
 54518             | Pamplona          | La Monta├▒a       | Monteadentro
 54518             | Pamplona          | La Monta├▒a       | Pe├▒as
 54518             | Pamplona          | La Palma         | Santa Matilde
 54518             | Pamplona          | La Palma         | Garc├¡a
 54518             | Pamplona          | La Palma         | Sabagua
 54518             | Pamplona          | La Palma         | San Jos├® De Tonchala
 54518             | Pamplona          | La Palma         | Tampanqueba
 54518             | Pamplona          | La Palma         | Cunuba
 54518             | Pamplona          | La Palma         | El Escorial
 54518             | Pamplona          | La Palma         | Cunuba
 54518             | Pamplona          | La Palma         | Iscaligua
 54518             | Pamplona          | La Pradera       | Sabagua
 54518             | Pamplona          | La Primavera     | San Jos├® De Tonchala
 54518             | Pamplona          | La Primavera     | Caima
 54518             | Pamplona          | La Primavera     | Tampanqueba
 54518             | Pamplona          | La Primavera     | Sabagua
 54518             | Pamplona          | La Quebrada      | El Totumo
 54518             | Pamplona          | La Quebrada      | Monteadentro
 54518             | Pamplona          | La Quebrada      | El Alizal
 54518             | Pamplona          | La Quebrada      | Navarro
 54518             | Pamplona          | La Reserva       | Garc├¡a
 54518             | Pamplona          | La Reserva       | La Legua
 54518             | Pamplona          | La Reserva       | Sabagua
 54518             | Pamplona          | La Reserva       | El Escorial
 54518             | Pamplona          | La Selva         | Sabaneta Baja
 54518             | Pamplona          | La Selva         | Sabagua
 54518             | Pamplona          | La Selva         | Pe├▒as
 54518             | Pamplona          | La Selva         | Garc├¡a
 54518             | Pamplona          | La Siberia       | Sabaneta Baja
 54518             | Pamplona          | La Siberia       | Garc├¡a
 54518             | Pamplona          | La Siberia       | El Alizal
 54518             | Pamplona          | La Siberia       | Monteadentro
 54518             | Pamplona          | La Soledad       | El Alizal
 54518             | Pamplona          | La Uni├│n         | Llano Castro
 54518             | Pamplona          | La Uni├│n         | Santa Matilde
 54518             | Pamplona          | La Uni├│n         | La Legua
 54518             | Pamplona          | La Uni├│n         | La Legua
 54518             | Pamplona          | La Victoria      | La ÔöîPa
 54518             | Pamplona          | La Victoria      | El Escorial
 54518             | Pamplona          | La Victoria      | Cunuba
 54518             | Pamplona          | Las Acacias      | Cunuba
 54518             | Pamplona          | Las Acacias      | Fontib├│n
 54518             | Pamplona          | Las Acacias      | El Alizal
 54518             | Pamplona          | Las Acacias      | Jurado
 54518             | Pamplona          | Las Brisas       | Tampanqueba
 54518             | Pamplona          | Las Brisas       | Alto Grande
 54518             | Pamplona          | Las Delicias     | El Totumo
 54518             | Pamplona          | Las Delicias     | Sabagua
 54518             | Pamplona          | Las Delicias     | El Alizal
 54518             | Pamplona          | Las Delicias     | Caima
 54518             | Pamplona          | Las Margaritas   | Caima
 54518             | Pamplona          | Las Margaritas   | El Palchal
 54518             | Pamplona          | Las Margaritas   | Llano Castro
 54518             | Pamplona          | Las Margaritas   | Fontib├│n
 54518             | Pamplona          | Las Margaritas   | Garc├¡a
 54518             | Pamplona          | Las Mercedes     | San Francisco
 54518             | Pamplona          | Las Mercedes     | Llano Castro
 54518             | Pamplona          | Las Mercedes     | San Francisco
 54518             | Pamplona          | Las Mercedes     | Navarro
 54518             | Pamplona          | Las Orqu├¡deas    | Sabaneta Baja
 54518             | Pamplona          | Las Orqu├¡deas    | Fontib├│n
 54518             | Pamplona          | Las Orqu├¡deas    | Caima
 54518             | Pamplona          | Las Palmas       | El Alizal
 54518             | Pamplona          | Las Palmas       | Alto Grande
 54518             | Pamplona          | Las Palmas       | El Escorial
 54518             | Pamplona          | Las Palmas       | La Legua
 54518             | Pamplona          | Las Palmas       | El Rosal
 54518             | Pamplona          | Los Alpes        | Santa Matilde
 54518             | Pamplona          | Los Alpes        | Tampanqueba
 54518             | Pamplona          | Los Alpes        | La Legua
 54518             | Pamplona          | Los Arrayanes    | Iscaligua
 54518             | Pamplona          | Los Arrayanes    | La ÔöîPa
 54518             | Pamplona          | Los Arrayanes    | El Palchal
 54518             | Pamplona          | Los Arrayanes    | Navarro
 54518             | Pamplona          | Los Arrayanes    | Cabecera Municipal
 54518             | Pamplona          | Los Arrayanes    | Jurado
 54518             | Pamplona          | Los Arrayanes    | Alto Grande
 54518             | Pamplona          | Los Guaduales    | Sabaneta Alta
 54518             | Pamplona          | Los Guaduales    | Santa Matilde
 54518             | Pamplona          | Los Guaduales    | El Palchal
 54518             | Pamplona          | Los Laureles     | San Jos├® De Tonchala
 54518             | Pamplona          | Los Laureles     | Pe├▒as
 54518             | Pamplona          | Los Laureles     | Lengua
 54518             | Pamplona          | Los Laureles     | El Alizal
 54518             | Pamplona          | Los Naranjos     | El Rosal
 54518             | Pamplona          | Los Pinos        | Alto Grande
 54518             | Pamplona          | Los Pinos        | Alcaparral
 54518             | Pamplona          | Los Pinos        | Sabaneta Alta
 54518             | Pamplona          | Los Pinos        | San Francisco
 54518             | Pamplona          | Mi Ranchito      | El Alizal
 54518             | Pamplona          | Mi Ranchito      | Iscaligua
 54518             | Pamplona          | Miraflores       | Alcaparral
 54518             | Pamplona          | Miraflores       | El Rosal
 54518             | Pamplona          | Monte Alto       | Alcaparral
 54518             | Pamplona          | Monte Alto       | La Legua
 54518             | Pamplona          | Monteverde       | Lengua
 54518             | Pamplona          | Monteverde       | Tampanqueba
 54518             | Pamplona          | Monteverde       | El Totumo
 54518             | Pamplona          | Monteverde       | El Alizal
 54518             | Pamplona          | Monteverde       | El Palchal
 54518             | Pamplona          | Monteverde       | La Legua
 54518             | Pamplona          | Monteverde       | Alto Grande
 54518             | Pamplona          | San Antonio      | La Legua
 54518             | Pamplona          | San Antonio      | Jurado
 54518             | Pamplona          | San Antonio      | Monteadentro
 54518             | Pamplona          | San Antonio      | Iscaligua
 54518             | Pamplona          | San Jos├®         | Iscaligua
 54518             | Pamplona          | San Jos├®         | Santa Matilde
 54518             | Pamplona          | San Jos├®         | Tampanqueba
 54518             | Pamplona          | San Jos├®         | Alcaparral
 54518             | Pamplona          | San Luis         | El Totumo
 54518             | Pamplona          | San Luis         | Sabaneta Alta
 54518             | Pamplona          | San Luis         | Tampanqueba
 54518             | Pamplona          | San Luis         | Sabaneta Alta
 54518             | Pamplona          | San Rafael       | San Jos├® De Tonchala
 54518             | Pamplona          | San Rafael       | Tampanqueba
 54518             | Pamplona          | San Rafael       | El Totumo
 54518             | Pamplona          | Santa B├írbara    | Caima
 54518             | Pamplona          | Santa B├írbara    | Pe├▒as
 54518             | Pamplona          | Santa Clara      | La Legua
 54518             | Pamplona          | Santa Clara      | El Rosal
 54518             | Pamplona          | Santa Clara      | La Legua
 54518             | Pamplona          | Santa Clara      | Lengua
 54518             | Pamplona          | Santa Clara      | El Totumo
 54518             | Pamplona          | Santa Clara      | Cunuba
 54518             | Pamplona          | Santa Elena      | Garc├¡a
 54518             | Pamplona          | Tierra Linda     | Lengua
 54518             | Pamplona          | Tierra Linda     | Tampanqueba
 54518             | Pamplona          | Tierra Linda     | La Legua
 54518             | Pamplona          | Tierra Linda     | Iscaligua
 54518             | Pamplona          | Tierra Linda     | El Palchal
 54518             | Pamplona          | Villa Hermosa    | El Rosal
 54518             | Pamplona          | Villa Hermosa    | Monteadentro
 54518             | Pamplona          | Villa Hermosa    | La Legua
 54518             | Pamplona          | Villa Hermosa    | El Alizal
 54518             | Pamplona          | Villa Hermosa    | El Totumo
 54518             | Pamplona          | Villa Hermosa    | Pe├▒as
 54518             | Pamplona          | Villa Hermosa    | Cunuba
 54518             | Pamplona          | Villa Hermosa    | El Escorial
 54518             | Pamplona          | Villa Rosa       | San Jos├® De Tonchala
 54518             | Pamplona          | Villa Rosa       | Cunuba
 54518             | Pamplona          | Villa Rosa       | El Alizal
 54518             | Pamplona          | Villa Rosa       | Pe├▒as
(368 filas)
*/