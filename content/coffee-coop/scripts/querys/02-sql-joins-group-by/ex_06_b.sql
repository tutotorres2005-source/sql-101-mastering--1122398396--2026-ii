
-- Exercise 06 -b
-- Pairs of farmers in municipality 54518 sharing the same last name using SELF JOIN


SELECT
    SPLIT_PART(T1.last_name, ' ', 1) AS last_name,
    CONCAT(T1.first_name, ' ', T1.last_name) AS farmer_a,
    CONCAT(T2.first_name, ' ', T2.last_name) AS farmer_b
FROM farm.farmers AS T1
INNER JOIN farm.farmers AS T2
    ON SPLIT_PART(T1.last_name, ' ', 1) = SPLIT_PART(T2.last_name, ' ', 1)
    AND T1.municipality_code = T2.municipality_code
    AND T1.farmer_id < T2.farmer_id
WHERE T1.municipality_code = '54518'
ORDER BY last_name ASC, farmer_a ASC;

/*
  last_name  |             farmer_a              |             farmer_b
------------+-----------------------------------+-----------------------------------
 Agudelo    | Manuel Agudelo Jim├®nez            | Marleny Agudelo Sandoval
 ├ülvarez    | Alberto ├ülvarez Villamizar        | M├│nica ├ülvarez Carrillo
 ├ülvarez    | Edilma ├ülvarez Bonilla            | Alberto ├ülvarez Villamizar
 ├ülvarez    | Edilma ├ülvarez Bonilla            | M├│nica ├ülvarez Carrillo
 ├ülvarez    | Edilma ├ülvarez Bonilla            | Marleny ├ülvarez Correa
 ├ülvarez    | Marleny ├ülvarez Correa            | M├│nica ├ülvarez Carrillo
 ├ülvarez    | Marleny ├ülvarez Correa            | Alberto ├ülvarez Villamizar
 ├ülvarez    | Roc├¡o ├ülvarez C├írdenas            | M├│nica ├ülvarez Carrillo
 ├ülvarez    | Roc├¡o ├ülvarez C├írdenas            | Edilma ├ülvarez Bonilla
 ├ülvarez    | Roc├¡o ├ülvarez C├írdenas            | Marleny ├ülvarez Correa
 ├ülvarez    | Roc├¡o ├ülvarez C├írdenas            | Alberto ├ülvarez Villamizar
 Arango     | Anc├¡zar Arango Silva              | Myriam Yuliana Arango Narv├íez
 Arias      | Edilma Gabriela Arias ├ülvarez     | Viviana Arias Ram├¡rez
 Arias      | Edilma Gabriela Arias ├ülvarez     | Camilo Arias Mora
 Arias      | Guillermo Pedro Arias Rodr├¡guez   | Camilo Arias Mora
 Arias      | Guillermo Pedro Arias Rodr├¡guez   | Viviana Arias Ram├¡rez
 Arias      | Guillermo Pedro Arias Rodr├¡guez   | Edilma Gabriela Arias ├ülvarez
 Arias      | Viviana Arias Ram├¡rez             | Camilo Arias Mora
 Barrera    | Isabella Barrera Cabrera          | Ramiro Barrera Villamizar
 Barrera    | Isabella Barrera Cabrera          | Mariana Barrera Correa
 Barrera    | Mariana Barrera Correa            | Ramiro Barrera Villamizar
 Bastidas   | Alberto Bastidas Rodr├¡guez        | Amparo Bastidas Chamorro
 Bastidas   | Alberto Bastidas Rodr├¡guez        | Antonio Bastidas Rodr├¡guez
 Bastidas   | Amparo Bastidas Chamorro          | Antonio Bastidas Rodr├¡guez
 Bastidas   | Manuela Bastidas Medina           | Roc├¡o Bastidas Su├írez
 Bastidas   | Manuela Bastidas Medina           | Antonio Bastidas Rodr├¡guez
 Bastidas   | Manuela Bastidas Medina           | Amparo Bastidas Chamorro
 Bastidas   | Manuela Bastidas Medina           | Alberto Bastidas Rodr├¡guez
 Bastidas   | Roc├¡o Bastidas Su├írez             | Alberto Bastidas Rodr├¡guez
 Bastidas   | Roc├¡o Bastidas Su├írez             | Amparo Bastidas Chamorro
 Bastidas   | Roc├¡o Bastidas Su├írez             | Antonio Bastidas Rodr├¡guez
 Berm├║dez   | ├ülvaro Berm├║dez Mar├¡n             | Santiago Berm├║dez Ruiz
 Berm├║dez   | ├ülvaro Berm├║dez Mar├¡n             | Rodrigo Guillermo Berm├║dez Mu├▒oz
 Berm├║dez   | ├ülvaro Berm├║dez Mar├¡n             | Emilio Berm├║dez Rojas
 Berm├║dez   | ├ülvaro Berm├║dez Mar├¡n             | Yesenia Berm├║dez Henao
 Berm├║dez   | ├ülvaro Berm├║dez Mar├¡n             | Iv├ín Berm├║dez Fl├│rez
 Berm├║dez   | Iv├ín Berm├║dez Fl├│rez              | Yesenia Berm├║dez Henao
 Berm├║dez   | Iv├ín Berm├║dez Fl├│rez              | Emilio Berm├║dez Rojas
 Berm├║dez   | Iv├ín Berm├║dez Fl├│rez              | Santiago Berm├║dez Ruiz
 Berm├║dez   | Iv├ín Berm├║dez Fl├│rez              | Rodrigo Guillermo Berm├║dez Mu├▒oz
 Berm├║dez   | Rodrigo Guillermo Berm├║dez Mu├▒oz  | Emilio Berm├║dez Rojas
 Berm├║dez   | Santiago Berm├║dez Ruiz            | Emilio Berm├║dez Rojas
 Berm├║dez   | Santiago Berm├║dez Ruiz            | Rodrigo Guillermo Berm├║dez Mu├▒oz
 Berm├║dez   | Yesenia Berm├║dez Henao            | Santiago Berm├║dez Ruiz
 Berm├║dez   | Yesenia Berm├║dez Henao            | Rodrigo Guillermo Berm├║dez Mu├▒oz
 Berm├║dez   | Yesenia Berm├║dez Henao            | Emilio Berm├║dez Rojas
 Burbano    | Fernando Burbano Fl├│rez           | ├ëdgar Burbano Arango
 Burbano    | Javier Burbano Molina             | Fernando Burbano Fl├│rez
 Burbano    | Javier Burbano Molina             | ├ëdgar Burbano Arango
 Burbano    | Jazm├¡n Burbano Jaimes             | ├ëdgar Burbano Arango
 Burbano    | Jazm├¡n Burbano Jaimes             | Fernando Burbano Fl├│rez
 Burbano    | Jazm├¡n Burbano Jaimes             | Javier Burbano Molina
 Burbano    | Mar├¡a Burbano Duarte              | Javier Burbano Molina
 Burbano    | Mar├¡a Burbano Duarte              | ├ëdgar Burbano Arango
 Burbano    | Mar├¡a Burbano Duarte              | Fernando Burbano Fl├│rez
 Burbano    | Mar├¡a Burbano Duarte              | Jazm├¡n Burbano Jaimes
 Caicedo    | Luisa Caicedo Restrepo            | Nubia Juliana Caicedo Medina
 Castillo   | Aura Castillo Henao               | Carlos Castillo Torres
 Chamorro   | Liliana Luisa Chamorro V├®lez      | Nelson Chamorro Vera
 Contreras  | Efra├¡n Ricardo Contreras Ospina   | Arturo Contreras Pe├▒a
 Cu├®llar    | Jaime Santiago Cu├®llar C├íceres    | Heriberto Andr├®s Cu├®llar Romero
 Delgado    | Emilio Delgado Molina             | Juli├ín Germ├ín Delgado Villamizar
 D├¡az       | Antonio D├¡az V├®lez                | Fabio D├¡az Cu├®llar
 D├¡az       | Antonio D├¡az V├®lez                | Cecilia Lorena D├¡az Garc├¡a
 D├¡az       | Antonio D├¡az V├®lez                | In├®s Luc├¡a D├¡az Cu├®llar
 D├¡az       | Antonio D├¡az V├®lez                | Wilson Yeison D├¡az Ram├¡rez
 D├¡az       | Antonio D├¡az V├®lez                | Diana D├¡az Medina
 D├¡az       | Cecilia Lorena D├¡az Garc├¡a        | Diana D├¡az Medina
 D├¡az       | Cecilia Lorena D├¡az Garc├¡a        | Fabio D├¡az Cu├®llar
 D├¡az       | Cecilia Lorena D├¡az Garc├¡a        | Wilson Yeison D├¡az Ram├¡rez
 D├¡az       | Cecilia Lorena D├¡az Garc├¡a        | In├®s Luc├¡a D├¡az Cu├®llar
 D├¡az       | Diana D├¡az Medina                 | Fabio D├¡az Cu├®llar
 D├¡az       | In├®s Luc├¡a D├¡az Cu├®llar           | Fabio D├¡az Cu├®llar
 D├¡az       | In├®s Luc├¡a D├¡az Cu├®llar           | Diana D├¡az Medina
 D├¡az       | In├®s Luc├¡a D├¡az Cu├®llar           | Wilson Yeison D├¡az Ram├¡rez
 D├¡az       | Wilson Yeison D├¡az Ram├¡rez        | Fabio D├¡az Cu├®llar
 D├¡az       | Wilson Yeison D├¡az Ram├¡rez        | Diana D├¡az Medina
 Duque      | In├®s Duque C├írdenas               | Daniel H├®ctor Duque Ruiz
 Fl├│rez     | M├│nica Claudia Fl├│rez Gonz├ílez    | Myriam Fl├│rez Gonz├ílez
 Gonz├ílez   | Javier Gonz├ílez Zuluaga           | Viviana Gonz├ílez Molina
 Gonz├ílez   | Nicol├ís Gonz├ílez Rodr├¡guez        | Javier Gonz├ílez Zuluaga
 Gonz├ílez   | Nicol├ís Gonz├ílez Rodr├¡guez        | Viviana Gonz├ílez Molina
 Henao      | Nubia Natalia Henao Ram├¡rez       | Sandra Henao Jaimes
 Hern├índez  | Arturo Hern├índez Uribe            | Beatriz Hern├índez Mu├▒oz
 Hern├índez  | Arturo Hern├índez Uribe            | Fabio Hern├índez Lasso
 Hern├índez  | Beatriz Hern├índez Mu├▒oz           | Fabio Hern├índez Lasso
 Hern├índez  | Dora Hern├índez Correa             | Beatriz Hern├índez Mu├▒oz
 Hern├índez  | Dora Hern├índez Correa             | Arturo Hern├índez Uribe
 Hern├índez  | Dora Hern├índez Correa             | Fabio Hern├índez Lasso
 Ibarra     | Elsa Ibarra Molina                | Gustavo Ibarra Agudelo
 Ibarra     | Elsa Ibarra Molina                | Teresa Ibarra Caicedo
 Ibarra     | Gustavo Ibarra Agudelo            | Teresa Ibarra Caicedo
 Jaimes     | Esperanza Jaimes Vera             | David Jaimes Ruiz
 Jaimes     | Luis Jaimes Salazar               | David Jaimes Ruiz
 Jaimes     | Luis Jaimes Salazar               | Luz Martha Jaimes Berm├║dez
 Jaimes     | Luis Jaimes Salazar               | Esperanza Jaimes Vera
 Jaimes     | Luz Martha Jaimes Berm├║dez        | David Jaimes Ruiz
 Jaimes     | Luz Martha Jaimes Berm├║dez        | Esperanza Jaimes Vera
 Jaimes     | Roc├¡o Manuela Jaimes Cardona      | Luz Martha Jaimes Berm├║dez
 Jaimes     | Roc├¡o Manuela Jaimes Cardona      | Luis Jaimes Salazar
 Jaimes     | Roc├¡o Manuela Jaimes Cardona      | Esperanza Jaimes Vera
 Jaimes     | Roc├¡o Manuela Jaimes Cardona      | David Jaimes Ruiz
 Jim├®nez    | Hernando Miguel Jim├®nez Restrepo  | Heriberto Jim├®nez C├íceres
 Jim├®nez    | Hernando Miguel Jim├®nez Restrepo  | Hugo Jim├®nez Parra
 Jim├®nez    | Hernando Miguel Jim├®nez Restrepo  | Ruth Jim├®nez Guerrero
 Jim├®nez    | Hugo Jim├®nez Parra                | Heriberto Jim├®nez C├íceres
 Jim├®nez    | In├®s Jim├®nez Jaimes               | Ruth Jim├®nez Guerrero
 Jim├®nez    | In├®s Jim├®nez Jaimes               | Heriberto Jim├®nez C├íceres
 Jim├®nez    | In├®s Jim├®nez Jaimes               | Hugo Jim├®nez Parra
 Jim├®nez    | In├®s Jim├®nez Jaimes               | Hernando Miguel Jim├®nez Restrepo
 Jim├®nez    | Ruth Jim├®nez Guerrero             | Heriberto Jim├®nez C├íceres
 Jim├®nez    | Ruth Jim├®nez Guerrero             | Hugo Jim├®nez Parra
 Lozano     | Diana Lozano Rinc├│n               | Luisa Lozano Losada
 Lozano     | Diana Lozano Rinc├│n               | Daniela Lozano Castro
 Lozano     | Luisa Lozano Losada               | Daniela Lozano Castro
 Mar├¡n      | Elsa Mar├¡n Henao                  | Stella Mar├¡n Osorio
 Mar├¡n      | Gloria Mar├¡n Rivera               | Sof├¡a Mar├¡n Rojas
 Mar├¡n      | Gloria Mar├¡n Rivera               | Elsa Mar├¡n Henao
 Mar├¡n      | Gloria Mar├¡n Rivera               | Stella Mar├¡n Osorio
 Mar├¡n      | Gloria Mar├¡n Rivera               | Jaime Mar├¡n Hern├índez
 Mar├¡n      | Gloria Mar├¡n Rivera               | Gustavo Mar├¡n Sandoval
 Mar├¡n      | Gustavo Mar├¡n Sandoval            | Stella Mar├¡n Osorio
 Mar├¡n      | Gustavo Mar├¡n Sandoval            | Elsa Mar├¡n Henao
 Mar├¡n      | Gustavo Mar├¡n Sandoval            | Sof├¡a Mar├¡n Rojas
 Mar├¡n      | Jaime Mar├¡n Hern├índez             | Stella Mar├¡n Osorio
 Mar├¡n      | Jaime Mar├¡n Hern├índez             | Elsa Mar├¡n Henao
 Mar├¡n      | Jaime Mar├¡n Hern├índez             | Sof├¡a Mar├¡n Rojas
 Mar├¡n      | Jaime Mar├¡n Hern├índez             | Gustavo Mar├¡n Sandoval
 Mar├¡n      | Sof├¡a Mar├¡n Rojas                 | Stella Mar├¡n Osorio
 Mar├¡n      | Sof├¡a Mar├¡n Rojas                 | Elsa Mar├¡n Henao
 Mej├¡a      | Elsa Mej├¡a Vera                   | Juliana Ana Mej├¡a Mej├¡a
 Mej├¡a      | Elsa Mej├¡a Vera                   | Yuliana Jazm├¡n Mej├¡a Rangel
 Mej├¡a      | Nelson Samuel Mej├¡a Vera          | Elsa Mej├¡a Vera
 Mej├¡a      | Nelson Samuel Mej├¡a Vera          | Yuliana Jazm├¡n Mej├¡a Rangel
 Mej├¡a      | Nelson Samuel Mej├¡a Vera          | Juliana Ana Mej├¡a Mej├¡a
 Mej├¡a      | Yuliana Jazm├¡n Mej├¡a Rangel       | Juliana Ana Mej├¡a Mej├¡a
 Molina     | Alejandra Molina Torres           | Diana Isabella Molina Moreno
 Molina     | Jairo Molina Pab├│n                | Diana Isabella Molina Moreno
 Molina     | Jairo Molina Pab├│n                | Alejandra Molina Torres
 Montoya    | Hernando Montoya Agudelo          | Luisa Montoya Mej├¡a
 Montoya    | Hernando Montoya Agudelo          | Wilmer Montoya Rodr├¡guez
 Montoya    | Hernando Montoya Agudelo          | Fanny Montoya Valencia
 Montoya    | Luisa Montoya Mej├¡a               | Fanny Montoya Valencia
 Montoya    | Wilmer Montoya Rodr├¡guez          | Luisa Montoya Mej├¡a
 Montoya    | Wilmer Montoya Rodr├¡guez          | Fanny Montoya Valencia
 Mosquera   | Adriana Mosquera Ospina           | Liliana Mosquera Uribe
 Mosquera   | Adriana Mosquera Ospina           | Gustavo Mosquera L├│pez
 Mosquera   | Adriana Mosquera Ospina           | Luis Mosquera Perdomo
 Mosquera   | Adriana Mosquera Ospina           | Isabella Mosquera Sandoval
 Mosquera   | Adriana Mosquera Ospina           | Alejandra Andrea Mosquera Moreno
 Mosquera   | Alejandra Andrea Mosquera Moreno  | Luis Mosquera Perdomo
 Mosquera   | Alejandra Andrea Mosquera Moreno  | Liliana Mosquera Uribe
 Mosquera   | Alejandra Andrea Mosquera Moreno  | Isabella Mosquera Sandoval
 Mosquera   | Gustavo Mosquera L├│pez            | Luis Mosquera Perdomo
 Mosquera   | Gustavo Mosquera L├│pez            | Alejandra Andrea Mosquera Moreno
 Mosquera   | Gustavo Mosquera L├│pez            | Isabella Mosquera Sandoval
 Mosquera   | Gustavo Mosquera L├│pez            | Liliana Mosquera Uribe
 Mosquera   | Liliana Mosquera Uribe            | Isabella Mosquera Sandoval
 Mosquera   | Liliana Mosquera Uribe            | Luis Mosquera Perdomo
 Mosquera   | Luis Mosquera Perdomo             | Isabella Mosquera Sandoval
 Ni├▒o       | Diego Ni├▒o Hern├índez              | Luz Ni├▒o Guerrero
 Ni├▒o       | Diego Ni├▒o Hern├índez              | Gabriela Carolina Ni├▒o Ortiz
 Ni├▒o       | Gabriela Carolina Ni├▒o Ortiz      | Luz Ni├▒o Guerrero
 Ortega     | Efra├¡n Ortega Correa              | Roc├¡o Alba Ortega Serrano
 Ortega     | Efra├¡n Ortega Correa              | Sandra Ortega Garc├¡a
 Ortega     | Efra├¡n Ortega Correa              | Juliana Ortega Osorio
 Ortega     | Juan Ortega Zapata                | Efra├¡n Ortega Correa
 Ortega     | Juan Ortega Zapata                | Roc├¡o Alba Ortega Serrano
 Ortega     | Juan Ortega Zapata                | Sandra Ortega Garc├¡a
 Ortega     | Juan Ortega Zapata                | Juliana Ortega Osorio
 Ortega     | Roc├¡o Alba Ortega Serrano         | Sandra Ortega Garc├¡a
 Ortega     | Roc├¡o Alba Ortega Serrano         | Juliana Ortega Osorio
 Ortega     | Sandra Ortega Garc├¡a              | Juliana Ortega Osorio
 Ortiz      | Jaime Wilmer Ortiz Vargas         | Alberto Ortiz Lasso
 Ortiz      | Jaime Wilmer Ortiz Vargas         | Mariana Ortiz Ruiz
 Ortiz      | Mariana Ortiz Ruiz                | Alberto Ortiz Lasso
 Ospina     | ├ôscar Ospina Gonz├ílez             | Natalia Ospina Burbano
 Parra      | Gustavo Parra Ortiz               | Ramiro Parra Trujillo
 Parra      | Wilson Parra Prada                | Ramiro Parra Trujillo
 Parra      | Wilson Parra Prada                | Gustavo Parra Ortiz
 Pe├▒a       | Juli├ín Pe├▒a Betancur              | Mauricio Pe├▒a Bastidas
 P├®rez      | Abelardo P├®rez Castro             | Martha Carolina P├®rez Jaimes
 P├®rez      | Abelardo P├®rez Castro             | Guillermo P├®rez P├®rez
 P├®rez      | Abelardo P├®rez Castro             | Wilmer P├®rez Chamorro
 P├®rez      | Abelardo P├®rez Castro             | Liliana P├®rez Parra
 P├®rez      | Guillermo P├®rez P├®rez             | Martha Carolina P├®rez Jaimes
 P├®rez      | Guillermo P├®rez P├®rez             | Liliana P├®rez Parra
 P├®rez      | Liliana P├®rez Parra               | Martha Carolina P├®rez Jaimes
 P├®rez      | Wilmer P├®rez Chamorro             | Martha Carolina P├®rez Jaimes
 P├®rez      | Wilmer P├®rez Chamorro             | Guillermo P├®rez P├®rez
 P├®rez      | Wilmer P├®rez Chamorro             | Liliana P├®rez Parra
 Pinz├│n     | Javier Pinz├│n Jim├®nez             | Efra├¡n Pinz├│n Cabrera
 Pinz├│n     | Javier Pinz├│n Jim├®nez             | Marleny Pinz├│n Delgado
 Pinz├│n     | Marleny Pinz├│n Delgado            | Efra├¡n Pinz├│n Cabrera
 Polan├¡a    | Anc├¡zar Cristian Polan├¡a Delgado  | In├®s Polan├¡a Bedoya
 Ram├¡rez    | Francisco Ram├¡rez Sandoval        | Pedro Ram├¡rez Barrera
 Ram├¡rez    | Francisco Ram├¡rez Sandoval        | M├│nica Elsa Ram├¡rez Castro
 Ram├¡rez    | M├│nica Elsa Ram├¡rez Castro        | Pedro Ram├¡rez Barrera
 Ramos      | Elsa Ramos C├írdenas               | Natalia Ramos Vargas
 Ramos      | Rub├®n Ramos Chamorro              | Natalia Ramos Vargas
 Ramos      | Rub├®n Ramos Chamorro              | Elsa Ramos C├írdenas
 Rinc├│n     | Mario Rinc├│n Su├írez               | Yesenia Rinc├│n Caicedo
 Rinc├│n     | Rafael Francisco Rinc├│n Romero    | Yesenia Rinc├│n Caicedo
 Rinc├│n     | Rafael Francisco Rinc├│n Romero    | Mario Rinc├│n Su├írez
 R├¡os       | Alba R├¡os Rodr├¡guez               | Erika R├¡os Su├írez
 R├¡os       | Alba R├¡os Rodr├¡guez               | Mario R├¡os Ibarra
 R├¡os       | Alba R├¡os Rodr├¡guez               | Gloria Aura R├¡os Vera
 R├¡os       | Felipe Camilo R├¡os Ospina         | Erika R├¡os Su├írez
 R├¡os       | Felipe Camilo R├¡os Ospina         | Gloria Aura R├¡os Vera
 R├¡os       | Felipe Camilo R├¡os Ospina         | Mario R├¡os Ibarra
 R├¡os       | Felipe Camilo R├¡os Ospina         | Alba R├¡os Rodr├¡guez
 R├¡os       | Felipe Camilo R├¡os Ospina         | Rosa R├¡os C├írdenas
 R├¡os       | Gloria Aura R├¡os Vera             | Erika R├¡os Su├írez
 R├¡os       | Mario R├¡os Ibarra                 | Gloria Aura R├¡os Vera
 R├¡os       | Mario R├¡os Ibarra                 | Erika R├¡os Su├írez
 R├¡os       | Rosa R├¡os C├írdenas                | Gloria Aura R├¡os Vera
 R├¡os       | Rosa R├¡os C├írdenas                | Mario R├¡os Ibarra
 R├¡os       | Rosa R├¡os C├írdenas                | Alba R├¡os Rodr├¡guez
 R├¡os       | Rosa R├¡os C├írdenas                | Erika R├¡os Su├írez
 Rivera     | Edilma Rivera Rivera              | Diego Rivera Jim├®nez
 Rivera     | Edilma Rivera Rivera              | ├ôscar Rivera Tovar
 Rivera     | Edilma Rivera Rivera              | Nicol├ís Rivera Duque
 Rivera     | Nicol├ís Rivera Duque              | Diego Rivera Jim├®nez
 Rivera     | Nicol├ís Rivera Duque              | ├ôscar Rivera Tovar
 Rivera     | ├ôscar Rivera Tovar                | Diego Rivera Jim├®nez
 Rodr├¡guez  | Gabriela Rodr├¡guez Ortega         | Yuliana Rodr├¡guez Vargas
 Rodr├¡guez  | Gabriela Rodr├¡guez Ortega         | Ruth Rodr├¡guez P├®rez
 Rodr├¡guez  | Yuliana Rodr├¡guez Vargas          | Ruth Rodr├¡guez P├®rez
 Rojas      | Fernando Rojas C├írdenas           | Patricia Amparo Rojas R├¡os
 Rojas      | Fernando Rojas C├írdenas           | Luz Rojas Torres
 Rojas      | Luz Rojas Torres                  | Patricia Amparo Rojas R├¡os
 Romero     | David Germ├ín Romero Bonilla       | Reinaldo Romero Agudelo
 Romero     | David Germ├ín Romero Bonilla       | Jairo Romero Guti├®rrez
 Romero     | David Germ├ín Romero Bonilla       | Gustavo Pedro Romero Pinz├│n
 Romero     | Esperanza Romero Betancur         | David Germ├ín Romero Bonilla
 Romero     | Esperanza Romero Betancur         | Jairo Romero Guti├®rrez
 Romero     | Esperanza Romero Betancur         | Gustavo Pedro Romero Pinz├│n
 Romero     | Esperanza Romero Betancur         | Reinaldo Romero Agudelo
 Romero     | Gustavo Pedro Romero Pinz├│n       | Jairo Romero Guti├®rrez
 Romero     | Reinaldo Romero Agudelo           | Gustavo Pedro Romero Pinz├│n
 Romero     | Reinaldo Romero Agudelo           | Jairo Romero Guti├®rrez
 Salazar    | Orlando Salazar Berm├║dez          | Esteban Salazar Parra
 S├ínchez    | Camila S├ínchez Pinz├│n             | Nicol├ís S├ínchez Rodr├¡guez
 S├ínchez    | Reinaldo Jorge S├ínchez Agudelo    | Camila S├ínchez Pinz├│n
 S├ínchez    | Reinaldo Jorge S├ínchez Agudelo    | Nicol├ís S├ínchez Rodr├¡guez
 Sandoval   | ├üngela Beatriz Sandoval Berm├║dez  | Myriam Sandoval Osorio
 Sandoval   | ├üngela Beatriz Sandoval Berm├║dez  | Yuliana Sandoval Bedoya
 Sandoval   | ├üngela Beatriz Sandoval Berm├║dez  | Sandra Sandoval Ortega
 Sandoval   | Gladys Patricia Sandoval Duarte   | ├üngela Beatriz Sandoval Berm├║dez
 Sandoval   | Gladys Patricia Sandoval Duarte   | Sandra Sandoval Ortega
 Sandoval   | Gladys Patricia Sandoval Duarte   | Myriam Sandoval Osorio
 Sandoval   | Gladys Patricia Sandoval Duarte   | Yuliana Sandoval Bedoya
 Sandoval   | Myriam Sandoval Osorio            | Sandra Sandoval Ortega
 Sandoval   | Yuliana Sandoval Bedoya           | Myriam Sandoval Osorio
 Sandoval   | Yuliana Sandoval Bedoya           | Sandra Sandoval Ortega
 Silva      | An├¡bal Silva Villamizar           | Yesenia Silva Henao
 Silva      | Jazm├¡n Silva G├│mez                | An├¡bal Silva Villamizar
 Silva      | Jazm├¡n Silva G├│mez                | Yesenia Silva Henao
 Torres     | Aura Torres Ortega                | Gustavo Heriberto Torres Guerrero
 Torres     | Teresa Torres Giraldo             | Gustavo Heriberto Torres Guerrero
 Torres     | Teresa Torres Giraldo             | Aura Torres Ortega
 Tovar      | ├üngela Tovar Lasso                | Arturo Tovar Calder├│n
 Tovar      | ├üngela Tovar Lasso                | Gloria Tovar Benavides
 Tovar      | Arturo Tovar Calder├│n             | Gloria Tovar Benavides
 Uribe      | Mario Uribe Cu├®llar               | Dora Luc├¡a Uribe Arango
 Valencia   | ├ülvaro Valencia Rivera            | Juli├ín Guillermo Valencia Narv├íez
 Valencia   | ├ülvaro Valencia Rivera            | Fabio Luis Valencia Ram├¡rez
 Valencia   | ├ülvaro Valencia Rivera            | Teresa Adriana Valencia Moreno
 Valencia   | ├ülvaro Valencia Rivera            | Esperanza Valencia Ortiz
 Valencia   | ├ülvaro Valencia Rivera            | Andr├®s Emilio Valencia Parra
 Valencia   | ├ülvaro Valencia Rivera            | Myriam Valencia Moreno
 Valencia   | Andr├®s Emilio Valencia Parra      | Myriam Valencia Moreno
 Valencia   | Esperanza Valencia Ortiz          | Juli├ín Guillermo Valencia Narv├íez
 Valencia   | Esperanza Valencia Ortiz          | Andr├®s Emilio Valencia Parra
 Valencia   | Esperanza Valencia Ortiz          | Myriam Valencia Moreno
 Valencia   | Fabio Luis Valencia Ram├¡rez       | Myriam Valencia Moreno
 Valencia   | Fabio Luis Valencia Ram├¡rez       | Teresa Adriana Valencia Moreno
 Valencia   | Fabio Luis Valencia Ram├¡rez       | Esperanza Valencia Ortiz
 Valencia   | Fabio Luis Valencia Ram├¡rez       | Juli├ín Guillermo Valencia Narv├íez
 Valencia   | Fabio Luis Valencia Ram├¡rez       | Andr├®s Emilio Valencia Parra
 Valencia   | Juli├ín Guillermo Valencia Narv├íez | Myriam Valencia Moreno
 Valencia   | Juli├ín Guillermo Valencia Narv├íez | Andr├®s Emilio Valencia Parra
 Valencia   | Teresa Adriana Valencia Moreno    | Juli├ín Guillermo Valencia Narv├íez
 Valencia   | Teresa Adriana Valencia Moreno    | Myriam Valencia Moreno
 Valencia   | Teresa Adriana Valencia Moreno    | Esperanza Valencia Ortiz
 Valencia   | Teresa Adriana Valencia Moreno    | Andr├®s Emilio Valencia Parra
 Villamizar | Rub├®n Villamizar Mej├¡a            | Miguel Villamizar Correa
 Zapata     | David Zapata Arias                | Olga Luisa Zapata Rivera
 Zapata     | David Zapata Arias                | Yuliana Zapata Parra
 Zapata     | David Zapata Arias                | Valentina Zapata Valencia
 Zapata     | Iv├ín Zapata Ortiz                 | Yuliana Zapata Parra
 Zapata     | Iv├ín Zapata Ortiz                 | Valentina Zapata Valencia
 Zapata     | Iv├ín Zapata Ortiz                 | David Zapata Arias
 Zapata     | Iv├ín Zapata Ortiz                 | Olga Luisa Zapata Rivera
 Zapata     | Valentina Zapata Valencia         | Olga Luisa Zapata Rivera
 Zapata     | Valentina Zapata Valencia         | Yuliana Zapata Parra
 Zapata     | Yuliana Zapata Parra              | Olga Luisa Zapata Rivera
 Zuluaga    | Ramiro Zuluaga Duque              | Laura Zuluaga Benavides
(298 filas
*/