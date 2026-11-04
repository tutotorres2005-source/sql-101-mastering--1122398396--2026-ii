
-- Exercise 02 -a
-- Farmers of municipality 54518 with their farms, including those without a farm

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T2.farm_name AS farm
FROM farm.farmers AS T1
LEFT JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
WHERE T1.municipality_code = '54518'
ORDER BY T1.last_name ASC;

/*
  document  |    first_name     |     last_name      |       farm
------------+-------------------+--------------------+------------------
 230971064  | Manuel            | Agudelo Jim├®nez    | La Selva
 230971064  | Manuel            | Agudelo Jim├®nez    | El Jard├¡n
 230971064  | Manuel            | Agudelo Jim├®nez    | Las Acacias
 768461420  | Marleny           | Agudelo Sandoval   | El Para├¡so
 768461420  | Marleny           | Agudelo Sandoval   | El Diamante
 931079279  | Edilma            | ├ülvarez Bonilla    | El Triunfo
 931079279  | Edilma            | ├ülvarez Bonilla    | La Argentina
 463842401  | Roc├¡o             | ├ülvarez C├írdenas   | La Cumbre
 463842401  | Roc├¡o             | ├ülvarez C├írdenas   | Bellavista
 463842401  | Roc├¡o             | ├ülvarez C├írdenas   | El Encanto
 788628125  | M├│nica            | ├ülvarez Carrillo   | Monteverde
 788628125  | M├│nica            | ├ülvarez Carrillo   | La Caba├▒a
 939635303  | Marleny           | ├ülvarez Correa     | El Array├ín
 939635303  | Marleny           | ├ülvarez Correa     | El Silencio
 939635303  | Marleny           | ├ülvarez Correa     | La Victoria
 14046794   | Alberto           | ├ülvarez Villamizar | El Mango
 1089620113 | Myriam Yuliana    | Arango Narv├íez     | Monteverde
 502796073  | Anc├¡zar           | Arango Silva       | El Recuerdo
 172555225  | Edilma Gabriela   | Arias ├ülvarez      | El Rosal
 172555225  | Edilma Gabriela   | Arias ├ülvarez      | Monteverde
 302223305  | Camilo            | Arias Mora         | Las Delicias
 550696749  | Viviana           | Arias Ram├¡rez      | La Quebrada
 550696749  | Viviana           | Arias Ram├¡rez      | La Soledad
 1061690671 | Guillermo Pedro   | Arias Rodr├¡guez    | La Selva
 797017145  | Isabella          | Barrera Cabrera    | San Luis
 659942505  | Mariana           | Barrera Correa     | La Siberia
 483692716  | Ramiro            | Barrera Villamizar | El Oasis
 1103932523 | Amparo            | Bastidas Chamorro  | El Cafetal
 1027436085 | Manuela           | Bastidas Medina    | Agua Bonita
 407150767  | Antonio           | Bastidas Rodr├¡guez | Monteverde
 734158943  | Alberto           | Bastidas Rodr├¡guez | San Jos├®
 649244180  | Roc├¡o             | Bastidas Su├írez    | El Triunfo
 649244180  | Roc├¡o             | Bastidas Su├írez    | La Argentina
 718906996  | Nelson            | Bedoya V├®lez       | Las Margaritas
 718906996  | Nelson            | Bedoya V├®lez       | La Reserva
 21358854   | Manuela Yolanda   | Benavides Delgado  | La Argentina
 1185360305 | Iv├ín              | Berm├║dez Fl├│rez    | El Oasis
 737383707  | Yesenia           | Berm├║dez Henao     | La Fortuna
 737383707  | Yesenia           | Berm├║dez Henao     | Los Naranjos
 737383707  | Yesenia           | Berm├║dez Henao     | El Diamante
 866702579  | ├ülvaro            | Berm├║dez Mar├¡n     | Los Naranjos
 866702579  | ├ülvaro            | Berm├║dez Mar├¡n     | La Victoria
 866702579  | ├ülvaro            | Berm├║dez Mar├¡n     | El Retiro
 45024299   | Rodrigo Guillermo | Berm├║dez Mu├▒oz     | Las Palmas
 517430119  | Emilio            | Berm├║dez Rojas     | Santa Clara
 1015411133 | Santiago          | Berm├║dez Ruiz      | La Caba├▒a
 91091638   | Daniel            | Bonilla Duarte     | La Primavera
 91091638   | Daniel            | Bonilla Duarte     | La Esperanza
 91091638   | Daniel            | Bonilla Duarte     | El Horizonte
 141613744  | ├ëdgar             | Burbano Arango     | La Reserva
 549054771  | Mar├¡a             | Burbano Duarte     | El Nogal
 549054771  | Mar├¡a             | Burbano Duarte     | La Divisa
 1196615388 | Fernando          | Burbano Fl├│rez     | San Luis
 1196615388 | Fernando          | Burbano Fl├│rez     | Altamira
 436957556  | Jazm├¡n            | Burbano Jaimes     | Villa Hermosa
 436957556  | Jazm├¡n            | Burbano Jaimes     | Santa B├írbara
 56877324   | Javier            | Burbano Molina     | El Jard├¡n
 223974138  | Rodrigo Nelson    | Cabrera Villamizar | La Holanda
 1196659084 | Iv├ín Jaime        | C├íceres Galvis     | El Array├ín
 1196659084 | Iv├ín Jaime        | C├íceres Galvis     | El Silencio
 918053770  | Nubia Juliana     | Caicedo Medina     | El Higuer├│n
 356207226  | Luisa             | Caicedo Restrepo   | La Cascada
 356207226  | Luisa             | Caicedo Restrepo   | El Brillante
 788902052  | Camilo Iv├ín       | Calder├│n Trujillo  | La Fortuna
 358946393  | Carmen            | C├írdenas Moreno    | La Esperanza
 358946393  | Carmen            | C├írdenas Moreno    | La Primavera
 358946393  | Carmen            | C├írdenas Moreno    | El Horizonte
 358946393  | Carmen            | C├írdenas Moreno    | El Porvenir
 756369749  | Andrea            | Cardona Ruiz       | Monte Alto
 716388403  | Emilio            | Carrillo Perdomo   | La Gloria
 716388403  | Emilio            | Carrillo Perdomo   | La Milagrosa
 65169775   | Aura              | Castillo Henao     | La Caba├▒a
 65169775   | Aura              | Castillo Henao     | El Mirador
 279649109  | Carlos            | Castillo Torres    | Santa Elena
 279649109  | Carlos            | Castillo Torres    | El Guayabo
 279649109  | Carlos            | Castillo Torres    | La Palma
 279649109  | Carlos            | Castillo Torres    | Los Arrayanes
 166716892  | Ricardo           | Castro Contreras   | El Guayabo
 166716892  | Ricardo           | Castro Contreras   | La Palma
 166716892  | Ricardo           | Castro Contreras   | Los Arrayanes
 1001030458 | Liliana Luisa     | Chamorro V├®lez     | El Guamo
 1143372198 | Nelson            | Chamorro Vera      | Villa Hermosa
 1143372198 | Nelson            | Chamorro Vera      | Santa B├írbara
 789425487  | Efra├¡n Ricardo    | Contreras Ospina   | San Luis
 789425487  | Efra├¡n Ricardo    | Contreras Ospina   | Altamira
 637451261  | Arturo            | Contreras Pe├▒a     | La Primavera
 614786053  | ├ülvaro            | Correa R├¡os        | Cafetal Viejo
 1001674689 | Jaime Santiago    | Cu├®llar C├íceres    | El Mirador
 1001674689 | Jaime Santiago    | Cu├®llar C├íceres    | La Caba├▒a
 503402827  | Heriberto Andr├®s  | Cu├®llar Romero     | Las Orqu├¡deas
 503402827  | Heriberto Andr├®s  | Cu├®llar Romero     | Los Arrayanes
 503402827  | Heriberto Andr├®s  | Cu├®llar Romero     | El Mango
 749444168  | Emilio            | Delgado Molina     | La Quebrada
 1146928395 | Juli├ín Germ├ín     | Delgado Villamizar | Mi Ranchito
 697099528  | Fabio             | D├¡az Cu├®llar       | Monte Alto
 697099528  | Fabio             | D├¡az Cu├®llar       | La Uni├│n
 977130251  | In├®s Luc├¡a        | D├¡az Cu├®llar       | El Oasis
 1117597835 | Cecilia Lorena    | D├¡az Garc├¡a        | La Monta├▒a
 828628976  | Diana             | D├¡az Medina        | Cafetal Viejo
 951995464  | Wilson Yeison     | D├¡az Ram├¡rez       | La Palma
 802182926  | Antonio           | D├¡az V├®lez         | Las Mercedes
 802182926  | Antonio           | D├¡az V├®lez         | El Mango
 802182926  | Antonio           | D├¡az V├®lez         | Las Orqu├¡deas
 932437698  | Amparo            | Duarte Duque       | La Ceiba
 95544811   | In├®s              | Duque C├írdenas     | La Loma
 95544811   | In├®s              | Duque C├írdenas     | El Guamo
 846209158  | Daniel H├®ctor     | Duque Ruiz         | El Rosal
 846209158  | Daniel H├®ctor     | Duque Ruiz         | Monteverde
 522380895  | In├®s              | Erazo Hern├índez    | Monte Alto
 257495692  | Myriam            | Fl├│rez Gonz├ílez    | Los Alpes
 409306735  | M├│nica Claudia    | Fl├│rez Gonz├ílez    | La Floresta
 257495692  | Myriam            | Fl├│rez Gonz├ílez    | Las Palmas
 257495692  | Myriam            | Fl├│rez Gonz├ílez    | La Ceiba
 257495692  | Myriam            | Fl├│rez Gonz├ílez    | El Ed├®n
 374080696  | Fernando          | Galvis Duarte      | Santa Clara
 374080696  | Fernando          | Galvis Duarte      | San Antonio
 374080696  | Fernando          | Galvis Duarte      | La Esperanza
 374080696  | Fernando          | Galvis Duarte      | El Horizonte
 155695928  | Martha            | Giraldo Arango     | San Luis
 155695928  | Martha            | Giraldo Arango     | Altamira
 622024549  | Viviana           | Gonz├ílez Molina    | El Cedro
 622024549  | Viviana           | Gonz├ílez Molina    | El Jard├¡n
 622024549  | Viviana           | Gonz├ílez Molina    | Las Brisas
 622024549  | Viviana           | Gonz├ílez Molina    | La Granja
 811782754  | Nicol├ís           | Gonz├ílez Rodr├¡guez | El Guayabo
 1084721334 | Javier            | Gonz├ílez Zuluaga   | La Palma
 35147265   | Carlos            | Guti├®rrez Pab├│n    | Monteverde
 793512107  | Sandra            | Henao Jaimes       | Villa Hermosa
 316655568  | Nubia Natalia     | Henao Ram├¡rez      | La Cristalina
 316655568  | Nubia Natalia     | Henao Ram├¡rez      | La Carolina
 343256743  | Dora              | Hern├índez Correa   | Cafetal Viejo
 1148017860 | Fabio             | Hern├índez Lasso    | La Quebrada
 520313287  | Beatriz           | Hern├índez Mu├▒oz    | La Siberia
 974842644  | Arturo            | Hern├índez Uribe    | Bella Vista Alta
 974842644  | Arturo            | Hern├índez Uribe    | El Higuer├│n
 10424994   | Cristian          | Herrera Zuluaga    | Los Alpes
 525766302  | Gustavo           | Ibarra Agudelo     | La Monta├▒a
 525766302  | Gustavo           | Ibarra Agudelo     | El Porvenir
 1167705984 | Teresa            | Ibarra Caicedo     | El Nogal
 1185523747 | Elsa              | Ibarra Molina      | La Granja
 425322677  | Luz Martha        | Jaimes Berm├║dez    | El Diamante
 42562183   | Roc├¡o Manuela     | Jaimes Cardona     | El Silencio
 42562183   | Roc├¡o Manuela     | Jaimes Cardona     | El Array├ín
 644277425  | David             | Jaimes Ruiz        | El Nogal
 644277425  | David             | Jaimes Ruiz        | La Milagrosa
 644277425  | David             | Jaimes Ruiz        | La Divisa
 1052279913 | Luis              | Jaimes Salazar     | El Silencio
 1052279913 | Luis              | Jaimes Salazar     | La Victoria
 433286601  | Esperanza         | Jaimes Vera        | Miraflores
 433286601  | Esperanza         | Jaimes Vera        | La Loma
 89157555   | Heriberto         | Jim├®nez C├íceres    | Bella Vista Alta
 550093228  | Ruth              | Jim├®nez Guerrero   | Las Mercedes
 1148351420 | In├®s              | Jim├®nez Jaimes     | El Recuerdo
 1148351420 | In├®s              | Jim├®nez Jaimes     | La Gaitana
 860920785  | Hugo              | Jim├®nez Parra      | El Silencio
 434293037  | Hernando Miguel   | Jim├®nez Restrepo   | La Monta├▒a
 232229735  | Libardo           | Lasso Serrano      | El Triunfo
 232229735  | Libardo           | Lasso Serrano      | La Argentina
 232229735  | Libardo           | Lasso Serrano      | Las Acacias
 382766013  | Diana             | Londo├▒o Ramos      | Monteverde
 712758473  | Wilson            | L├│pez Villamizar   | El Silencio
 1157650796 | Sara              | Losada Guti├®rrez   | El Jard├¡n
 1157650796 | Sara              | Losada Guti├®rrez   | La Granja
 1157650796 | Sara              | Losada Guti├®rrez   | La Selva
 1157650796 | Sara              | Losada Guti├®rrez   | El Cedro
 530206966  | Daniela           | Lozano Castro      | La Victoria
 530206966  | Daniela           | Lozano Castro      | El Silencio
 456256773  | Luisa             | Lozano Losada      | La Victoria
 754524782  | Diana             | Lozano Rinc├│n      | El Bosque
 754524782  | Diana             | Lozano Rinc├│n      | La Isabela
 754524782  | Diana             | Lozano Rinc├│n      | El Vergel
 1145130870 | Elsa              | Mar├¡n Henao        | Bellavista
 131166207  | Jaime             | Mar├¡n Hern├índez    | La Aurora
 878614263  | Stella            | Mar├¡n Osorio       | La Gaitana
 727945493  | Gloria            | Mar├¡n Rivera       | La Esperanza
 102695503  | Sof├¡a             | Mar├¡n Rojas        | Buenavista
 934117740  | Gustavo           | Mar├¡n Sandoval     | El Nogal
 934117740  | Gustavo           | Mar├¡n Sandoval     | Las Margaritas
 934117740  | Gustavo           | Mar├¡n Sandoval     | La Reserva
 142439635  | Yeison            | Medina Londo├▒o     | La Cascada
 142439635  | Yeison            | Medina Londo├▒o     | El Brillante
 536338741  | Juliana Ana       | Mej├¡a Mej├¡a        | Los Pinos
 1167191036 | Yuliana Jazm├¡n    | Mej├¡a Rangel       | Agua Bonita
 554620706  | Nelson Samuel     | Mej├¡a Vera         | La Isabela
 1171130241 | Elsa              | Mej├¡a Vera         | El Encanto
 781810115  | Diana Isabella    | Molina Moreno      | El Bosque
 781810115  | Diana Isabella    | Molina Moreno      | La Isabela
 870240973  | Jairo             | Molina Pab├│n       | El Recuerdo
 622105662  | Alejandra         | Molina Torres      | Villa Rosa
 622105662  | Alejandra         | Molina Torres      | La Carolina
 622105662  | Alejandra         | Molina Torres      | La Cristalina
 824422301  | Hernando          | Montoya Agudelo    | El Encanto
 765371022  | Luisa             | Montoya Mej├¡a      | El Tesoro
 765371022  | Luisa             | Montoya Mej├¡a      | La Aurora
 299842243  | Wilmer            | Montoya Rodr├¡guez  | Las Orqu├¡deas
 299842243  | Wilmer            | Montoya Rodr├¡guez  | Las Mercedes
 299842243  | Wilmer            | Montoya Rodr├¡guez  | El Mango
 699387247  | Fanny             | Montoya Valencia   | El Guayabo
 455264704  | Valentina         | Mora Rangel        | Bellavista
 455264704  | Valentina         | Mora Rangel        | San Jos├®
 455264704  | Valentina         | Mora Rangel        | Tierra Linda
 455264704  | Valentina         | Mora Rangel        | Los Laureles
 283636187  | Gustavo           | Moreno L├│pez       | El Array├ín
 283636187  | Gustavo           | Moreno L├│pez       | El Silencio
 587550249  | Gustavo           | Mosquera L├│pez     | La Siberia
 587550249  | Gustavo           | Mosquera L├│pez     | El Higuer├│n
 970305595  | Alejandra Andrea  | Mosquera Moreno    | El Oasis
 970305595  | Alejandra Andrea  | Mosquera Moreno    | El Placer
 970305595  | Alejandra Andrea  | Mosquera Moreno    | La Estrella
 811557533  | Adriana           | Mosquera Ospina    | El Vergel
 811557533  | Adriana           | Mosquera Ospina    | Las Palmas
 963176673  | Luis              | Mosquera Perdomo   | El Refugio
 963176673  | Luis              | Mosquera Perdomo   | Bella Vista Alta
 1053774538 | Isabella          | Mosquera Sandoval  | San Rafael
 1053774538 | Isabella          | Mosquera Sandoval  | Los Guaduales
 1053774538 | Isabella          | Mosquera Sandoval  | El Brillante
 160538872  | Liliana           | Mosquera Uribe     | El Triunfo
 51802865   | Alejandro         | Narv├íez Polan├¡a    | El Danubio
 155634182  | Luz               | Ni├▒o Guerrero      | Santa Clara
 723123018  | Diego             | Ni├▒o Hern├índez     | Buenavista
 723123018  | Diego             | Ni├▒o Hern├índez     | La Floresta
 360667240  | Gabriela Carolina | Ni├▒o Ortiz         | El Guamo
 360667240  | Gabriela Carolina | Ni├▒o Ortiz         | La Loma
 641839251  | Efra├¡n            | Ortega Correa      | La Milagrosa
 968133883  | Sandra            | Ortega Garc├¡a      | La Primavera
 968133883  | Sandra            | Ortega Garc├¡a      | El Porvenir
 1177165427 | Juliana           | Ortega Osorio      | El Refugio
 361839624  | Roc├¡o Alba        | Ortega Serrano     | El Encanto
 361839624  | Roc├¡o Alba        | Ortega Serrano     | San Jos├®
 361839624  | Roc├¡o Alba        | Ortega Serrano     | Bellavista
 59388780   | Juan              | Ortega Zapata      | La Loma
 254078333  | Alberto           | Ortiz Lasso        | El Recreo
 1189704117 | Mariana           | Ortiz Ruiz         | La Palma
 406352604  | Jaime Wilmer      | Ortiz Vargas       | La Uni├│n
 783174188  | Luz               | Osorio Cu├®llar     | San Jos├®
 808693611  | Natalia           | Ospina Burbano     | Las Mercedes
 914235490  | ├ôscar             | Ospina Gonz├ílez    | La Esperanza
 966970818  | Gustavo           | Parra Ortiz        | La Cascada
 966970818  | Gustavo           | Parra Ortiz        | El Brillante
 546579335  | Wilson            | Parra Prada        | Villa Hermosa
 699883472  | Ramiro            | Parra Trujillo     | Las Delicias
 699883472  | Ramiro            | Parra Trujillo     | La Pradera
 728596637  | Mauricio          | Pe├▒a Bastidas      | El Recuerdo
 437443011  | Juli├ín            | Pe├▒a Betancur      | Los Arrayanes
 850962053  | David             | Perdomo Mosquera   | Mi Ranchito
 1135293825 | Abelardo          | P├®rez Castro       | Los Laureles
 1135293825 | Abelardo          | P├®rez Castro       | San Jos├®
 1135293825 | Abelardo          | P├®rez Castro       | Tierra Linda
 549847293  | Wilmer            | P├®rez Chamorro     | El Refugio
 1012324420 | Martha Carolina   | P├®rez Jaimes       | El Cedro
 1143295403 | Liliana           | P├®rez Parra        | Villa Hermosa
 677772599  | Guillermo         | P├®rez P├®rez        | El Retiro
 599185252  | Efra├¡n            | Pinz├│n Cabrera     | Monteverde
 571748382  | Marleny           | Pinz├│n Delgado     | El Silencio
 942530661  | Javier            | Pinz├│n Jim├®nez     | La Loma
 1060881964 | In├®s              | Polan├¡a Bedoya     | La Reserva
 914044314  | Anc├¡zar Cristian  | Polan├¡a Delgado    | Los Arrayanes
 765824560  | Manuel            | Quintero Arias     | Villa Rosa
 805029874  | Pedro             | Ram├¡rez Barrera    | El Tesoro
 805029874  | Pedro             | Ram├¡rez Barrera    | La Aurora
 529703819  | M├│nica Elsa       | Ram├¡rez Castro     | La Soledad
 529703819  | M├│nica Elsa       | Ram├¡rez Castro     | La Quebrada
 336247561  | Francisco         | Ram├¡rez Sandoval   | El Nogal
 336247561  | Francisco         | Ram├¡rez Sandoval   | La Reserva
 302345504  | Elsa              | Ramos C├írdenas     | La Caba├▒a
 33787285   | Rub├®n             | Ramos Chamorro     | El Bosque
 746737893  | Natalia           | Ramos Vargas       | El Oasis
 276159211  | Francisco         | Restrepo Perdomo   | El Mes├│n
 647948165  | Yesenia           | Rinc├│n Caicedo     | El Oasis
 94235991   | Rafael Francisco  | Rinc├│n Romero      | El Recreo
 91139207   | Mario             | Rinc├│n Su├írez      | El Jard├¡n
 91139207   | Mario             | Rinc├│n Su├írez      | La Selva
 290597798  | Rosa              | R├¡os C├írdenas      | El Horizonte
 92240743   | Mario             | R├¡os Ibarra        | Villa Rosa
 92240743   | Mario             | R├¡os Ibarra        | El Recreo
 1168119731 | Felipe Camilo     | R├¡os Ospina        | Las Palmas
 1168119731 | Felipe Camilo     | R├¡os Ospina        | El Vergel
 252140095  | Alba              | R├¡os Rodr├¡guez     | El Mirador
 252140095  | Alba              | R├¡os Rodr├¡guez     | La Caba├▒a
 273193028  | Erika             | R├¡os Su├írez        | La Holanda
 870262750  | Gloria Aura       | R├¡os Vera          | La Cascada
 478755763  | Nicol├ís           | Rivera Duque       | El Oasis
 135734682  | Diego             | Rivera Jim├®nez     | El Refugio
 135734682  | Diego             | Rivera Jim├®nez     | El Cafetal
 333176982  | Edilma            | Rivera Rivera      | San Antonio
 478787290  | ├ôscar             | Rivera Tovar       | La Monta├▒a
 137851877  | Gabriela          | Rodr├¡guez Ortega   | Tierra Linda
 1090968710 | Ruth              | Rodr├¡guez P├®rez    | El Horizonte
 548464915  | Yuliana           | Rodr├¡guez Vargas   | La Siberia
 548464915  | Yuliana           | Rodr├¡guez Vargas   | El Higuer├│n
 446019320  | Fernando          | Rojas C├írdenas     | La Fortuna
 897433183  | Patricia Amparo   | Rojas R├¡os         | Los Guaduales
 897433183  | Patricia Amparo   | Rojas R├¡os         | El Brillante
 897433183  | Patricia Amparo   | Rojas R├¡os         | San Rafael
 863442205  | Luz               | Rojas Torres       | Cafetal Viejo
 863442205  | Luz               | Rojas Torres       | El Danubio
 590872233  | Reinaldo          | Romero Agudelo     | Los Arrayanes
 590872233  | Reinaldo          | Romero Agudelo     | El Guayabo
 590872233  | Reinaldo          | Romero Agudelo     | Las Orqu├¡deas
 24999630   | Esperanza         | Romero Betancur    | La Florida
 24999630   | Esperanza         | Romero Betancur    | El Oasis
 940051048  | David Germ├ín      | Romero Bonilla     | La Palma
 754745808  | Jairo             | Romero Guti├®rrez   | La Soledad
 754745808  | Jairo             | Romero Guti├®rrez   | La Quebrada
 410167282  | Gustavo Pedro     | Romero Pinz├│n      | El Recreo
 134410171  | Orlando           | Salazar Berm├║dez   | El Diamante
 922724022  | Esteban           | Salazar Parra      | Las Acacias
 302894847  | Reinaldo Jorge    | S├ínchez Agudelo    | La Granja
 302894847  | Reinaldo Jorge    | S├ínchez Agudelo    | El Cedro
 302894847  | Reinaldo Jorge    | S├ínchez Agudelo    | Las Brisas
 1079700992 | Camila            | S├ínchez Pinz├│n     | El Diamante
 1079700992 | Camila            | S├ínchez Pinz├│n     | El Para├¡so
 610678466  | Nicol├ís           | S├ínchez Rodr├¡guez  | El Nogal
 302059113  | Yuliana           | Sandoval Bedoya    | La Granja
 1180237528 | ├üngela Beatriz    | Sandoval Berm├║dez  | La Estrella
 1090578662 | Gladys Patricia   | Sandoval Duarte    | La Reserva
 938685616  | Sandra            | Sandoval Ortega    | El Guamo
 938685616  | Sandra            | Sandoval Ortega    | La Pradera
 938685616  | Sandra            | Sandoval Ortega    | Las Delicias
 449792023  | Myriam            | Sandoval Osorio    | El Nogal
 988262002  | Jazm├¡n            | Silva G├│mez        | La Esperanza
 1050862619 | Yesenia           | Silva Henao        | El Retiro
 44817013   | An├¡bal            | Silva Villamizar   | Bellavista
 44817013   | An├¡bal            | Silva Villamizar   | El Encanto
 403413565  | Reinaldo          | Su├írez Polan├¡a     | Mi Ranchito
 403413565  | Reinaldo          | Su├írez Polan├¡a     | La Quebrada
 700421194  | Teresa            | Torres Giraldo     | El Tesoro
 1138270357 | Gustavo Heriberto | Torres Guerrero    | La Gaitana
 1138270357 | Gustavo Heriberto | Torres Guerrero    | El Recuerdo
 356807172  | Aura              | Torres Ortega      | El Tesoro
 756405214  | Gloria            | Tovar Benavides    | El Vergel
 756405214  | Gloria            | Tovar Benavides    | Las Palmas
 756405214  | Gloria            | Tovar Benavides    | Los Alpes
 811526011  | Arturo            | Tovar Calder├│n     | La Cumbre
 811526011  | Arturo            | Tovar Calder├│n     | Santa B├írbara
 553185238  | ├üngela            | Tovar Lasso        | El Guayabo
 793273339  | Libardo           | Trujillo Torres    | El Diamante
 179146863  | Dora Luc├¡a        | Uribe Arango       | El Recuerdo
 578947645  | Mario             | Uribe Cu├®llar      | El Porvenir
 578947645  | Mario             | Uribe Cu├®llar      | La Primavera
 748380481  | Teresa Adriana    | Valencia Moreno    | La Floresta
 534023693  | Myriam            | Valencia Moreno    | Los Arrayanes
 534023693  | Myriam            | Valencia Moreno    | Las Orqu├¡deas
 534023693  | Myriam            | Valencia Moreno    | El Guayabo
 534023693  | Myriam            | Valencia Moreno    | La Palma
 402745033  | Juli├ín Guillermo  | Valencia Narv├íez   | El Silencio
 712500733  | Esperanza         | Valencia Ortiz     | Bella Vista Alta
 712500733  | Esperanza         | Valencia Ortiz     | El Higuer├│n
 712500733  | Esperanza         | Valencia Ortiz     | El Refugio
 712500733  | Esperanza         | Valencia Ortiz     | La Siberia
 813687871  | Andr├®s Emilio     | Valencia Parra     | El Horizonte
 1109661392 | Fabio Luis        | Valencia Ram├¡rez   | Las Acacias
 211924295  | ├ülvaro            | Valencia Rivera    | Tierra Linda
 211924295  | ├ülvaro            | Valencia Rivera    | Los Laureles
 141739132  | Alba              | Vargas Losada      | El Oasis
 141739132  | Alba              | Vargas Losada      | La Estrella
 727121857  | Alba              | Vera Calder├│n      | Los Guaduales
 388108693  | Miguel            | Villamizar Correa  | Los Pinos
 443361503  | Rub├®n             | Villamizar Mej├¡a   | Altamira
 1144582366 | David             | Zapata Arias       | La Argentina
 1144582366 | David             | Zapata Arias       | Las Acacias
 1144582366 | David             | Zapata Arias       | El Triunfo
 1144582366 | David             | Zapata Arias       | La Gaitana
 674769591  | Iv├ín              | Zapata Ortiz       | El Mes├│n
 796884051  | Yuliana           | Zapata Parra       | La Aurora
 314914042  | Olga Luisa        | Zapata Rivera      | Mi Ranchito
 224364120  | Valentina         | Zapata Valencia    | Villa Hermosa
 338193839  | Laura             | Zuluaga Benavides  | El Bosque
 1185160275 | Ramiro            | Zuluaga Duque      | El Tesoro
 1185160275 | Ramiro            | Zuluaga Duque      | La Aurora
(370 filas)


/+