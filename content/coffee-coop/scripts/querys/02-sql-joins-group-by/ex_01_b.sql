-- Exercise 01 - b
-- Farm details, rural district, municipality, and farmer names for municipality 54518

SELECT
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T3.municipality_name AS municipality,
    T2.first_name AS first_name,
    T2.last_name AS last_name
FROM farm.farms AS T1
INNER JOIN farm.farmers AS T2
    ON T1.document = T2.document_number
INNER JOIN geo.municipalities AS T3
    ON T1.municipality_code = T3.municipality_code
WHERE T1.municipality_code = '54518'
ORDER BY T2.last_name ASC;


/*
      farm       |    rural_district    | municipality |     first_name     |      last_name
------------------+----------------------+--------------+--------------------+---------------------
 El Jard├¡n        | El Escorial          | Pamplona     | Manuel             | Agudelo Jim├®nez
 La Selva         | Pe├▒as                | Pamplona     | Manuel             | Agudelo Jim├®nez
 El Diamante      | El Alizal            | Pamplona     | Marleny            | Agudelo Sandoval
 El Encanto       | Fontib├│n             | Pamplona     | Roc├¡o              | ├ülvarez C├írdenas
 Bellavista       | Alto Grande          | Pamplona     | Roc├¡o              | ├ülvarez C├írdenas
 La Caba├▒a        | Lengua               | Pamplona     | M├│nica             | ├ülvarez Carrillo
 Monteverde       | Lengua               | Pamplona     | M├│nica             | ├ülvarez Carrillo
 El Array├ín       | Navarro              | Pamplona     | Marleny            | ├ülvarez Correa
 El Mango         | La Legua             | Pamplona     | Alberto            | ├ülvarez Villamizar
 Monteverde       | La Legua             | Pamplona     | Myriam Yuliana     | Arango Narv├íez
 El Recuerdo      | La Legua             | Pamplona     | Anc├¡zar            | Arango Silva
 El Rosal         | Navarro              | Pamplona     | Edilma Gabriela    | Arias ├ülvarez
 Monteverde       | El Palchal           | Pamplona     | Edilma Gabriela    | Arias ├ülvarez
 Las Delicias     | Sabagua              | Pamplona     | Camilo             | Arias Mora
 La Quebrada      | Navarro              | Pamplona     | Viviana            | Arias Ram├¡rez
 La Selva         | Sabaneta Baja        | Pamplona     | Guillermo Pedro    | Arias Rodr├¡guez
 San Luis         | Sabaneta Alta        | Pamplona     | Isabella           | Barrera Cabrera
 La Siberia       | El Alizal            | Pamplona     | Mariana            | Barrera Correa
 El Brillante     | La Legua             | Pamplona     | Miguel             | Barrera Osorio
 La Floresta      | San Jos├® De Tonchala | Pamplona     | ├üngela             | Barrera Pe├▒a
 El Oasis         | El Alizal            | Pamplona     | Ramiro             | Barrera Villamizar
 Agua Bonita      | Monteadentro         | Pamplona     | Manuela            | Bastidas Medina
 Monteverde       | Alto Grande          | Pamplona     | Antonio            | Bastidas Rodr├¡guez
 Villa Rosa       | Cunuba               | Pamplona     | Fabio              | Bastidas Ruiz
 El Triunfo       | Garc├¡a               | Pamplona     | Roc├¡o              | Bastidas Su├írez
 La Argentina     | Caima                | Pamplona     | Roc├¡o              | Bastidas Su├írez
 Los Pinos        | San Francisco        | Pamplona     | Rafael H├®ctor      | Bedoya Pinz├│n
 La Reserva       | La Legua             | Pamplona     | Nelson             | Bedoya V├®lez
 Las Margaritas   | Caima                | Pamplona     | Nelson             | Bedoya V├®lez
 El Jard├¡n        | La Legua             | Pamplona     | Laura              | Benavides ├ülvarez
 La Argentina     | Lengua               | Pamplona     | Manuela Yolanda    | Benavides Delgado
 La Uni├│n         | Santa Matilde        | Pamplona     | Carolina Alejandra | Benavides Mart├¡nez
 Santa Clara      | El Rosal             | Pamplona     | Mateo              | Benavides Rangel
 El Horizonte     | El Totumo            | Pamplona     | Gustavo            | Berm├║dez Bedoya
 El Oasis         | La ÔöîPa               | Pamplona     | Iv├ín               | Berm├║dez Fl├│rez
 Villa Hermosa    | Monteadentro         | Pamplona     | Alberto            | Berm├║dez G├│mez
 La Fortuna       | San Francisco        | Pamplona     | Yesenia            | Berm├║dez Henao
 El Diamante      | Sabaneta Baja        | Pamplona     | Yesenia            | Berm├║dez Henao
 Los Naranjos     | El Rosal             | Pamplona     | ├ülvaro             | Berm├║dez Mar├¡n
 La Victoria      | Cunuba               | Pamplona     | ├ülvaro             | Berm├║dez Mar├¡n
 El Retiro        | Garc├¡a               | Pamplona     | ├ülvaro             | Berm├║dez Mar├¡n
 Las Palmas       | El Escorial          | Pamplona     | Rodrigo Guillermo  | Berm├║dez Mu├▒oz
 Santa Clara      | La Legua             | Pamplona     | Emilio             | Berm├║dez Rojas
 Miraflores       | El Rosal             | Pamplona     | M├│nica             | Betancur Arango
 El Horizonte     | San Jos├® De Tonchala | Pamplona     | Daniel             | Bonilla Duarte
 La Esperanza     | Pe├▒as                | Pamplona     | Daniel             | Bonilla Duarte
 La Primavera     | Sabagua              | Pamplona     | Daniel             | Bonilla Duarte
 La Reserva       | El Escorial          | Pamplona     | ├ëdgar              | Burbano Arango
 El Nogal         | San Jos├® De Tonchala | Pamplona     | Mar├¡a              | Burbano Duarte
 La Divisa        | Cabecera Municipal   | Pamplona     | Mar├¡a              | Burbano Duarte
 San Luis         | El Totumo            | Pamplona     | Fernando           | Burbano Fl├│rez
 Villa Hermosa    | El Alizal            | Pamplona     | Jazm├¡n             | Burbano Jaimes
 Las Delicias     | Caima                | Pamplona     | ├ôscar              | Cabrera Bastidas
 El Porvenir      | El Palchal           | Pamplona     | Nubia              | Cabrera S├ínchez
 La Holanda       | Cabecera Municipal   | Pamplona     | Rodrigo Nelson     | Cabrera Villamizar
 El Silencio      | Santa Matilde        | Pamplona     | Iv├ín Jaime         | C├íceres Galvis
 El Array├ín       | Cunuba               | Pamplona     | Iv├ín Jaime         | C├íceres Galvis
 La Holanda       | El Palchal           | Pamplona     | Natalia            | C├íceres Salazar
 El Higuer├│n      | Jurado               | Pamplona     | Nubia Juliana      | Caicedo Medina
 La Cascada       | Fontib├│n             | Pamplona     | Luisa              | Caicedo Restrepo
 El Brillante     | Pe├▒as                | Pamplona     | Luisa              | Caicedo Restrepo
 La Milagrosa     | Cabecera Municipal   | Pamplona     | Gustavo            | Calder├│n Bedoya
 La Fortuna       | Lengua               | Pamplona     | Camilo Iv├ín        | Calder├│n Trujillo
 La Palma         | Iscaligua            | Pamplona     | Nubia              | C├írdenas Benavides
 El Cafetal       | Sabaneta Alta        | Pamplona     | Juli├ín             | C├írdenas Mora
 El Porvenir      | Iscaligua            | Pamplona     | Carmen             | C├írdenas Moreno
 La Primavera     | Tampanqueba          | Pamplona     | Carmen             | C├írdenas Moreno
 El Horizonte     | El Escorial          | Pamplona     | Carmen             | C├írdenas Moreno
 El Ed├®n          | Santa Matilde        | Pamplona     | Aura               | Cardona Barrera
 Las Acacias      | Cunuba               | Pamplona     | Mauricio Carlos    | Carrillo Jaimes
 La Gloria        | San Jos├® De Tonchala | Pamplona     | Efra├¡n Gustavo     | Carrillo Moreno
 La Milagrosa     | Jurado               | Pamplona     | Emilio             | Carrillo Perdomo
 El Mirador       | Fontib├│n             | Pamplona     | Aura               | Castillo Henao
 El Guayabo       | Caima                | Pamplona     | Francisco          | Castillo Henao
 La Caba├▒a        | Llano Castro         | Pamplona     | Aura               | Castillo Henao
 La Palma         | San Jos├® De Tonchala | Pamplona     | Carlos             | Castillo Torres
 Los Arrayanes    | Jurado               | Pamplona     | Carlos             | Castillo Torres
 El Guayabo       | El Rosal             | Pamplona     | Carlos             | Castillo Torres
 Santa Elena      | Garc├¡a               | Pamplona     | Carlos             | Castillo Torres
 El Porvenir      | La ÔöîPa               | Pamplona     | Gilberto           | Castillo Villamizar
 El Guayabo       | Navarro              | Pamplona     | Ricardo            | Castro Contreras
 Los Arrayanes    | El Palchal           | Pamplona     | Ricardo            | Castro Contreras
 La Palma         | Tampanqueba          | Pamplona     | Ricardo            | Castro Contreras
 La Argentina     | Sabaneta Baja        | Pamplona     | Mateo              | Castro Garc├¡a
 Cafetal Viejo    | Cunuba               | Pamplona     | Mercedes           | Chamorro Rangel
 El Guamo         | Fontib├│n             | Pamplona     | Liliana Luisa      | Chamorro V├®lez
 Santa B├írbara    | Pe├▒as                | Pamplona     | Nelson             | Chamorro Vera
 La Primavera     | San Jos├® De Tonchala | Pamplona     | Arturo             | Contreras Pe├▒a
 El Guayabo       | El Totumo            | Pamplona     | Miguel             | Correa Caicedo
 Cafetal Viejo    | Caima                | Pamplona     | ├ülvaro             | Correa R├¡os
 La Caba├▒a        | La ÔöîPa               | Pamplona     | Jaime Santiago     | Cu├®llar C├íceres
 El Mirador       | El Palchal           | Pamplona     | Jaime Santiago     | Cu├®llar C├íceres
 Las Orqu├¡deas    | Fontib├│n             | Pamplona     | Heriberto Andr├®s   | Cu├®llar Romero
 Los Arrayanes    | Alto Grande          | Pamplona     | Heriberto Andr├®s   | Cu├®llar Romero
 El Mango         | La ÔöîPa               | Pamplona     | Heriberto Andr├®s   | Cu├®llar Romero
 Mi Ranchito      | Iscaligua            | Pamplona     | Juli├ín Germ├ín      | Delgado Villamizar
 Monte Alto       | La Legua             | Pamplona     | Fabio              | D├¡az Cu├®llar
 El Oasis         | Fontib├│n             | Pamplona     | In├®s Luc├¡a         | D├¡az Cu├®llar
 Cafetal Viejo    | Lengua               | Pamplona     | Diana              | D├¡az Medina
 Bellavista       | Pe├▒as                | Pamplona     | Alejandra          | D├¡az Perdomo
 La Palma         | Santa Matilde        | Pamplona     | Wilson Yeison      | D├¡az Ram├¡rez
 Santa Clara      | Lengua               | Pamplona     | Ricardo Felipe     | D├¡az Rodr├¡guez
 Las Orqu├¡deas    | Sabaneta Baja        | Pamplona     | Antonio            | D├¡az V├®lez
 Las Mercedes     | Llano Castro         | Pamplona     | Antonio            | D├¡az V├®lez
 La Ceiba         | San Francisco        | Pamplona     | Amparo             | Duarte Duque
 San Antonio      | Iscaligua            | Pamplona     | Viviana            | Duque Burbano
 La Loma          | Navarro              | Pamplona     | In├®s               | Duque C├írdenas
 El Guamo         | Fontib├│n             | Pamplona     | In├®s               | Duque C├írdenas
 El Vergel        | Sabagua              | Pamplona     | Miguel             | Duque Giraldo
 El Rosal         | Cabecera Municipal   | Pamplona     | Daniel H├®ctor      | Duque Ruiz
 Monteverde       | Tampanqueba          | Pamplona     | Daniel H├®ctor      | Duque Ruiz
 Monte Alto       | Alcaparral           | Pamplona     | In├®s               | Erazo Hern├índez
 Las Palmas       | El Alizal            | Pamplona     | Myriam             | Fl├│rez Gonz├ílez
 El Ed├®n          | Cabecera Municipal   | Pamplona     | Myriam             | Fl├│rez Gonz├ílez
 La Ceiba         | Llano Castro         | Pamplona     | Myriam             | Fl├│rez Gonz├ílez
 Los Alpes        | La Legua             | Pamplona     | Myriam             | Fl├│rez Gonz├ílez
 La Floresta      | San Jos├® De Tonchala | Pamplona     | M├│nica Claudia     | Fl├│rez Gonz├ílez
 La Milagrosa     | El Alizal            | Pamplona     | Mauricio Luis      | Fl├│rez Romero
 Santa Clara      | Cunuba               | Pamplona     | Fernando           | Galvis Duarte
 El Horizonte     | Pe├▒as                | Pamplona     | Fernando           | Galvis Duarte
 San Antonio      | Monteadentro         | Pamplona     | Fernando           | Galvis Duarte
 La Esperanza     | El Rosal             | Pamplona     | Fernando           | Galvis Duarte
 El Guayabo       | Tampanqueba          | Pamplona     | Jaime              | Garc├¡a R├¡os
 El Para├¡so       | Navarro              | Pamplona     | Liliana Gladys     | Garc├¡a Vargas
 Altamira         | Sabaneta Alta        | Pamplona     | Martha             | Giraldo Arango
 San Luis         | Sabaneta Alta        | Pamplona     | Martha             | Giraldo Arango
 La Palma         | Sabagua              | Pamplona     | Iv├ín               | Giraldo Cabrera
 El Mes├│n         | Llano Castro         | Pamplona     | Abelardo           | Giraldo Tovar
 El Manantial     | Santa Matilde        | Pamplona     | Jaime              | G├│mez Villamizar
 El Cedro         | Llano Castro         | Pamplona     | Viviana            | Gonz├ílez Molina
 Las Brisas       | Tampanqueba          | Pamplona     | Viviana            | Gonz├ílez Molina
 La Granja        | Alcaparral           | Pamplona     | Viviana            | Gonz├ílez Molina
 El Jard├¡n        | Cabecera Municipal   | Pamplona     | Viviana            | Gonz├ílez Molina
 El Guayabo       | San Francisco        | Pamplona     | Nicol├ís            | Gonz├ílez Rodr├¡guez
 La Palma         | Cunuba               | Pamplona     | Javier             | Gonz├ílez Zuluaga
 La Estrella      | Llano Castro         | Pamplona     | Daniela            | Guerrero Gonz├ílez
 La Uni├│n         | Llano Castro         | Pamplona     | Gloria             | Guti├®rrez Cardona
 Villa Hermosa    | El Rosal             | Pamplona     | Mateo              | Henao Carrillo
 Villa Hermosa    | La Legua             | Pamplona     | Sandra             | Henao Jaimes
 San Luis         | Tampanqueba          | Pamplona     | Pedro Reinaldo     | Henao Molina
 La Cristalina    | El Escorial          | Pamplona     | Nubia Natalia      | Henao Ram├¡rez
 La Carolina      | Llano Castro         | Pamplona     | Nubia Natalia      | Henao Ram├¡rez
 Cafetal Viejo    | San Jos├® De Tonchala | Pamplona     | Dora               | Hern├índez Correa
 La Quebrada      | El Alizal            | Pamplona     | Fabio              | Hern├índez Lasso
 El Higuer├│n      | Caima                | Pamplona     | Arturo             | Hern├índez Uribe
 Bella Vista Alta | El Rosal             | Pamplona     | Arturo             | Hern├índez Uribe
 La Uni├│n         | La Legua             | Pamplona     | Roc├¡o Juliana      | Herrera Tovar
 Los Alpes        | Santa Matilde        | Pamplona     | Cristian           | Herrera Zuluaga
 El Porvenir      | La ÔöîPa               | Pamplona     | Gustavo            | Ibarra Agudelo
 Las Margaritas   | Garc├¡a               | Pamplona     | H├®ctor             | Ibarra ├ülvarez
 El Nogal         | Alto Grande          | Pamplona     | Teresa             | Ibarra Caicedo
 El Diamante      | El Escorial          | Pamplona     | Luz Martha         | Jaimes Berm├║dez
 El Silencio      | Sabaneta Alta        | Pamplona     | Roc├¡o Manuela      | Jaimes Cardona
 El Array├ín       | Iscaligua            | Pamplona     | Roc├¡o Manuela      | Jaimes Cardona
 Las Mercedes     | San Francisco        | Pamplona     | Aura               | Jaimes Carrillo
 La Divisa        | San Francisco        | Pamplona     | David              | Jaimes Ruiz
 El Nogal         | Tampanqueba          | Pamplona     | David              | Jaimes Ruiz
 La Milagrosa     | Cabecera Municipal   | Pamplona     | David              | Jaimes Ruiz
 La Victoria      | La ÔöîPa               | Pamplona     | Luis               | Jaimes Salazar
 Bella Vista Alta | Sabaneta Baja        | Pamplona     | Heriberto          | Jim├®nez C├íceres
 El Recuerdo      | Monteadentro         | Pamplona     | In├®s               | Jim├®nez Jaimes
 El Silencio      | Sabagua              | Pamplona     | Hugo               | Jim├®nez Parra
 La Selva         | Garc├¡a               | Pamplona     | Alba               | Jim├®nez P├®rez
 La Monta├▒a       | Pe├▒as                | Pamplona     | Hernando Miguel    | Jim├®nez Restrepo
 Las Acacias      | Fontib├│n             | Pamplona     | Libardo            | Lasso Serrano
 El Triunfo       | El Escorial          | Pamplona     | Libardo            | Lasso Serrano
 La Argentina     | Fontib├│n             | Pamplona     | Libardo            | Lasso Serrano
 Santa Clara      | El Totumo            | Pamplona     | Mario              | Londo├▒o Tovar
 El Cedro         | La ÔöîPa               | Pamplona     | Sara               | Losada Guti├®rrez
 La Selva         | Sabagua              | Pamplona     | Sara               | Losada Guti├®rrez
 La Granja        | El Palchal           | Pamplona     | Sara               | Losada Guti├®rrez
 El Jard├¡n        | Cunuba               | Pamplona     | Sara               | Losada Guti├®rrez
 Los Pinos        | Alcaparral           | Pamplona     | Marcela            | Losada Rivera
 El Silencio      | Jurado               | Pamplona     | Daniela            | Lozano Castro
 La Victoria      | El Escorial          | Pamplona     | Daniela            | Lozano Castro
 Tierra Linda     | El Palchal           | Pamplona     | Juliana            | Lozano Perdomo
 El Bosque        | Sabaneta Baja        | Pamplona     | Diana              | Lozano Rinc├│n
 La Isabela       | Monteadentro         | Pamplona     | Diana              | Lozano Rinc├│n
 Bellavista       | San Jos├® De Tonchala | Pamplona     | Elsa               | Mar├¡n Henao
 La Aurora        | Jurado               | Pamplona     | Jaime              | Mar├¡n Hern├índez
 La Gaitana       | Sabagua              | Pamplona     | Stella             | Mar├¡n Osorio
 La Esperanza     | El Palchal           | Pamplona     | Gloria             | Mar├¡n Rivera
 Buenavista       | El Alizal            | Pamplona     | Sof├¡a              | Mar├¡n Rojas
 Las Margaritas   | El Palchal           | Pamplona     | Gustavo            | Mar├¡n Sandoval
 La Reserva       | Sabagua              | Pamplona     | Gustavo            | Mar├¡n Sandoval
 El Nogal         | Tampanqueba          | Pamplona     | Gustavo            | Mar├¡n Sandoval
 Cafetal Viejo    | Navarro              | Pamplona     | Efra├¡n             | Mart├¡nez Ramos
 La Cascada       | Caima                | Pamplona     | Yeison             | Medina Londo├▒o
 Los Pinos        | Alto Grande          | Pamplona     | Juliana Ana        | Mej├¡a Mej├¡a
 El Encanto       | Cunuba               | Pamplona     | Mateo              | Mej├¡a Mora
 Agua Bonita      | Iscaligua            | Pamplona     | Yuliana Jazm├¡n     | Mej├¡a Rangel
 Las Brisas       | Alto Grande          | Pamplona     | Paola Olga         | Mej├¡a Rinc├│n
 La Cumbre        | Jurado               | Pamplona     | Juli├ín             | Mej├¡a Torres
 El Encanto       | San Jos├® De Tonchala | Pamplona     | Elsa               | Mej├¡a Vera
 El Diamante      | San Jos├® De Tonchala | Pamplona     | M├│nica Martha      | Molina Molina
 El Bosque        | Sabaneta Alta        | Pamplona     | Diana Isabella     | Molina Moreno
 La Isabela       | Garc├¡a               | Pamplona     | Diana Isabella     | Molina Moreno
 El Recuerdo      | Alto Grande          | Pamplona     | Jairo              | Molina Pab├│n
 Villa Rosa       | San Jos├® De Tonchala | Pamplona     | Alejandra          | Molina Torres
 El Encanto       | San Jos├® De Tonchala | Pamplona     | Hernando           | Montoya Agudelo
 El Tesoro        | San Francisco        | Pamplona     | Luisa              | Montoya Mej├¡a
 La Aurora        | La ÔöîPa               | Pamplona     | Luisa              | Montoya Mej├¡a
 Las Mercedes     | San Francisco        | Pamplona     | Wilmer             | Montoya Rodr├¡guez
 El Mango         | Cabecera Municipal   | Pamplona     | Wilmer             | Montoya Rodr├¡guez
 El Guayabo       | Sabaneta Baja        | Pamplona     | Fanny              | Montoya Valencia
 Los Laureles     | El Alizal            | Pamplona     | Valentina          | Mora Rangel
 Tierra Linda     | La Legua             | Pamplona     | Valentina          | Mora Rangel
 Bellavista       | Cunuba               | Pamplona     | Valentina          | Mora Rangel
 San Jos├®         | Alcaparral           | Pamplona     | Valentina          | Mora Rangel
 La Siberia       | Sabaneta Baja        | Pamplona     | Gustavo            | Mosquera L├│pez
 El Higuer├│n      | La ÔöîPa               | Pamplona     | Gustavo            | Mosquera L├│pez
 El Placer        | Monteadentro         | Pamplona     | Alejandra Andrea   | Mosquera Moreno
 Las Palmas       | La Legua             | Pamplona     | Adriana            | Mosquera Ospina
 El Vergel        | Cabecera Municipal   | Pamplona     | Adriana            | Mosquera Ospina
 El Refugio       | Alto Grande          | Pamplona     | Luis               | Mosquera Perdomo
 Bella Vista Alta | Alto Grande          | Pamplona     | Luis               | Mosquera Perdomo
 San Rafael       | San Jos├® De Tonchala | Pamplona     | Isabella           | Mosquera Sandoval
 El Brillante     | La Legua             | Pamplona     | Isabella           | Mosquera Sandoval
 Los Guaduales    | Sabaneta Alta        | Pamplona     | Isabella           | Mosquera Sandoval
 Los Alpes        | Tampanqueba          | Pamplona     | Alejandro          | Mu├▒oz Polan├¡a
 Las Margaritas   | Fontib├│n             | Pamplona     | Manuel             | Narv├íez Calder├│n
 El Danubio       | Garc├¡a               | Pamplona     | Alejandro          | Narv├íez Polan├¡a
 Santa Clara      | La Legua             | Pamplona     | Luz                | Ni├▒o Guerrero
 La Floresta      | Pe├▒as                | Pamplona     | Diego              | Ni├▒o Hern├índez
 Buenavista       | Alcaparral           | Pamplona     | Diego              | Ni├▒o Hern├índez
 El Guamo         | El Escorial          | Pamplona     | Gabriela Carolina  | Ni├▒o Ortiz
 La Loma          | Alto Grande          | Pamplona     | Gabriela Carolina  | Ni├▒o Ortiz
 La Milagrosa     | El Palchal           | Pamplona     | Efra├¡n             | Ortega Correa
 El Porvenir      | El Escorial          | Pamplona     | Sandra             | Ortega Garc├¡a
 La Primavera     | Caima                | Pamplona     | Sandra             | Ortega Garc├¡a
 San Antonio      | La Legua             | Pamplona     | Sof├¡a Claudia      | Ortega Ortiz
 El Refugio       | Pe├▒as                | Pamplona     | Juliana            | Ortega Osorio
 Bellavista       | Sabagua              | Pamplona     | Roc├¡o Alba         | Ortega Serrano
 El Encanto       | Cunuba               | Pamplona     | Roc├¡o Alba         | Ortega Serrano
 San Jos├®         | Tampanqueba          | Pamplona     | Roc├¡o Alba         | Ortega Serrano
 La Loma          | Sabagua              | Pamplona     | Juan               | Ortega Zapata
 El Refugio       | Sabaneta Baja        | Pamplona     | Alejandra          | Ortiz Berm├║dez
 Monteverde       | El Totumo            | Pamplona     | Wilmer             | Ortiz Betancur
 El Recreo        | Caima                | Pamplona     | Alberto            | Ortiz Lasso
 La Palma         | El Escorial          | Pamplona     | Mariana            | Ortiz Ruiz
 La Uni├│n         | La Legua             | Pamplona     | Jaime Wilmer       | Ortiz Vargas
 San Jos├®         | Santa Matilde        | Pamplona     | Luz                | Osorio Cu├®llar
 Las Mercedes     | Navarro              | Pamplona     | Natalia            | Ospina Burbano
 La Esperanza     | Monteadentro         | Pamplona     | ├ôscar              | Ospina Gonz├ílez
 Villa Hermosa    | El Totumo            | Pamplona     | Wilson             | Parra Prada
 La Pradera       | Sabagua              | Pamplona     | Ramiro             | Parra Trujillo
 Las Delicias     | El Alizal            | Pamplona     | Ramiro             | Parra Trujillo
 El Recuerdo      | Sabaneta Baja        | Pamplona     | Mauricio           | Pe├▒a Bastidas
 Los Arrayanes    | Cabecera Municipal   | Pamplona     | Juli├ín             | Pe├▒a Betancur
 Agua Bonita      | Garc├¡a               | Pamplona     | Mauricio           | Perdomo Cabrera
 Mi Ranchito      | El Alizal            | Pamplona     | David              | Perdomo Mosquera
 Tierra Linda     | Tampanqueba          | Pamplona     | Abelardo           | P├®rez Castro
 Los Laureles     | San Jos├® De Tonchala | Pamplona     | Abelardo           | P├®rez Castro
 San Jos├®         | Iscaligua            | Pamplona     | Abelardo           | P├®rez Castro
 El Refugio       | Fontib├│n             | Pamplona     | Wilmer             | P├®rez Chamorro
 El Cedro         | Iscaligua            | Pamplona     | Martha Carolina    | P├®rez Jaimes
 Villa Hermosa    | El Escorial          | Pamplona     | Liliana            | P├®rez Parra
 El Retiro        | El Totumo            | Pamplona     | Guillermo          | P├®rez P├®rez
 El Tesoro        | Pe├▒as                | Pamplona     | Roc├¡o Mariana      | P├®rez Rodr├¡guez
 La Divisa        | El Totumo            | Pamplona     | Abelardo           | Pinz├│n Bonilla
 Monteverde       | El Alizal            | Pamplona     | Efra├¡n             | Pinz├│n Cabrera
 La Loma          | Jurado               | Pamplona     | Javier             | Pinz├│n Jim├®nez
 Los Arrayanes    | Navarro              | Pamplona     | Anc├¡zar Cristian   | Polan├¡a Delgado
 El Silencio      | Iscaligua            | Pamplona     | Rafael             | Prada Moreno
 Miraflores       | Alcaparral           | Pamplona     | Mauricio           | Prada Villamizar
 Villa Rosa       | El Alizal            | Pamplona     | Manuel             | Quintero Arias
 El Tesoro        | El Alizal            | Pamplona     | Pedro              | Ram├¡rez Barrera
 La Aurora        | Llano Castro         | Pamplona     | Pedro              | Ram├¡rez Barrera
 La Carolina      | Tampanqueba          | Pamplona     | Luis               | Ram├¡rez Cardona
 La Soledad       | El Alizal            | Pamplona     | M├│nica Elsa        | Ram├¡rez Castro
 La Quebrada      | El Totumo            | Pamplona     | M├│nica Elsa        | Ram├¡rez Castro
 La Reserva       | Garc├¡a               | Pamplona     | Francisco          | Ram├¡rez Sandoval
 El Nogal         | El Totumo            | Pamplona     | Francisco          | Ram├¡rez Sandoval
 El Bosque        | Tampanqueba          | Pamplona     | Rub├®n              | Ramos Chamorro
 El Mes├│n         | Navarro              | Pamplona     | Francisco          | Restrepo Perdomo
 Las Margaritas   | Llano Castro         | Pamplona     | Mateo              | Restrepo Su├írez
 La Argentina     | San Jos├® De Tonchala | Pamplona     | Gloria             | Rinc├│n Acevedo
 La Granja        | La Legua             | Pamplona     | Miguel             | Rinc├│n Agudelo
 El Oasis         | El Alizal            | Pamplona     | Yesenia            | Rinc├│n Caicedo
 El Brillante     | Navarro              | Pamplona     | Alba               | Rinc├│n Rojas
 El Recreo        | Cunuba               | Pamplona     | Rafael Francisco   | Rinc├│n Romero
 El Jard├¡n        | Pe├▒as                | Pamplona     | Mario              | Rinc├│n Su├írez
 El Horizonte     | Tampanqueba          | Pamplona     | Rosa               | R├¡os C├írdenas
 Villa Rosa       | Pe├▒as                | Pamplona     | Mario              | R├¡os Ibarra
 Las Palmas       | Alto Grande          | Pamplona     | Felipe Camilo      | R├¡os Ospina
 El Vergel        | Santa Matilde        | Pamplona     | Felipe Camilo      | R├¡os Ospina
 La Caba├▒a        | Santa Matilde        | Pamplona     | Alba               | R├¡os Rodr├¡guez
 El Mirador       | San Francisco        | Pamplona     | Alba               | R├¡os Rodr├¡guez
 La Holanda       | Caima                | Pamplona     | Erika              | R├¡os Su├írez
 La Cascada       | Lengua               | Pamplona     | Gloria Aura        | R├¡os Vera
 San Antonio      | Jurado               | Pamplona     | Edilma             | Rivera Rivera
 La Monta├▒a       | Monteadentro         | Pamplona     | ├ôscar              | Rivera Tovar
 Tierra Linda     | Lengua               | Pamplona     | Gabriela           | Rodr├¡guez Ortega
 El Horizonte     | La ÔöîPa               | Pamplona     | Ruth               | Rodr├¡guez P├®rez
 El Higuer├│n      | Tampanqueba          | Pamplona     | Yuliana            | Rodr├¡guez Vargas
 La Siberia       | Garc├¡a               | Pamplona     | Yuliana            | Rodr├¡guez Vargas
 La Fortuna       | El Palchal           | Pamplona     | Fernando           | Rojas C├írdenas
 Los Guaduales    | Santa Matilde        | Pamplona     | Patricia Amparo    | Rojas R├¡os
 San Rafael       | Tampanqueba          | Pamplona     | Patricia Amparo    | Rojas R├¡os
 El Brillante     | Jurado               | Pamplona     | Patricia Amparo    | Rojas R├¡os
 Cafetal Viejo    | La Legua             | Pamplona     | Luz                | Rojas Torres
 Villa Hermosa    | Pe├▒as                | Pamplona     | Mar├¡a              | Rojas Villamizar
 Los Arrayanes    | Iscaligua            | Pamplona     | Reinaldo           | Romero Agudelo
 Las Orqu├¡deas    | Caima                | Pamplona     | Reinaldo           | Romero Agudelo
 El Guayabo       | Alto Grande          | Pamplona     | Reinaldo           | Romero Agudelo
 La Florida       | Pe├▒as                | Pamplona     | Esperanza          | Romero Betancur
 La Palma         | Garc├¡a               | Pamplona     | David Germ├ín       | Romero Bonilla
 La Quebrada      | Monteadentro         | Pamplona     | Jairo              | Romero Guti├®rrez
 El Recreo        | La Legua             | Pamplona     | Gustavo Pedro      | Romero Pinz├│n
 La Caba├▒a        | Sabagua              | Pamplona     | Rafael             | Romero Prada
 El Diamante      | Tampanqueba          | Pamplona     | Orlando            | Salazar Berm├║dez
 El Ed├®n          | Alto Grande          | Pamplona     | Alberto            | Salazar Pab├│n
 Las Acacias      | El Alizal            | Pamplona     | Esteban            | Salazar Parra
 El Placer        | Tampanqueba          | Pamplona     | Fernando           | S├ínchez Agudelo
 El Cedro         | La Legua             | Pamplona     | Reinaldo Jorge     | S├ínchez Agudelo
 La Cumbre        | Sabagua              | Pamplona     | Sara               | S├ínchez Arango
 El Diamante      | Monteadentro         | Pamplona     | Camila             | S├ínchez Pinz├│n
 El Para├¡so       | El Palchal           | Pamplona     | Camila             | S├ínchez Pinz├│n
 La Aurora        | El Palchal           | Pamplona     | Wilmer             | S├ínchez Torres
 La Granja        | Iscaligua            | Pamplona     | Yuliana            | Sandoval Bedoya
 La Floresta      | Pe├▒as                | Pamplona     | Dora               | Sandoval Garc├¡a
 Las Delicias     | El Totumo            | Pamplona     | Sandra             | Sandoval Ortega
 El Nogal         | Garc├¡a               | Pamplona     | Myriam             | Sandoval Osorio
 La Granja        | Garc├¡a               | Pamplona     | Andrea             | Serrano Mosquera
 El Retiro        | Sabaneta Alta        | Pamplona     | Yesenia            | Silva Henao
 El Encanto       | Garc├¡a               | Pamplona     | An├¡bal             | Silva Villamizar
 Bellavista       | Alto Grande          | Pamplona     | An├¡bal             | Silva Villamizar
 La Caba├▒a        | Cunuba               | Pamplona     | Juli├ín Juan        | Su├írez Rivera
 La Isabela       | Cunuba               | Pamplona     | Fanny Nubia        | Su├írez Rojas
 La Gaitana       | Cunuba               | Pamplona     | Gustavo Heriberto  | Torres Guerrero
 El Recuerdo      | El Escorial          | Pamplona     | Gustavo Heriberto  | Torres Guerrero
 El Tesoro        | Llano Castro         | Pamplona     | Aura               | Torres Ortega
 Las Palmas       | El Rosal             | Pamplona     | Gloria             | Tovar Benavides
 La Cumbre        | Cabecera Municipal   | Pamplona     | Arturo             | Tovar Calder├│n
 Santa B├írbara    | Caima                | Pamplona     | Arturo             | Tovar Calder├│n
 El Diamante      | Tampanqueba          | Pamplona     | Libardo            | Trujillo Torres
 El Cedro         | La Legua             | Pamplona     | Pedro              | Trujillo V├®lez
 El Recuerdo      | Caima                | Pamplona     | Dora Luc├¡a         | Uribe Arango
 El Porvenir      | Fontib├│n             | Pamplona     | Mario              | Uribe Cu├®llar
 La Argentina     | El Escorial          | Pamplona     | Nelson             | Uribe Gonz├ílez
 La Milagrosa     | Lengua               | Pamplona     | Elsa Leidy         | Uribe Uribe
 El Array├ín       | Tampanqueba          | Pamplona     | Nelson Samuel      | Valencia Herrera
 El Guayabo       | Sabaneta Baja        | Pamplona     | Myriam             | Valencia Moreno
 Los Arrayanes    | La ÔöîPa               | Pamplona     | Myriam             | Valencia Moreno
 La Palma         | Cunuba               | Pamplona     | Myriam             | Valencia Moreno
 La Floresta      | Alcaparral           | Pamplona     | Teresa Adriana     | Valencia Moreno
 El Silencio      | San Francisco        | Pamplona     | Juli├ín Guillermo   | Valencia Narv├íez
 La Siberia       | Monteadentro         | Pamplona     | Esperanza          | Valencia Ortiz
 El Refugio       | Monteadentro         | Pamplona     | Esperanza          | Valencia Ortiz
 Tierra Linda     | Iscaligua            | Pamplona     | ├ülvaro             | Valencia Rivera
 Los Laureles     | Pe├▒as                | Pamplona     | ├ülvaro             | Valencia Rivera
 La Estrella      | Garc├¡a               | Pamplona     | Alba               | Vargas Losada
 Bella Vista Alta | Sabaneta Baja        | Pamplona     | Yeison             | Vargas Perdomo
 San Rafael       | El Totumo            | Pamplona     | Rosa               | V├®lez Contreras
 El Caney         | Alto Grande          | Pamplona     | Germ├ín Rafael      | V├®lez Herrera
 Los Laureles     | Lengua               | Pamplona     | Erika              | V├®lez Mar├¡n
 Los Guaduales    | El Palchal           | Pamplona     | Alba               | Vera Calder├│n
 El Danubio       | Tampanqueba          | Pamplona     | Carlos Mario       | Villamizar Carrillo
 Los Pinos        | Sabaneta Alta        | Pamplona     | Miguel             | Villamizar Correa
 Altamira         | El Alizal            | Pamplona     | Rub├®n              | Villamizar Mej├¡a
 Las Acacias      | Jurado               | Pamplona     | David              | Zapata Arias
 El Triunfo       | Cabecera Municipal   | Pamplona     | David              | Zapata Arias
 La Argentina     | Pe├▒as                | Pamplona     | David              | Zapata Arias
 La Gaitana       | La ÔöîPa               | Pamplona     | David              | Zapata Arias
 El Mes├│n         | Iscaligua            | Pamplona     | Iv├ín               | Zapata Ortiz
 Villa Hermosa    | Cunuba               | Pamplona     | Valentina          | Zapata Valencia
 El Bosque        | Llano Castro         | Pamplona     | Laura              | Zuluaga Benavides
 El Tesoro        | Fontib├│n             | Pamplona     | Ramiro             | Zuluaga Duque
(368 filas)
/*



