
-- Exercise 10 -a
-- Total settlements and net value liquidated for September 2026 per farmer using 4 tables


SELECT
    T4.farmer_id AS document,
    T4.first_name AS first_name,
    T4.last_name AS last_name,
    COUNT(T1.settlement_id) AS settlements_count,
    SUM(T1.net_amount) AS total_net_cop
FROM pay.settlements AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.delivery_id = T2.delivery_id
INNER JOIN farm.farms AS T3
    ON T2.farm_id = T3.farm_id
INNER JOIN farm.farmers AS T4
    ON T3.farmer_id = T4.farmer_id
WHERE T1.date >= '2026-09-01' 
  AND T1.date <= '2026-09-30'
GROUP BY T4.farmer_id, T4.first_name, T4.last_name
ORDER BY total_net_cop DESC;

/*
  document |     first_name      |       last_name       | settlements_count | total_net_cop
----------+---------------------+-----------------------+-------------------+---------------
   132066 | Cristian            | Garc├¡a Contreras      |                 3 |   15493357.77
    66413 | Samuel ├ôscar        | Arias Jim├®nez         |                 3 |   14600417.40
    65705 | Alba                | Mu├▒oz Ram├¡rez         |                 2 |   14576631.94
   103437 | Jairo               | Valencia Zapata       |                 2 |   14528146.87
   141450 | Alejandro Mateo     | Fl├│rez Uribe          |                 2 |   14460246.30
    11748 | Luisa Martha        | Caicedo Romero        |                 1 |   13335230.83
    63763 | Luisa               | Duque Torres          |                 2 |   12843595.73
   116192 | Dora                | Galvis Ospina         |                 3 |   12821153.68
    53226 | Jorge               | Duarte Zapata         |                 2 |   12777306.01
   125382 | ├ülvaro              | Serrano Caicedo       |                 2 |   12361790.74
    49733 | Reinaldo            | Ruiz Cu├®llar          |                 2 |   12310076.05
    73758 | Aura                | Osorio Medina         |                 2 |   12133626.08
   124236 | Wilmer              | Barrera Vera          |                 2 |   12078718.23
    57898 | Orlando             | Pe├▒a Vera             |                 1 |   12005420.07
    98333 | Rub├®n               | Quintero Chamorro     |                 3 |   11967062.39
    95593 | Alejandro           | Ni├▒o Fl├│rez           |                 2 |   11914996.69
    66409 | Antonio             | Moreno Rojas          |                 3 |   11712814.76
   147287 | Natalia             | Correa Jaimes         |                 2 |   11531226.36
     3333 | Carolina            | Correa Pinz├│n         |                 2 |   11381891.73
    13325 | Samuel              | Caicedo Mora          |                 2 |   11204499.77
     8515 | Juli├ín              | Mar├¡n Sandoval        |                 1 |   11140800.03
   102302 | Yesenia Nubia       | Montoya Giraldo       |                 1 |   11114680.80
    48357 | Mauricio            | L├│pez Rivera          |                 2 |   11091255.81
    15725 | Sandra              | Rojas Calder├│n        |                 2 |   11080803.26
   112560 | Guillermo Gustavo   | Delgado Acevedo       |                 1 |   11032091.12
    47664 | Gustavo             | Mar├¡n Burbano         |                 1 |   10976260.61
   135715 | Alberto             | Rinc├│n Herrera        |                 1 |   10959451.38
   122397 | Manuel              | Carrillo Betancur     |                 2 |   10910912.91
    42669 | In├®s                | Cabrera D├¡az          |                 1 |   10800176.84
     4570 | Rosa                | Gonz├ílez Bastidas     |                 1 |   10577379.54
    83149 | Hernando Fabio      | Lozano Erazo          |                 2 |   10457056.62
   148100 | Manuel Jorge        | Rodr├¡guez Benavides   |                 1 |   10445584.60
   136981 | Martha              | Pab├│n Rodr├¡guez       |                 1 |   10398924.90
    70748 | Jaime               | Lasso P├®rez           |                 1 |   10315335.60
    27461 | An├¡bal Libardo      | C├írdenas Mosquera     |                 1 |   10291254.30
    65396 | Myriam Mercedes     | Ortega Restrepo       |                 1 |   10288035.32
    95122 | Fanny               | V├®lez Galvis          |                 1 |   10273917.15
    49739 | Reinaldo            | Ospina Restrepo       |                 2 |   10270314.78
    43412 | Laura               | ├ülvarez Torres        |                 1 |   10264548.60
    32910 | Francisco Efra├¡n    | Bonilla Gonz├ílez      |                 2 |   10223551.64
    73834 | Mar├¡a               | Bastidas Cardona      |                 1 |   10190032.14
      589 | Diego ├ôscar         | Burbano Pab├│n         |                 2 |   10163972.22
    53964 | H├®ctor              | Burbano Perdomo       |                 2 |   10139600.96
    22006 | Mariana             | Hern├índez Delgado     |                 2 |   10130725.77
    90340 | Alba                | C├írdenas C├íceres      |                 1 |    9976552.30
    49532 | Hernando            | Duque Burbano         |                 1 |    9954728.48
     1283 | Jazm├¡n              | Zapata Prada          |                 1 |    9937740.78
   148401 | Mariana             | Salazar Guti├®rrez     |                 1 |    9910717.68
   111763 | Mateo               | Ospina Jim├®nez        |                 2 |    9908737.96
    28011 | Sebasti├ín           | Rinc├│n Mu├▒oz          |                 1 |    9889467.70
    98691 | Samuel              | Agudelo Erazo         |                 2 |    9863701.42
   148785 | Guillermo           | G├│mez Castillo        |                 1 |    9835521.53
    94697 | Carolina            | Cabrera Villamizar    |                 2 |    9820627.52
    58378 | Rodrigo             | Guti├®rrez Quintero    |                 1 |    9791328.20
   115673 | Jairo               | Quintero Valencia     |                 2 |    9771940.96
    31507 | Jorge               | Arango Prada          |                 2 |    9712350.34
   125517 | An├¡bal              | Restrepo Mora         |                 1 |    9695283.12
    95537 | Javier              | Hern├índez Burbano     |                 1 |    9621302.10
    72040 | Nelson Rafael       | Lasso Losada          |                 2 |    9608802.71
    84100 | Manuel              | Mart├¡nez Ortega       |                 1 |    9569074.84
   107180 | Mariana             | Losada Castillo       |                 2 |    9551133.74
   139496 | Javier              | Trujillo Burbano      |                 2 |    9505217.98
    19116 | Mar├¡a               | R├¡os Galvis           |                 2 |    9502296.60
   124026 | Francisco           | Romero Guti├®rrez      |                 1 |    9461765.52
   148012 | Gabriela Andrea     | Hern├índez Medina      |                 2 |    9423761.66
    18887 | Anc├¡zar             | Ruiz Zuluaga          |                 2 |    9416253.01
   132135 | Carmen ├üngela       | Rojas Burbano         |                 1 |    9400962.01
   132345 | Miguel Yeison       | Jaimes Burbano        |                 1 |    9381770.75
    30494 | Carlos              | Duarte Rinc├│n         |                 1 |    9379129.50
    87695 | ├ëdgar               | Castillo Jim├®nez      |                 1 |    9358315.96
    17289 | Gloria              | Bedoya Carrillo       |                 2 |    9329472.73
    49934 | Beatriz             | Pe├▒a Bastidas         |                 1 |    9327870.51
   117344 | Antonio             | D├¡az Zuluaga          |                 2 |    9302534.38
    93359 | Cristian            | Serrano Narv├íez       |                 1 |    9287105.72
    79951 | Manuela             | Berm├║dez C├íceres      |                 1 |    9274948.23
    75225 | Reinaldo            | Romero Pab├│n          |                 2 |    9249475.42
    34389 | Manuel              | Cabrera Ospina        |                 2 |    9179381.03
    54750 | Roc├¡o               | Zapata S├ínchez        |                 1 |    9147383.04
     5483 | Gloria              | Mart├¡nez P├®rez        |                 2 |    9133737.24
   127694 | Roc├¡o               | Rinc├│n Lasso          |                 1 |    9130143.80
    81587 | Miguel              | Montoya Vargas        |                 1 |    9128679.68
    65114 | Teresa              | Trujillo Montoya      |                 1 |    9097410.32
    31927 | Mario               | Duarte Torres         |                 1 |    9076532.52
    52013 | Guillermo           | L├│pez Betancur        |                 1 |    9073991.12
    68638 | Lorena              | Rinc├│n Parra          |                 2 |    9060284.08
    35398 | Myriam              | Londo├▒o Duarte        |                 3 |    9036928.84
    35714 | Alberto Iv├ín        | C├íceres Barrera       |                 1 |    9002255.00
    41172 | Paola               | Arias ├ülvarez         |                 1 |    8966638.32
    96218 | Amparo Edilma       | Ibarra Prada          |                 1 |    8929768.32
    94274 | Cecilia             | Agudelo Losada        |                 1 |    8922750.26
   123970 | Cecilia Luc├¡a       | Mosquera Pab├│n        |                 2 |    8920019.18
   113430 | Alejandra           | Torres Barrera        |                 1 |    8889139.74
    67935 | Gilberto Mauricio   | Betancur Duarte       |                 1 |    8877015.64
    92686 | Diana               | Calder├│n Silva        |                 1 |    8871595.66
    35683 | Marcela Mar├¡a       | Barrera Villamizar    |                 2 |    8846623.83
    62912 | Jorge Jos├®          | Trujillo Villamizar   |                 1 |    8816362.20
    91070 | Lorena              | Chamorro Trujillo     |                 2 |    8809770.55
    28128 | Blanca              | G├│mez Bonilla         |                 1 |    8801893.78
    53236 | Diana               | Su├írez Ortiz          |                 1 |    8797042.83
   112787 | Roc├¡o               | Molina Uribe          |                 2 |    8776995.91
   124800 | Paola               | Mart├¡nez Duarte       |                 1 |    8774766.69
    94221 | An├¡bal              | Mar├¡n Contreras       |                 1 |    8724602.88
    90752 | Claudia             | Ramos Cabrera         |                 2 |    8722081.90
   112328 | Jorge               | Mej├¡a Galvis          |                 1 |    8688177.75
    96845 | Gloria              | Ruiz Duarte           |                 1 |    8673087.62
   127069 | Roc├¡o               | Garc├¡a Chamorro       |                 1 |    8671174.20
   127229 | Beatriz Diana       | Pinz├│n C├íceres        |                 1 |    8652657.52
    15634 | Rafael Emilio       | Mart├¡nez Pe├▒a         |                 1 |    8650328.39
     9804 | Rub├®n               | Ortega Fl├│rez         |                 2 |    8614738.30
    32160 | H├®ctor              | Caicedo Vargas        |                 1 |    8609130.23
    71957 | Mateo Mario         | G├│mez G├│mez           |                 1 |    8601069.41
    24133 | Rodrigo             | Serrano Cardona       |                 2 |    8580582.55
     4215 | Yuliana Camila      | Ospina D├¡az           |                 1 |    8565796.98
   134194 | In├®s                | V├®lez Mej├¡a           |                 2 |    8558090.36
    41925 | Luz                 | Agudelo Contreras     |                 1 |    8551972.08
   147026 | Jairo               | Duarte Garc├¡a         |                 1 |    8538595.95
    60781 | Jos├®                | Cu├®llar Duque         |                 1 |    8522115.27
    63193 | Mauricio            | D├¡az Rojas            |                 2 |    8504179.51
    34312 | Hernando            | Benavides Guerrero    |                 1 |    8503682.88
    48066 | Sof├¡a Luc├¡a         | Torres Barrera        |                 1 |    8499157.32
   141309 | Antonio             | Parra Pe├▒a            |                 1 |    8498324.21
   117379 | Isabella            | Pinz├│n Moreno         |                 1 |    8495568.20
   124335 | Felipe              | Gonz├ílez Guti├®rrez    |                 2 |    8486046.66
     8014 | Sara Fanny          | Ortega Burbano        |                 1 |    8471064.87
    24661 | Nicol├ís             | Ibarra Montoya        |                 2 |    8456093.62
   140976 | Pedro               | Osorio Pe├▒a           |                 1 |    8452623.17
    47144 | Jairo               | Cu├®llar Agudelo       |                 1 |    8443978.82
    81069 | Sandra Nubia        | Villamizar Berm├║dez   |                 1 |    8433111.36
     6563 | Jos├®                | Fl├│rez C├íceres        |                 2 |    8427956.61
    57074 | Fernando            | V├®lez S├ínchez         |                 1 |    8426087.31
    50775 | Gladys              | Pab├│n Gonz├ílez        |                 1 |    8422277.46
    12305 | Amparo              | Ram├¡rez Mora          |                 1 |    8419190.40
    80373 | Gustavo             | Pinz├│n Ram├¡rez        |                 1 |    8415299.97
    44878 | Laura Sof├¡a         | Parra G├│mez           |                 2 |    8402532.82
    29252 | Laura               | Betancur Lozano       |                 1 |    8386156.22
    46104 | Luis                | Cabrera Ramos         |                 2 |    8384964.10
   140392 | Daniel              | Osorio Betancur       |                 1 |    8375596.00
   127057 | Anc├¡zar ├ôscar       | Carrillo Serrano      |                 1 |    8371705.89
    95694 | Mauricio Ricardo    | Herrera Vargas        |                 2 |    8371560.00
     9861 | Carmen Yolanda      | Narv├íez Cabrera       |                 1 |    8369863.86
    83830 | Heriberto           | Restrepo Villamizar   |                 1 |    8341481.68
    93077 | Brayan              | Medina Garc├¡a         |                 2 |    8337750.01
   114571 | Jaime               | Restrepo Mar├¡n        |                 1 |    8323494.78
    18767 | Blanca              | Henao Uribe           |                 1 |    8298103.92
    35640 | Teresa Leidy        | Delgado Pab├│n         |                 1 |    8273936.55
    97137 | Efra├¡n              | Bastidas Londo├▒o      |                 1 |    8272455.20
   114491 | Diego               | Romero Betancur       |                 1 |    8261864.40
    86406 | Wilmer              | Galvis Salazar        |                 2 |    8223247.86
    75089 | Antonio             | Osorio Rodr├¡guez      |                 1 |    8216126.81
   126092 | Roc├¡o Aura          | Carrillo Rivera       |                 2 |    8209130.80
    89395 | Manuel              | Villamizar Parra      |                 1 |    8203831.43
   113489 | ├ëdgar Gustavo       | Cabrera Erazo         |                 1 |    8192190.73
   128699 | Mateo               | Burbano Londo├▒o       |                 1 |    8191071.72
   103432 | In├®s                | Polan├¡a L├│pez         |                 2 |    8157299.38
    42661 | Yeison              | ├ülvarez Zuluaga       |                 2 |    8133331.37
   115306 | Claudia Carmen      | Prada V├®lez           |                 2 |    8130103.67
   129733 | Gladys Adriana      | Cu├®llar Zapata        |                 2 |    8115513.84
   130329 | Heriberto Javier    | Ibarra Ruiz           |                 1 |    8113008.60
   138758 | Fanny Gladys        | Duarte Calder├│n       |                 1 |    8112195.06
     1530 | Andrea              | Sandoval Cu├®llar      |                 2 |    8105785.72
    17473 | Marleny             | S├ínchez Ortega        |                 1 |    8105569.22
    17227 | Carlos              | Chamorro Duarte       |                 1 |    8096856.90
    22288 | Sebasti├ín           | Pe├▒a Correa           |                 1 |    8095099.11
    58086 | Libardo             | P├®rez Mu├▒oz           |                 1 |    8073320.40
    74477 | Germ├ín              | Ruiz Guti├®rrez        |                 1 |    8050141.61
   118458 | Emilio              | Agudelo Su├írez        |                 1 |    8039040.21
   122689 | Alejandra           | Ibarra Rivera         |                 1 |    8033838.51
    21356 | Rodrigo             | Rangel Lasso          |                 1 |    8028045.61
     3946 | Abelardo Camilo     | Galvis Arias          |                 1 |    8019864.34
    94264 | Adriana             | Perdomo Restrepo      |                 1 |    8019057.56
    67873 | Ruth Manuela        | Jaimes Lasso          |                 1 |    8004949.03
    65392 | Miguel              | Cu├®llar Erazo         |                 1 |    8001376.46
    35850 | Andrea              | C├írdenas Molina       |                 1 |    8000946.32
    47016 | Javier              | Losada Ibarra         |                 1 |    7999635.84
    14044 | Javier              | Duarte Valencia       |                 1 |    7998354.24
    70577 | Leidy               | Rojas Prada           |                 1 |    7980559.13
    64412 | Rodrigo             | R├¡os Jaimes           |                 1 |    7977282.30
    79220 | Stella              | Jaimes Ruiz           |                 1 |    7951761.90
   135972 | Anc├¡zar             | Rojas Fl├│rez          |                 1 |    7931250.00
   116351 | Heriberto Andr├®s    | Cu├®llar Romero        |                 1 |    7928785.50
    52748 | Esperanza           | Bonilla Losada        |                 1 |    7927231.68
    26460 | Santiago            | Molina Ortega         |                 1 |    7924599.00
   106681 | Nubia Laura         | Giraldo P├®rez         |                 2 |    7914922.86
    46354 | Luisa               | Sandoval Fl├│rez       |                 1 |    7907619.76
    29389 | Iv├ín                | Ruiz Narv├íez          |                 2 |    7904154.79
   126731 | Gladys              | Barrera Jim├®nez       |                 1 |    7893004.67
   146884 | Elsa                | Fl├│rez Rangel         |                 1 |    7892107.70
   110060 | Marcela             | Pab├│n Cabrera         |                 1 |    7878223.62
    38378 | Patricia            | Tovar Bonilla         |                 1 |    7834941.62
   134680 | Efra├¡n              | Jim├®nez Caicedo       |                 1 |    7824522.93
    32730 | Natalia             | Galvis Pinz├│n         |                 1 |    7807939.50
    14265 | Efra├¡n              | Pinz├│n Mart├¡nez       |                 1 |    7805482.72
    24580 | Liliana             | Acevedo Quintero      |                 1 |    7803004.59
    60150 | Reinaldo            | Zapata Caicedo        |                 2 |    7788557.13
   147123 | Yuliana             | Torres Guti├®rrez      |                 1 |    7770817.40
   144039 | Gloria Manuela      | Rivera Cu├®llar        |                 2 |    7770046.62
    45242 | Daniel              | Castillo Parra        |                 1 |    7766249.76
   149088 | Rosa                | Mu├▒oz Calder├│n        |                 1 |    7764997.80
   127000 | Gustavo             | Garc├¡a Calder├│n       |                 1 |    7760151.88
    69542 | Carolina            | Giraldo Cabrera       |                 1 |    7758012.08
   141969 | Alejandra           | Arango Betancur       |                 2 |    7752769.24
   121272 | Juli├ín              | Guti├®rrez L├│pez       |                 1 |    7750770.51
   124550 | Ramiro              | Valencia Osorio       |                 1 |    7747975.40
    94107 | Santiago            | Romero Londo├▒o        |                 1 |    7728388.36
   127541 | Martha              | P├®rez Medina          |                 1 |    7727824.00
   148296 | Javier Nelson       | Medina Villamizar     |                 1 |    7720903.26
    53789 | Olga                | Lasso Ortega          |                 2 |    7716095.80
    68848 | Cecilia             | Medina Benavides      |                 1 |    7704379.20
   118658 | Mercedes Liliana    | Mosquera Ortiz        |                 1 |    7700245.44
    72431 | ├ôscar               | Villamizar Perdomo    |                 1 |    7700065.58
   101537 | Wilson              | Mej├¡a Barrera         |                 1 |    7692737.23
    48793 | Jazm├¡n Nubia        | Mart├¡nez Narv├íez      |                 2 |    7689500.84
    12261 | Martha Sof├¡a        | Vargas Erazo          |                 1 |    7688701.79
    87780 | Juliana Camila      | C├írdenas Pe├▒a         |                 1 |    7684931.65
    34668 | Amparo Cecilia      | Jaimes Cardona        |                 1 |    7677537.08
    40900 | Luisa               | Benavides Mora        |                 1 |    7675876.05
   127637 | Elsa                | V├®lez C├íceres         |                 1 |    7674062.27
    51961 | Ramiro              | Rodr├¡guez Jaimes      |                 2 |    7667137.96
    10874 | Mariana             | L├│pez Guti├®rrez       |                 1 |    7654011.60
    65121 | Alberto Wilmer      | Valencia Sandoval     |                 1 |    7641044.60
    98421 | Iv├ín Cristian       | Pinz├│n Mar├¡n          |                 1 |    7612037.70
    50581 | Juli├ín Anc├¡zar      | Serrano Quintero      |                 2 |    7609430.61
   113666 | Patricia            | Benavides Jaimes      |                 1 |    7609339.06
    90124 | Wilson              | Mar├¡n Osorio          |                 1 |    7605907.96
    97578 | Jorge Wilson        | Pe├▒a Fl├│rez           |                 1 |    7605631.98
    73333 | Juli├ín              | Polan├¡a Duque         |                 1 |    7604231.11
    90440 | Guillermo           | Delgado Contreras     |                 1 |    7601063.13
    56655 | Juli├ín              | Rojas Moreno          |                 1 |    7593345.18
    88383 | Abelardo Pedro      | Narv├íez Arango        |                 1 |    7593252.48
    33183 | Guillermo Francisco | ├ülvarez Bastidas      |                 1 |    7585169.35
   129421 | Isabella Leidy      | S├ínchez D├¡az          |                 1 |    7563876.84
    25426 | Mateo               | Jaimes Calder├│n       |                 1 |    7542663.12
    88749 | Jazm├¡n              | Vargas Valencia       |                 1 |    7542524.73
   131387 | Arturo              | S├ínchez Delgado       |                 1 |    7539454.51
    49215 | Teresa              | Lasso Pinz├│n          |                 1 |    7524008.97
    36852 | Beatriz             | Castillo Narv├íez      |                 1 |    7505830.80
    83902 | Martha              | Prada Narv├íez         |                 1 |    7499226.49
     2702 | In├®s                | Quintero Guti├®rrez    |                 1 |    7497751.47
    41396 | Rodrigo             | Rodr├¡guez Rojas       |                 1 |    7486691.04
     5301 | Leidy               | ├ülvarez Fl├│rez        |                 1 |    7478378.90
    99313 | Efra├¡n              | Pe├▒a Lozano           |                 1 |    7474873.18
    58492 | Lorena              | Quintero Osorio       |                 1 |    7473531.79
    88258 | Heriberto Felipe    | Chamorro Gonz├ílez     |                 1 |    7467439.44
    56796 | Gloria              | Osorio Giraldo        |                 1 |    7464147.67
    98896 | Yolanda             | Rodr├¡guez Villamizar  |                 1 |    7440965.01
   148076 | Manuel              | Arias Salazar         |                 1 |    7437259.62
    50424 | Juan                | Ortega Delgado        |                 1 |    7433648.88
    11830 | Efra├¡n              | Vera Osorio           |                 2 |    7430522.82
    89802 | Mateo               | Pe├▒a Perdomo          |                 2 |    7412784.66
   112061 | Sandra              | Herrera Zuluaga       |                 1 |    7408520.10
   111119 | Patricia            | Betancur Medina       |                 1 |    7391712.89
    38982 | Esperanza           | Quintero R├¡os         |                 1 |    7390790.40
    94844 | Rodrigo             | Contreras Arias       |                 1 |    7384200.41
   103616 | Gloria              | S├ínchez Bedoya        |                 1 |    7371633.58
    96981 | Isabella            | Cabrera Vera          |                 1 |    7370257.93
    89131 | ├ëdgar Pedro         | ├ülvarez Acevedo       |                 1 |    7369632.12
    45194 | Nicol├ís Wilmer      | Castro Garc├¡a         |                 1 |    7363241.76
   130195 | Daniela             | Serrano Bastidas      |                 2 |    7346623.78
    77716 | Camila Amparo       | Lozano Pe├▒a           |                 1 |    7345036.02
   106571 | Gladys              | Ni├▒o Arango           |                 1 |    7331713.22
   103551 | Orlando Gustavo     | Benavides Rangel      |                 2 |    7330026.12
   100547 | Mateo               | Henao Guti├®rrez       |                 1 |    7301617.47
    92914 | Claudia             | ├ülvarez Henao         |                 1 |    7281355.90
   118854 | Blanca              | D├¡az Caicedo          |                 1 |    7273020.29
   104927 | Elsa                | G├│mez Barrera         |                 1 |    7271058.12
    26092 | Jaime               | Agudelo Su├írez        |                 1 |    7269015.82
   115840 | Edilma              | Arango Tovar          |                 1 |    7265243.19
    52453 | Myriam              | Perdomo Sandoval      |                 1 |    7261395.84
    92843 | Mario               | Benavides Narv├íez     |                 1 |    7248747.13
   100420 | Alberto Sebasti├ín   | Mora Carrillo         |                 2 |    7248632.93
   142177 | Andr├®s              | Sandoval Cardona      |                 1 |    7240840.00
    34390 | Hugo                | Narv├íez Torres        |                 1 |    7223972.47
      365 | Myriam Marcela      | R├¡os Chamorro         |                 1 |    7222495.05
    40820 | Rafael              | Prada Bedoya          |                 1 |    7222220.60
    97346 | Mario An├¡bal        | Ospina Cardona        |                 1 |    7219164.24
   116037 | Arturo              | Vera C├íceres          |                 1 |    7219093.27
    21390 | Brayan              | Uribe Romero          |                 1 |    7217634.60
   127642 | Nubia Mercedes      | Montoya Medina        |                 1 |    7214647.20
   102293 | Juli├ín              | Duarte Silva          |                 1 |    7211811.83
    24164 | Nubia               | Garc├¡a P├®rez          |                 1 |    7200072.36
   135052 | Mario               | Jim├®nez Burbano       |                 1 |    7199771.79
   129248 | Rosa                | Zapata Contreras      |                 1 |    7198697.44
    27353 | Liliana Alba        | Rinc├│n Mosquera       |                 1 |    7198321.96
    98247 | Wilson              | Trujillo ├ülvarez      |                 1 |    7196586.84
    13049 | Francisco Germ├ín    | Rangel P├®rez          |                 1 |    7184399.16
    36021 | Samuel              | Villamizar Erazo      |                 1 |    7175905.83
    39004 | Ramiro              | Pab├│n Mart├¡nez        |                 1 |    7170053.45
    87077 | Abelardo            | P├®rez Mu├▒oz           |                 2 |    7169266.62
    35417 | Wilmer              | Quintero Castillo     |                 1 |    7165660.95
   133739 | Ana                 | Zuluaga Mora          |                 1 |    7164832.60
    52129 | Yuliana             | Galvis Rojas          |                 1 |    7159762.50
   126245 | Efra├¡n              | Betancur Mart├¡nez     |                 1 |    7158810.54
   135933 | Mar├¡a               | Salazar Giraldo       |                 1 |    7154193.13
   100599 | Juliana Yolanda     | Bastidas Mu├▒oz        |                 1 |    7144190.82
   141882 | Alberto             | Salazar Trujillo      |                 2 |    7133246.37
    82009 | Viviana Liliana     | Parra Moreno          |                 1 |    7132517.23
    71251 | Reinaldo            | Rojas Trujillo        |                 2 |    7120475.60
    34419 | Fabio Arturo        | Galvis Jaimes         |                 1 |    7115104.58
     7774 | Felipe              | Arango Rodr├¡guez      |                 2 |    7110440.51
    65644 | Alejandro           | Zuluaga Benavides     |                 1 |    7109823.60
    48879 | Sara                | Lasso Montoya         |                 1 |    7082645.20
    92378 | Luz                 | Barrera Mu├▒oz         |                 1 |    7072650.29
   121173 | Nicol├ís             | Guti├®rrez Prada       |                 1 |    7065251.84
    88770 | Mar├¡a Elsa          | Duarte Cu├®llar        |                 1 |    7061816.74
    66433 | Mar├¡a               | Rinc├│n Chamorro       |                 1 |    7061252.18
    25167 | Libardo Hugo        | Rivera R├¡os           |                 2 |    7060454.48
    40388 | Olga                | Pab├│n Salazar         |                 1 |    7060323.40
    21141 | Erika               | Ramos Galvis          |                 2 |    7050985.64
    25861 | Orlando             | Hern├índez Serrano     |                 1 |    7047902.21
   103621 | Leidy Viviana       | Contreras Uribe       |                 1 |    7046554.05
   103696 | Francisco Abelardo  | Lozano Vargas         |                 1 |    7045834.14
   127366 | Efra├¡n              | Moreno Romero         |                 1 |    7042312.11
    80275 | Camilo              | Giraldo Zapata        |                 1 |    7040721.90
   106006 | Ricardo             | Uribe Cardona         |                 1 |    7032909.20
    10154 | Mauricio            | Duarte Mora           |                 1 |    7031887.50
    13245 | An├¡bal Gustavo      | Herrera C├írdenas      |                 1 |    7026226.60
   129083 | Yeison              | Guti├®rrez Vargas      |                 1 |    7017283.16
    60514 | Jaime Jairo         | Mej├¡a Lasso           |                 1 |    7009049.31
    71735 | Nelson Jorge        | Su├írez P├®rez          |                 1 |    7006259.15
    62819 | Reinaldo            | V├®lez Barrera         |                 1 |    7005907.41
   129236 | Sebasti├ín           | Lasso Fl├│rez          |                 1 |    7004036.68
    13652 | Diana               | Hern├índez Ortiz       |                 1 |    7003870.19
   101171 | Rafael              | Benavides Restrepo    |                 1 |    7000457.88
     2771 | Isabella Natalia    | Erazo Ospina          |                 1 |    6997711.60
    68651 | Esperanza           | Osorio C├íceres        |                 1 |    6997137.28
    19716 | Laura               | Berm├║dez Ruiz         |                 1 |    6996002.06
    99278 | Gustavo Rub├®n       | Polan├¡a Lasso         |                 1 |    6992087.23
    12514 | Brayan              | Erazo Uribe           |                 1 |    6980257.20
   102199 | Wilson              | C├íceres Fl├│rez        |                 1 |    6979155.51
    67819 | ├ôscar               | Carrillo Ospina       |                 1 |    6976064.68
    21768 | Leidy               | Duque Benavides       |                 1 |    6973012.62
    98779 | Marcela             | Uribe Lozano          |                 1 |    6970513.80
    20688 | Libardo             | Pinz├│n Vera           |                 1 |    6966006.36
    39077 | Arturo              | C├írdenas Lozano       |                 1 |    6960137.90
    78813 | Brayan Heriberto    | Agudelo R├¡os          |                 1 |    6957197.77
     8813 | Ramiro              | Bastidas Agudelo      |                 1 |    6956122.42
    85864 | Edilma              | Hern├índez Pinz├│n      |                 1 |    6952638.24
     2734 | Carmen              | Ortega Delgado        |                 1 |    6949934.04
    90312 | Marleny             | Herrera Villamizar    |                 1 |    6948485.27
   105995 | Libardo             | Torres R├¡os           |                 1 |    6942683.15
    93708 | Camilo              | Mej├¡a Betancur        |                 1 |    6941195.82
   143807 | Mar├¡a               | Ni├▒o L├│pez            |                 1 |    6941172.41
   101033 | Isabella            | Serrano S├ínchez       |                 1 |    6922819.28
   125951 | Rosa                | Serrano C├íceres       |                 1 |    6920955.26
   110600 | Arturo              | C├íceres Contreras     |                 1 |    6917933.57
    32981 | Esperanza           | Gonz├ílez Rinc├│n       |                 1 |    6917468.04
   146300 | Sebasti├ín           | Su├írez Trujillo       |                 1 |    6915865.17
    53116 | Germ├ín              | Ram├¡rez Barrera       |                 2 |    6913103.90
    26280 | Rafael Pedro        | Ibarra D├¡az           |                 1 |    6910022.28
    58384 | Andrea              | Valencia Vera         |                 1 |    6906194.61
    95022 | Mario               | Bedoya Lasso          |                 1 |    6905139.00
    94725 | Ruth                | Caicedo Quintero      |                 1 |    6899072.37
    60832 | Leidy               | Bonilla Ortega        |                 1 |    6896951.74
    31874 | Pedro               | Losada Parra          |                 1 |    6894996.49
   145016 | Iv├ín                | Cardona Lozano        |                 1 |    6894871.39
    11697 | Luc├¡a               | Ibarra Medina         |                 1 |    6894018.54
    99416 | Esperanza Mercedes  | Herrera Pab├│n         |                 1 |    6893950.05
   143750 | Sof├¡a Valentina     | Romero Polan├¡a        |                 2 |    6873777.01
    10133 | Esperanza Sandra    | Herrera Mart├¡nez      |                 1 |    6870719.78
   138362 | Heriberto           | G├│mez Prada           |                 1 |    6870252.41
    62504 | Mario               | Valencia Burbano      |                 1 |    6861268.98
   144639 | Javier              | Carrillo Pe├▒a         |                 1 |    6859402.77
    86286 | Nubia               | Ospina Romero         |                 1 |    6846362.72
    21514 | Alejandra           | Jaimes Zapata         |                 1 |    6838992.00
   145319 | ├ôscar Orlando       | Delgado Lasso         |                 1 |    6835035.61
    70068 | Brayan Wilson       | Torres Garc├¡a         |                 1 |    6825580.50
    12626 | Jairo Wilson        | Pab├│n Zuluaga         |                 1 |    6823653.76
   103434 | Yolanda Olga        | Correa Londo├▒o        |                 1 |    6816150.73
   111491 | In├®s                | Torres Mart├¡nez       |                 1 |    6810960.00
   144676 | Wilson              | P├®rez Garc├¡a          |                 1 |    6808273.24
   104598 | Mariana             | P├®rez Zapata          |                 1 |    6803973.00
    24309 | Lorena              | Prada Acevedo         |                 1 |    6792749.68
   136094 | Juan                | Ibarra Rodr├¡guez      |                 1 |    6790026.47
    74729 | Efra├¡n              | Chamorro Erazo        |                 1 |    6789956.71
    62307 | Yuliana             | Bedoya Jim├®nez        |                 2 |    6783761.52
   130130 | Mariana             | Carrillo Mart├¡nez     |                 1 |    6783337.80
    29446 | Fernando Rub├®n      | Ruiz Perdomo          |                 1 |    6782189.46
    66701 | Diana               | Pinz├│n Sandoval       |                 1 |    6779278.01
    75633 | Pedro               | Berm├║dez Acevedo      |                 1 |    6777083.50
    50460 | Esperanza           | P├®rez Villamizar      |                 1 |    6773287.50
    60788 | Guillermo           | Ospina Ni├▒o           |                 1 |    6766272.22
    11333 | Claudia             | Cu├®llar Parra         |                 2 |    6765374.26
   131582 | Mateo               | Delgado Mosquera      |                 1 |    6762059.64
    87416 | Diego               | Sandoval Restrepo     |                 1 |    6758238.15
   118057 | Juliana             | Prada Rinc├│n          |                 1 |    6752131.92
    56120 | Gilberto            | Restrepo Jaimes       |                 1 |    6750398.29
   130284 | Wilson              | Valencia Valencia     |                 2 |    6748298.55
   131279 | Nubia               | Agudelo C├írdenas      |                 2 |    6746219.61
   131027 | In├®s Leidy          | Losada Osorio         |                 2 |    6741773.29
    87247 | Jos├®                | Correa Erazo          |                 1 |    6738901.25
   102447 | Jaime Manuel        | Contreras Bonilla     |                 1 |    6735279.30
   100282 | Esteban             | Trujillo Su├írez       |                 1 |    6728190.55
      872 | Javier              | Arango Lozano         |                 1 |    6727518.00
    93946 | Anc├¡zar             | Duque Pab├│n           |                 1 |    6724777.56
   106902 | Elsa Beatriz        | Ni├▒o Ortiz            |                 1 |    6721179.03
    11474 | Manuela             | Castro P├®rez          |                 1 |    6720073.20
    96575 | Esperanza           | Perdomo Torres        |                 1 |    6719655.40
    82331 | Heriberto           | Quintero Ruiz         |                 1 |    6715696.36
    86467 | Gustavo             | Barrera Benavides     |                 1 |    6714604.90
    57712 | Daniela Cecilia     | Medina Henao          |                 1 |    6713056.71
    96567 | H├®ctor              | Contreras Duarte      |                 1 |    6712739.70
   147672 | Jaime               | ├ülvarez Parra         |                 1 |    6711806.88
   113805 | Mariana             | R├¡os Ospina           |                 1 |    6708134.30
   125614 | Paola Marleny       | Delgado Bonilla       |                 1 |    6707898.12
    50533 | In├®s Marcela        | Losada Berm├║dez       |                 2 |    6699815.29
    68691 | Nubia               | Polan├¡a Mosquera      |                 2 |    6695790.86
   143265 | Aura                | Lasso Rojas           |                 1 |    6694492.30
     4417 | Teresa              | S├ínchez Torres        |                 2 |    6693500.00
   146020 | Nelson Mateo        | Agudelo Bastidas      |                 1 |    6689182.08
    29805 | Nelson              | Garc├¡a Osorio         |                 1 |    6681922.08
    47498 | Aura                | Lasso Mart├¡nez        |                 1 |    6678605.20
    31317 | ├ülvaro              | Medina Ruiz           |                 1 |    6674145.28
   135005 | Francisco           | G├│mez Mora            |                 1 |    6673310.39
    13847 | Yuliana             | Losada Cardona        |                 1 |    6671713.66
    24171 | ├ülvaro Emilio       | Moreno Correa         |                 2 |    6670657.96
    34070 | Esteban             | Restrepo Henao        |                 1 |    6668929.57
    13028 | Juan                | Londo├▒o Tovar         |                 1 |    6660865.71
   114054 | Beatriz             | Rodr├¡guez Arango      |                 1 |    6658889.23
    93103 | Fanny               | Rivera Carrillo       |                 1 |    6656807.30
   120063 | In├®s                | Uribe Parra           |                 1 |    6654133.08
     1166 | Yolanda             | Prada Fl├│rez          |                 2 |    6653646.16
     2941 | Ricardo             | Cu├®llar Bonilla       |                 1 |    6653210.04
   118993 | Fanny Alba          | Betancur Benavides    |                 2 |    6651971.02
   134838 | Wilson Guillermo    | Duque Carrillo        |                 1 |    6643359.63
    74954 | Andrea              | Romero Silva          |                 1 |    6640640.73
     9517 | Javier Fabio        | Lasso Berm├║dez        |                 1 |    6637691.10
     6521 | Felipe              | Berm├║dez Guerrero     |                 1 |    6635850.84
    19947 | Mariana             | Arango Parra          |                 1 |    6632323.76
   145504 | Sandra              | Silva Cu├®llar         |                 1 |    6631489.68
    70564 | Jos├®                | Vargas Villamizar     |                 1 |    6630154.50
    83398 | Elsa                | Pinz├│n Jim├®nez        |                 1 |    6629287.49
    45936 | Amparo              | Vera Betancur         |                 1 |    6628377.60
    44439 | Daniela             | Quintero Guerrero     |                 1 |    6620152.00
    38937 | Orlando             | L├│pez S├ínchez         |                 1 |    6619799.20
    66780 | Fanny               | Narv├íez Jaimes        |                 2 |    6618319.67
    34779 | Emilio              | Montoya Giraldo       |                 1 |    6618166.83
    23995 | Orlando             | Ruiz Guerrero         |                 2 |    6617489.81
   116190 | Martha              | Pab├│n Herrera         |                 1 |    6613219.16
    51221 | Antonio Alberto     | Ortega Correa         |                 1 |    6613076.48
    60984 | Mario               | S├ínchez Cu├®llar       |                 1 |    6602138.16
    66135 | Iv├ín                | Ospina V├®lez          |                 2 |    6600306.94
   109448 | Teresa              | Ruiz C├írdenas         |                 1 |    6598581.00
    34202 | Myriam              | Losada Duque          |                 1 |    6593941.88
   105135 | Manuel              | Carrillo Romero       |                 1 |    6587756.80
     2017 | Diana               | Berm├║dez Torres       |                 1 |    6587326.05
   104835 | Lorena              | Rivera Quintero       |                 1 |    6586769.20
    19542 | Luz                 | Burbano Cardona       |                 1 |    6586297.48
    15519 | Heriberto           | Cardona Caicedo       |                 1 |    6585220.38
    37532 | Camilo Jos├®         | Serrano Rivera        |                 1 |    6584962.70
    33736 | Andr├®s              | C├írdenas Garc├¡a       |                 1 |    6568151.10
   119563 | Fernando            | Narv├íez Tovar         |                 1 |    6562461.70
    24796 | Francisco           | Ibarra Lasso          |                 1 |    6551868.40
    38117 | Samuel Gustavo      | Zapata Ortega         |                 1 |    6550634.70
   125731 | Stella              | Ibarra Castro         |                 2 |    6547807.98
    33053 | Germ├ín              | Mart├¡nez Contreras    |                 1 |    6546725.12
    49848 | Myriam Natalia      | Arias Silva           |                 1 |    6543523.55
   123866 | Mateo               | Correa C├írdenas       |                 1 |    6540516.66
    92342 | Rafael              | Bonilla Lasso         |                 1 |    6535112.48
    82763 | Iv├ín                | Narv├íez Ram├¡rez       |                 1 |    6533776.47
   128919 | Liliana             | Parra Perdomo         |                 1 |    6530423.80
   102114 | Mercedes Claudia    | Ruiz Ibarra           |                 1 |    6522336.32
    74249 | Claudia Natalia     | Calder├│n Lasso        |                 2 |    6514529.74
   121960 | Antonio             | Rinc├│n Tovar          |                 2 |    6513808.83
   127076 | Isabella            | Cabrera Hern├índez     |                 1 |    6509500.00
   145836 | Hugo                | D├¡az ├ülvarez          |                 1 |    6508501.75
   137041 | Nubia Daniela       | Narv├íez Vargas        |                 2 |    6503126.40
    82835 | Brayan              | Ni├▒o Ram├¡rez          |                 1 |    6502898.16
    70604 | ├ôscar               | Mart├¡nez Betancur     |                 1 |    6502862.32
   111579 | Carlos              | Osorio Fl├│rez         |                 1 |    6500572.65
   127840 | Juliana             | Burbano Romero        |                 1 |    6498220.64
   131721 | Mateo               | Ortiz Uribe           |                 2 |    6497425.84
    58287 | Iv├ín                | Bastidas Osorio       |                 1 |    6496569.45
    86987 | Alejandro           | G├│mez Narv├íez         |                 1 |    6494925.50
    88849 | Andrea Edilma       | Bedoya Castillo       |                 1 |    6494179.86
   120286 | Juliana             | Bedoya Cardona        |                 1 |    6492756.48
    56284 | ├ôscar               | Ni├▒o Cu├®llar          |                 2 |    6489318.16
     5427 | Miguel              | Quintero Parra        |                 1 |    6488849.99
   110884 | Javier Santiago     | Mu├▒oz Rangel          |                 2 |    6484591.00
   115687 | Laura               | Acevedo P├®rez         |                 1 |    6479392.92
     9305 | Javier              | Zapata Trujillo       |                 2 |    6479014.32
    32456 | Adriana             | Correa Castillo       |                 2 |    6475798.19
    19195 | Liliana             | Medina Galvis         |                 1 |    6473586.18
    19050 | Hugo                | Osorio Erazo          |                 1 |    6467386.86
    30040 | Wilmer Gilberto     | Narv├íez Caicedo       |                 1 |    6464896.28
    51334 | Mauricio Gustavo    | Burbano Rinc├│n        |                 1 |    6461427.69
   124723 | Jazm├¡n              | Delgado V├®lez         |                 1 |    6452452.16
   119356 | Pedro               | Duque Chamorro        |                 1 |    6448549.44
   148743 | Arturo              | Vera Pab├│n            |                 1 |    6442043.49
     5619 | Wilson Pedro        | Agudelo Pinz├│n        |                 1 |    6441773.77
     7799 | Esperanza           | Bedoya Pab├│n          |                 1 |    6440799.80
    86311 | Andrea              | Betancur Carrillo     |                 1 |    6439951.23
    43529 | Luc├¡a Blanca        | Acevedo Cardona       |                 1 |    6439190.59
    97466 | Jairo               | Arango Cabrera        |                 1 |    6435384.55
    56212 | Leidy               | Delgado Vargas        |                 1 |    6421465.06
    19649 | David Germ├ín        | Mu├▒oz Ni├▒o            |                 1 |    6420903.30
    20340 | Alejandro           | Calder├│n Tovar        |                 1 |    6419885.00
     2077 | Gladys              | Garc├¡a Henao          |                 1 |    6419586.80
    47840 | Mauricio            | Cardona Hern├índez     |                 2 |    6410075.36
    91242 | Pedro               | Guti├®rrez Ibarra      |                 2 |    6408292.34
   111568 | Adriana             | Burbano Rangel        |                 1 |    6407575.98
    51396 | Patricia            | Jaimes Guerrero       |                 1 |    6405362.54
    71625 | Nelson              | Pinz├│n Polan├¡a        |                 1 |    6401724.86
   139551 | Lorena Esperanza    | L├│pez Barrera         |                 1 |    6399766.11
   113271 | H├®ctor              | Rinc├│n Burbano        |                 2 |    6399397.17
    21991 | Wilson              | Henao Agudelo         |                 1 |    6395020.73
    84998 | Camilo              | S├ínchez Tovar         |                 1 |    6394248.64
     5880 | Liliana             | Henao Cardona         |                 1 |    6390731.08
    80032 | Iv├ín Libardo        | Chamorro Galvis       |                 1 |    6389067.50
        4 | Jaime               | Erazo Torres          |                 1 |    6383542.95
     9690 | Myriam              | Pe├▒a Mosquera         |                 1 |    6374736.94
    34707 | Ricardo Gilberto    | Zuluaga Chamorro      |                 1 |    6367967.55
   148583 | Antonio             | Villamizar Correa     |                 1 |    6365517.52
    93072 | Yesenia             | C├írdenas Londo├▒o      |                 1 |    6361668.78
    54770 | Esperanza           | Carrillo Caicedo      |                 1 |    6360537.17
    61216 | Juliana             | S├ínchez Osorio        |                 1 |    6357170.71
   101003 | Javier              | Castro Bastidas       |                 1 |    6348502.75
     1603 | Gustavo             | Ortega Quintero       |                 1 |    6341153.61
     5470 | Carolina            | ├ülvarez Rojas         |                 1 |    6338785.26
   146661 | Arturo Jairo        | Mora Galvis           |                 1 |    6334511.37
    47405 | Sof├¡a               | Ram├¡rez Pinz├│n        |                 1 |    6334447.39
    57075 | Gilberto            | Mu├▒oz Berm├║dez        |                 2 |    6329875.27
    28821 | Gloria              | Mar├¡n Pab├│n           |                 1 |    6328653.76
    90215 | Luisa               | Delgado Medina        |                 1 |    6324485.88
    34956 | Adriana             | C├íceres G├│mez         |                 1 |    6323690.58
    36161 | Camila              | Caicedo Cardona       |                 1 |    6320383.84
   136744 | ├ülvaro              | Guerrero Trujillo     |                 1 |    6313435.75
   115779 | Javier              | Bastidas Fl├│rez       |                 1 |    6309588.96
   101251 | Jazm├¡n              | Narv├íez Tovar         |                 1 |    6308102.98
    22523 | Rub├®n               | Jim├®nez Jaimes        |                 1 |    6306128.88
   133188 | Alejandro Felipe    | Acevedo Giraldo       |                 1 |    6305728.11
   103914 | Carolina            | Guti├®rrez Cu├®llar     |                 1 |    6303611.03
   112958 | Luisa Luc├¡a         | Lasso Su├írez          |                 1 |    6302926.52
    88826 | Rafael              | Molina Ni├▒o           |                 1 |    6301362.69
    58254 | Roc├¡o               | Ramos Ibarra          |                 1 |    6299088.38
    68278 | Carlos              | Mar├¡n Su├írez          |                 1 |    6294534.12
    41288 | Isabella            | Caicedo Quintero      |                 1 |    6284844.66
    95443 | ├ülvaro              | R├¡os L├│pez            |                 1 |    6280617.80
   135792 | Nelson              | P├®rez Bonilla         |                 1 |    6272358.40
   141253 | Mercedes            | Herrera Garc├¡a        |                 1 |    6271623.62
    69057 | Juan                | Londo├▒o Ospina        |                 2 |    6264920.57
    43491 | Sara                | Polan├¡a Mora          |                 1 |    6262127.28
    13483 | ├ëdgar               | Perdomo Mej├¡a         |                 1 |    6262043.19
    79728 | Efra├¡n              | Duarte Pab├│n          |                 1 |    6258607.95
    92411 | Wilson Hernando     | Restrepo Rivera       |                 1 |    6257678.33
    22862 | Nicol├ís             | Pinz├│n Ramos          |                 1 |    6252636.60
    50309 | Yuliana Marcela     | Berm├║dez Mosquera     |                 1 |    6251767.59
    11076 | Alejandro           | Arias Mora            |                 1 |    6250579.41
   143504 | Alba Mariana        | Valencia Gonz├ílez     |                 1 |    6250423.65
   129096 | Dora                | C├íceres Correa        |                 1 |    6248657.61
    75936 | Francisco Abelardo  | Duarte C├írdenas       |                 1 |    6246118.19
    47762 | Jos├®                | Fl├│rez Mar├¡n          |                 1 |    6240980.76
    18056 | Alberto             | Cardona Galvis        |                 1 |    6239095.45
   127471 | Nelson              | Restrepo Arango       |                 1 |    6239054.40
    29136 | Daniela Lorena      | Osorio Polan├¡a        |                 1 |    6237770.32
    92874 | Leidy Mercedes      | Bastidas Villamizar   |                 1 |    6234765.88
   119066 | Emilio              | Cu├®llar Vargas        |                 1 |    6233565.32
    51654 | Hernando            | Restrepo Jaimes       |                 1 |    6229993.68
    88809 | Erika               | Guti├®rrez Sandoval    |                 1 |    6229070.80
    46689 | Adriana             | Torres Rinc├│n         |                 1 |    6226769.16
    64405 | Luis                | Ni├▒o Narv├íez          |                 1 |    6224279.40
    88754 | Mateo Arturo        | Jim├®nez Ospina        |                 1 |    6224092.34
    40743 | Cecilia             | Barrera Trujillo      |                 1 |    6219581.20
   144982 | Jaime Rub├®n         | Su├írez Bastidas       |                 1 |    6219207.75
    93515 | An├¡bal              | Salazar Rangel        |                 1 |    6218203.48
      629 | Jorge               | Duque Gonz├ílez        |                 1 |    6217826.80
   125879 | Ricardo             | Lozano L├│pez          |                 1 |    6215764.17
    97880 | Yeison              | Medina Caicedo        |                 1 |    6214421.20
     2136 | ├ülvaro              | Montoya Chamorro      |                 1 |    6210363.43
   149381 | Rafael Orlando      | Guerrero Vargas       |                 1 |    6200722.30
      427 | ├ôscar Jaime         | Villamizar Bedoya     |                 2 |    6198706.88
    21122 | Rodrigo Ricardo     | Barrera Mosquera      |                 1 |    6195376.70
    17376 | M├│nica              | Serrano Montoya       |                 1 |    6191380.08
    53730 | Hugo Javier         | Henao Betancur        |                 1 |    6190340.52
    13091 | Nicol├ís             | Ruiz Osorio           |                 1 |    6189703.14
    34416 | Yuliana Diana       | Contreras Rivera      |                 1 |    6188021.20
    43461 | Dora                | Lozano Guerrero       |                 1 |    6187991.80
    25159 | Diego               | P├®rez Mej├¡a           |                 1 |    6187962.60
    69387 | Fernando            | Herrera Galvis        |                 1 |    6187454.50
   105366 | Jazm├¡n              | Fl├│rez L├│pez          |                 1 |    6187355.81
    24150 | Andrea              | Caicedo Zapata        |                 1 |    6184008.88
   108186 | Gladys              | Perdomo Lasso         |                 1 |    6182157.27
    30612 | Camila              | Mar├¡n Erazo           |                 1 |    6181676.80
    66059 | Mateo               | L├│pez Cardona         |                 1 |    6179945.35
    27286 | Brayan              | Arias C├írdenas        |                 1 |    6179839.27
    98492 | Liliana             | Londo├▒o Castillo      |                 1 |    6177825.83
    76214 | Camila              | Mej├¡a Vargas          |                 1 |    6174899.11
    47885 | Cecilia Manuela     | Ram├¡rez Zuluaga       |                 1 |    6174419.40
   101681 | Yolanda Cecilia     | Medina Burbano        |                 1 |    6171557.18
    76589 | Francisco Heriberto | C├írdenas Mart├¡nez     |                 2 |    6169053.02
    44119 | Mateo               | Vargas Arias          |                 1 |    6164489.52
    18893 | David               | Hern├índez Osorio      |                 1 |    6163082.10
     6862 | Mario               | Vera Cabrera          |                 1 |    6162500.48
   115898 | Luc├¡a               | Fl├│rez Herrera        |                 1 |    6162029.69
    18319 | Andr├®s Wilson       | Mosquera Pinz├│n       |                 1 |    6161022.08
   116131 | Nelson              | Bastidas Bedoya       |                 1 |    6158632.44
   149648 | Guillermo           | Mej├¡a Arias           |                 1 |    6155282.01
   125489 | Camila              | Osorio Bedoya         |                 1 |    6154787.98
   140931 | Fabio               | Pe├▒a Calder├│n         |                 1 |    6153763.70
    12742 | Esperanza           | L├│pez Henao           |                 1 |    6152342.02
     7178 | Hugo                | Mu├▒oz Chamorro        |                 1 |    6151990.65
    64837 | Andr├®s Yeison       | Quintero Rivera       |                 1 |    6151040.35
    42699 | Guillermo Francisco | Ospina Torres         |                 1 |    6148233.96
    21282 | Mario               | Lozano L├│pez          |                 1 |    6142454.01
   109291 | Valentina           | Rodr├¡guez ├ülvarez     |                 1 |    6142379.58
     2067 | Alba Blanca         | Trujillo Serrano      |                 1 |    6139786.98
   129480 | Beatriz             | Prada Pe├▒a            |                 1 |    6136471.78
    85006 | Rafael              | Molina Vargas         |                 1 |    6136130.44
    98655 | Wilmer Juli├ín       | Su├írez V├®lez          |                 1 |    6131312.58
   139130 | David               | Rivera Pe├▒a           |                 1 |    6123920.40
    78438 | Leidy               | Delgado Sandoval      |                 1 |    6123908.85
     5835 | Javier Mauricio     | Duque Jaimes          |                 1 |    6123867.36
   112472 | Diego H├®ctor        | Benavides Ni├▒o        |                 1 |    6121570.74
    96276 | Alberto             | Moreno ├ülvarez        |                 1 |    6119875.50
   113843 | Rodrigo             | Uribe Duque           |                 1 |    6118062.85
   129811 | Juliana             | Carrillo Serrano      |                 1 |    6116230.53
    18737 | Gladys              | Agudelo Ruiz          |                 1 |    6115536.57
   113708 | Santiago            | Mar├¡n ├ülvarez         |                 1 |    6114585.11
    37980 | Emilio              | Pe├▒a Duque            |                 1 |    6106857.60
   135083 | Nelson              | Garc├¡a Moreno         |                 1 |    6105515.00
   134561 | Alberto             | Rinc├│n Torres         |                 1 |    6102393.43
    71016 | Abelardo            | Londo├▒o Contreras     |                 1 |    6100938.56
   135398 | Stella Fanny        | Garc├¡a Zapata         |                 1 |    6087882.20
    16031 | Leidy               | D├¡az Ortiz            |                 1 |    6087809.85
   110290 | Andr├®s              | Mora Rangel           |                 1 |    6086015.00
   135451 | Fabio               | Delgado S├ínchez       |                 1 |    6080133.95
    11593 | Arturo              | Galvis Perdomo        |                 1 |    6079114.80
   136566 | Jazm├¡n              | G├│mez Rangel          |                 1 |    6075211.82
   139117 | Alberto             | Tovar Calder├│n        |                 1 |    6075018.00
   106121 | ├ülvaro              | Hern├índez Betancur    |                 1 |    6073706.73
   111989 | Martha              | Duarte R├¡os           |                 1 |    6072500.70
   141093 | Germ├ín Jairo        | Vargas Mart├¡nez       |                 1 |    6070571.39
   123963 | Libardo             | Delgado Rangel        |                 1 |    6067912.68
   132742 | H├®ctor              | Valencia Duque        |                 1 |    6063768.00
   106977 | Mercedes M├│nica     | ├ülvarez Villamizar    |                 1 |    6059459.37
    79488 | An├¡bal              | S├ínchez Pab├│n         |                 1 |    6056965.06
    78371 | Paola               | Parra Ospina          |                 1 |    6056646.53
    32853 | Anc├¡zar             | Ospina Bedoya         |                 1 |    6054755.70
    43517 | Alejandro           | Molina Giraldo        |                 1 |    6053685.96
    55208 | Lorena              | P├®rez Montoya         |                 1 |    6052691.68
   129352 | Samuel              | Ramos Rojas           |                 1 |    6051124.48
   147266 | Wilmer              | Rodr├¡guez Burbano     |                 1 |    6049523.80
    36177 | In├®s                | Rojas Cabrera         |                 1 |    6042335.00
    11394 | Aura                | Torres Londo├▒o        |                 1 |    6038754.77
    95887 | Guillermo           | Valencia Arias        |                 1 |    6037768.93
    95687 | ├ôscar               | Duarte Rinc├│n         |                 1 |    6035337.88
     8855 | Patricia Sandra     | Hern├índez Cabrera     |                 1 |    6035070.72
    84999 | Andrea              | Correa Rinc├│n         |                 1 |    6033241.11
     4329 | Felipe              | V├®lez Medina          |                 1 |    6032806.71
    28427 | Alejandro           | C├írdenas Guti├®rrez    |                 2 |    6032720.07
    47334 | Luz Yolanda         | Guerrero Vargas       |                 1 |    6028645.10
   147347 | Andrea Ana          | Torres Barrera        |                 1 |    6027115.10
    38032 | M├│nica Nicol├ís      | Betancur Molina       |                 1 |    6026929.47
    87934 | Arturo Wilson       | Carrillo Henao        |                 1 |    6025957.89
   149128 | Paola               | Ni├▒o Agudelo          |                 1 |    6024047.30
    74855 | Sebasti├ín           | Rodr├¡guez Silva       |                 1 |    6023871.75
   126917 | Fernando Manuel     | Bonilla Zuluaga       |                 1 |    6022353.61
    66592 | Cecilia             | Prada Torres          |                 1 |    6018284.83
    38130 | Nubia Sara          | Tovar Castro          |                 2 |    6017378.28
    34161 | Abelardo            | Ram├¡rez Pab├│n         |                 1 |    6016020.80
    33260 | Luisa               | Vargas Arango         |                 1 |    6015121.44
    25718 | Mauricio            | Mora Erazo            |                 1 |    6014935.29
     4027 | Mariana             | D├¡az Romero           |                 1 |    6013296.30
    55156 | Stella              | Chamorro Lasso        |                 1 |    6009766.75
   121603 | Teresa              | Burbano Pab├│n         |                 1 |    6009381.84
    48675 | Antonio             | Rinc├│n Ram├¡rez        |                 1 |    6008330.71
    58069 | Teresa              | Rangel R├¡os           |                 1 |    6007443.84
    59076 | Rafael              | G├│mez L├│pez           |                 1 |    6000703.20
    26560 | Nelson              | Erazo Ramos           |                 1 |    6000098.11
    88197 | Sebasti├ín           | Fl├│rez Bonilla        |                 1 |    5999808.02
    60395 | Cecilia             | Mora C├íceres          |                 1 |    5999604.15
   127763 | Rub├®n               | Acevedo R├¡os          |                 1 |    5996940.47
   122861 | Isabella            | D├¡az ├ülvarez          |                 1 |    5993881.82
    23611 | Libardo Wilson      | Rangel Valencia       |                 1 |    5992926.69
   122067 | Claudia             | Herrera Duque         |                 1 |    5989818.93
    51557 | Alejandro           | Lozano Correa         |                 1 |    5988352.92
    58732 | Daniel              | Castro Prada          |                 1 |    5983889.52
    96799 | Paola               | L├│pez Mart├¡nez        |                 1 |    5979240.70
    79356 | ├ülvaro              | Arango Gonz├ílez       |                 2 |    5975897.51
    51800 | Abelardo            | Mart├¡nez C├íceres      |                 1 |    5975776.02
    17770 | Mar├¡a               | Barrera Montoya       |                 1 |    5974610.73
     2715 | Libardo Andr├®s      | Perdomo Calder├│n      |                 1 |    5972787.75
   138862 | Camilo              | Moreno Ibarra         |                 1 |    5971486.43
    93598 | Jazm├¡n              | Mej├¡a Zuluaga         |                 1 |    5970803.96
    70512 | ├ëdgar Mateo         | Pe├▒a Valencia         |                 1 |    5966129.40
    73629 | Daniel              | Ramos Losada          |                 1 |    5965815.36
      716 | Carlos              | Quintero Ibarra       |                 1 |    5965003.19
    96058 | ├ülvaro              | Vargas Medina         |                 1 |    5964640.46
    97491 | Nelson              | Delgado Lasso         |                 1 |    5963770.10
    77515 | Diego Carlos        | Su├írez Acevedo        |                 1 |    5963723.54
    28169 | Gabriela Lorena     | Erazo Bedoya          |                 1 |    5963102.92
    20543 | Carolina            | C├íceres Pab├│n         |                 1 |    5960544.41
   102440 | Anc├¡zar             | Mu├▒oz Delgado         |                 1 |    5959205.28
      925 | Amparo              | P├®rez Serrano         |                 1 |    5956974.80
    82454 | Diana Elsa          | Ospina Tovar          |                 1 |    5956842.69
   104089 | Fabio Francisco     | Giraldo Ospina        |                 1 |    5956450.20
    43415 | Fanny               | Losada Castillo       |                 1 |    5956270.92
    37717 | Fernando            | Moreno Arias          |                 1 |    5955644.64
    97972 | Erika               | Tovar Benavides       |                 1 |    5955488.50
   126384 | Valentina Lorena    | Hern├índez Jim├®nez     |                 1 |    5954793.39
   101181 | Mario               | Rojas Losada          |                 1 |    5951494.08
    11086 | Reinaldo            | Ruiz Agudelo          |                 1 |    5948622.65
    81502 | Libardo             | L├│pez Zuluaga         |                 1 |    5947864.95
    66597 | Natalia             | Torres Duarte         |                 1 |    5947566.52
   128412 | Marcela             | Polan├¡a Calder├│n      |                 1 |    5944279.96
   101575 | Ricardo             | Villamizar Contreras  |                 1 |    5944067.68
   147336 | Rodrigo             | Bastidas D├¡az         |                 1 |    5942552.14
    40695 | Sof├¡a Elsa          | Berm├║dez Delgado      |                 2 |    5937755.72
    80375 | Abelardo            | Quintero Losada       |                 1 |    5935103.07
    45452 | Sandra              | Trujillo Ospina       |                 1 |    5934290.01
   103382 | Teresa              | Castro Tovar          |                 1 |    5928570.48
    44746 | Fabio               | Narv├íez Su├írez        |                 1 |    5927578.25
   118027 | Carolina            | Lasso Medina          |                 1 |    5926154.00
    51981 | Isabella Blanca     | Correa L├│pez          |                 1 |    5918122.61
     1488 | ├ëdgar               | Montoya Molina        |                 1 |    5917958.88
       88 | Santiago Fabio      | Mar├¡n Caicedo         |                 1 |    5916801.08
    27329 | Myriam              | Rodr├¡guez Mora        |                 1 |    5916451.72
    20386 | Ana Beatriz         | Ruiz C├íceres          |                 1 |    5914568.85
   108908 | Fabio               | Correa Mosquera       |                 1 |    5913098.35
   148434 | Jairo               | Mar├¡n Cabrera         |                 1 |    5912833.75
    70820 | Gloria              | Mosquera Ruiz         |                 1 |    5912377.71
   141035 | Mario               | Carrillo Uribe        |                 1 |    5909220.77
    79432 | Amparo Alba         | G├│mez Sandoval        |                 1 |    5908037.88
   145738 | Alejandra           | Castillo Mora         |                 1 |    5903580.16
   116915 | Iv├ín                | Rivera Londo├▒o        |                 1 |    5902943.80
   111259 | Antonio Nelson      | Silva Cu├®llar         |                 1 |    5902583.60
    15378 | H├®ctor              | Mu├▒oz Salazar         |                 1 |    5898549.86
   149521 | Sebasti├ín           | Fl├│rez Galvis         |                 1 |    5897498.03
     2280 | Jorge Samuel        | Torres Cabrera        |                 1 |    5896779.33
    39548 | Wilson Javier       | Sandoval Contreras    |                 1 |    5895782.24
   103680 | Ricardo             | Jaimes Silva          |                 1 |    5894044.20
    73079 | Emilio              | Ortiz Prada           |                 1 |    5893467.18
    65906 | ├ülvaro Nelson       | Parra Londo├▒o         |                 1 |    5886934.89
    89652 | Rub├®n Rafael        | Rojas Bedoya          |                 1 |    5886899.59
   141490 | Juan                | Serrano Calder├│n      |                 1 |    5885684.04
    55379 | Francisco           | Arango P├®rez          |                 1 |    5880526.20
    27600 | Orlando             | Henao Vargas          |                 1 |    5878803.50
    32800 | David               | Ibarra Uribe          |                 1 |    5877026.40
   102182 | Andrea              | Bonilla Mej├¡a         |                 1 |    5875369.44
   146598 | Camila Laura        | Ortega Parra          |                 1 |    5869850.10
    39638 | Ana Nubia           | Bonilla Chamorro      |                 1 |    5869506.34
   113810 | Gilberto            | Londo├▒o Villamizar    |                 1 |    5867540.34
    59959 | Iv├ín Esteban        | Silva Guti├®rrez       |                 1 |    5862817.22
    39562 | Roc├¡o               | Salazar Quintero      |                 1 |    5862395.87
    39806 | Mateo               | Ram├¡rez Mart├¡nez      |                 1 |    5859301.79
    44204 | Miguel Sebasti├ín    | Herrera Molina        |                 1 |    5857207.40
    15962 | Isabella Laura      | Erazo Salazar         |                 1 |    5856986.00
    59247 | Nelson              | Pe├▒a Contreras        |                 1 |    5856631.20
    20477 | Mateo Fabio         | Gonz├ílez Prada        |                 2 |    5855072.91
    33276 | Nicol├ís             | Rivera Rodr├¡guez      |                 2 |    5854877.53
    70717 | Paola               | Rinc├│n G├│mez          |                 1 |    5854837.86
    12579 | Mauricio            | Molina Rangel         |                 1 |    5852904.72
   104567 | Edilma Teresa       | Vargas Ramos          |                 1 |    5852019.50
    10604 | David               | Mar├¡n Perdomo         |                 1 |    5851365.00
   125316 | Orlando             | Medina Romero         |                 1 |    5851002.24
    38849 | Diego               | R├¡os Moreno           |                 1 |    5847781.18
    51608 | Jos├® Germ├ín         | Mosquera Duque        |                 1 |    5846390.22
    47449 | Gustavo             | Mej├¡a Medina          |                 1 |    5843256.31
   124674 | Andr├®s              | Ortega Medina         |                 1 |    5843021.52
   133197 | Diego Jos├®          | Jaimes Henao          |                 1 |    5841976.02
   148493 | Dora Yolanda        | Cardona Osorio        |                 1 |    5841608.43
    63088 | Manuel              | Mej├¡a Valencia        |                 2 |    5836397.02
   107973 | Yesenia             | Perdomo Castro        |                 1 |    5836194.00
    13565 | Alba Valentina      | Vargas Arango         |                 1 |    5833558.31
    48273 | Aura Roc├¡o          | Lasso Londo├▒o         |                 1 |    5833320.80
    81444 | Abelardo            | Henao Barrera         |                 1 |    5829364.07
    31138 | Cristian Manuel     | Correa Su├írez         |                 1 |    5828801.80
    65035 | Francisco           | Benavides Narv├íez     |                 1 |    5827681.08
    90118 | Camilo              | Rivera Torres         |                 1 |    5826188.64
    14309 | Jorge               | Molina Parra          |                 1 |    5826067.42
   106812 | Antonio             | Ortiz Mosquera        |                 1 |    5825832.40
    40426 | Nicol├ís Francisco   | V├®lez Giraldo         |                 1 |    5824004.16
     1026 | Ana                 | Rodr├¡guez Galvis      |                 1 |    5823292.22
    94867 | Laura               | Ramos Vargas          |                 1 |    5821838.39
    46493 | Daniela             | Barrera Restrepo      |                 1 |    5820737.74
    62238 | Gabriela            | Correa S├ínchez        |                 1 |    5818416.97
    90842 | Andr├®s Rodrigo      | Jaimes Herrera        |                 1 |    5817046.51
    92606 | Andr├®s Abelardo     | Giraldo Trujillo      |                 1 |    5813909.73
   111823 | Heriberto           | Castillo Cardona      |                 1 |    5813292.42
    43099 | Liliana             | Restrepo Galvis       |                 1 |    5813226.95
    11011 | Alba                | C├íceres Bonilla       |                 1 |    5812564.18
   141022 | Luz                 | Losada Ram├¡rez        |                 1 |    5807752.50
    87174 | Efra├¡n              | Ortiz Zuluaga         |                 1 |    5807384.73
    68912 | Samuel Ricardo      | Calder├│n Duque        |                 1 |    5806668.35
     8496 | Mario               | Mu├▒oz Pinz├│n          |                 2 |    5805697.51
    27287 | Olga                | Ortiz Duque           |                 1 |    5805374.83
   140072 | Roc├¡o Yesenia       | Rodr├¡guez Jim├®nez     |                 1 |    5803968.96
    67431 | Ricardo             | Guerrero Duarte       |                 1 |    5803277.97
   125027 | Mateo               | Parra Giraldo         |                 1 |    5803249.45
    38731 | Andrea              | Mosquera Osorio       |                 1 |    5798584.96
    16361 | Wilson Samuel       | Giraldo L├│pez         |                 1 |    5797588.76
   107414 | Myriam              | Quintero Mu├▒oz        |                 1 |    5796997.20
   144398 | Jaime Rub├®n         | Arias Rivera          |                 1 |    5793958.40
    61478 | Alberto             | Su├írez Benavides      |                 2 |    5789416.77
   125021 | Camila              | Bastidas Burbano      |                 1 |    5787167.55
    57218 | Pedro               | Duque V├®lez           |                 1 |    5782291.73
   104886 | Lorena              | Bonilla Guti├®rrez     |                 1 |    5781587.04
      231 | In├®s Viviana        | Burbano S├ínchez       |                 1 |    5781157.65
    23195 | Juan                | L├│pez Ortiz           |                 2 |    5776240.83
    34715 | Sof├¡a               | Henao Vera            |                 1 |    5773463.88
   108336 | Fabio               | Uribe S├ínchez         |                 1 |    5771748.38
    60533 | Orlando             | Medina Mora           |                 1 |    5771365.39
    30901 | Alejandro Juli├ín    | V├®lez Duarte          |                 1 |    5771165.40
    36233 | Andrea              | C├íceres Molina        |                 1 |    5769677.18
    48781 | Claudia             | Cu├®llar Silva         |                 1 |    5769440.37
    26504 | Cecilia             | Pab├│n Castillo        |                 1 |    5768915.93
   145711 | Alba                | Gonz├ílez Bastidas     |                 2 |    5766342.35
    72294 | Erika               | Jim├®nez Duarte        |                 1 |    5766217.93
    95690 | Yolanda             | Uribe Hern├índez       |                 1 |    5763912.15
    40134 | Cecilia             | Pab├│n Cardona         |                 1 |    5762964.96
    97687 | Sandra              | Valencia Ortiz        |                 2 |    5759552.92
    21493 | Mariana Luc├¡a       | Rinc├│n C├íceres        |                 2 |    5759017.42
   124556 | Olga Carmen         | Betancur Pinz├│n       |                 1 |    5753349.60
   107135 | Luz                 | Pab├│n Fl├│rez          |                 1 |    5752226.88
    36667 | Juan                | Valencia Erazo        |                 1 |    5746749.19
   100739 | Teresa              | Ruiz Burbano          |                 1 |    5742897.12
    64809 | Mauricio            | Valencia Trujillo     |                 1 |    5736352.12
   132966 | ├ülvaro              | Ram├¡rez Restrepo      |                 1 |    5736090.60
    31902 | Yolanda             | Molina Medina         |                 1 |    5736050.90
    33071 | Nicol├ís Jos├®        | Montoya Rangel        |                 1 |    5733216.58
   120421 | Carmen              | C├írdenas Ni├▒o         |                 1 |    5727083.25
    37775 | Emilio              | Arias Londo├▒o         |                 1 |    5725470.44
    11338 | Ricardo             | Herrera Agudelo       |                 1 |    5724920.70
   115773 | Diana               | Berm├║dez Mart├¡nez     |                 1 |    5724590.75
   145210 | Manuela Sara        | Moreno Su├írez         |                 1 |    5719614.66
    70547 | Manuel ├ëdgar        | Fl├│rez Uribe          |                 1 |    5715161.09
    86463 | Claudia             | Cu├®llar Lasso         |                 1 |    5714554.38
    54779 | Rodrigo             | Restrepo Erazo        |                 2 |    5713483.47
    28704 | Manuel              | Rivera Mosquera       |                 1 |    5712970.86
    30663 | Fernando            | Guti├®rrez L├│pez       |                 1 |    5709782.70
    82368 | Fanny Martha        | Herrera Quintero      |                 1 |    5697153.28
     6043 | Rub├®n               | Delgado ├ülvarez       |                 1 |    5696493.26
    83614 | An├¡bal              | Uribe C├íceres         |                 1 |    5696446.39
    21861 | Reinaldo            | Rodr├¡guez Bastidas    |                 1 |    5696167.13
     5446 | Manuel Felipe       | Castillo Villamizar   |                 1 |    5694563.76
    79983 | Esteban             | Ospina Cabrera        |                 1 |    5690002.93
    92670 | Yolanda             | Barrera Moreno        |                 1 |    5687396.50
    21734 | Gloria              | Galvis Bedoya         |                 1 |    5686355.72
    56554 | Viviana             | Restrepo Benavides    |                 1 |    5686338.24
   132588 | Mar├¡a               | Mej├¡a Rinc├│n          |                 1 |    5686054.20
    94864 | Hernando            | Su├írez Bedoya         |                 1 |    5683086.80
    62672 | Alejandro           | Duarte Su├írez         |                 1 |    5679536.16
    43103 | Abelardo            | Cu├®llar Agudelo       |                 1 |    5675551.42
   146885 | Samuel              | Pinz├│n Mar├¡n          |                 1 |    5675394.76
    94165 | Andr├®s              | Guerrero Betancur     |                 1 |    5673950.64
    65852 | Hernando            | Rojas Cardona         |                 2 |    5671207.59
    97373 | Cecilia             | Lozano Benavides      |                 1 |    5668541.84
    47127 | Mauricio            | Zapata Rivera         |                 1 |    5668508.52
   101945 | Samuel              | Bastidas Pinz├│n       |                 1 |    5667428.12
   103708 | Wilmer              | Arias Serrano         |                 1 |    5665734.67
    69475 | Alberto Rub├®n       | Villamizar Burbano    |                 1 |    5658944.96
     6430 | Elsa                | Arango Montoya        |                 1 |    5658843.55
   123497 | David               | Vargas Agudelo        |                 1 |    5658838.97
   107163 | Wilmer Alberto      | Ruiz Barrera          |                 1 |    5658124.48
    81790 | Abelardo            | Benavides Tovar       |                 1 |    5657526.60
    53431 | Stella              | Montoya Burbano       |                 1 |    5656712.74
   141543 | Natalia             | Ortega Sandoval       |                 1 |    5655760.78
   119403 | ├ülvaro              | Ruiz Londo├▒o          |                 1 |    5655307.35
   107118 | ├ëdgar               | Vargas Ospina         |                 1 |    5654328.66
    61719 | Viviana             | Acevedo Serrano       |                 1 |    5652717.48
    79947 | Santiago Juan       | C├íceres Garc├¡a        |                 1 |    5649431.19
   149808 | Mar├¡a               | C├írdenas Cardona      |                 1 |    5647824.00
    49057 | H├®ctor              | Ospina Zuluaga        |                 1 |    5646532.16
   136872 | Elsa                | Ibarra Pinz├│n         |                 1 |    5646292.12
   125395 | Cecilia             | Londo├▒o P├®rez         |                 1 |    5645288.25
    11850 | Blanca              | Agudelo Silva         |                 1 |    5642290.82
    37623 | Fabio Nicol├ís       | Mar├¡n Duarte          |                 1 |    5642230.36
    51848 | Fernando Fabio      | P├®rez Erazo           |                 2 |    5642094.09
     2323 | Gilberto            | S├ínchez Restrepo      |                 1 |    5640173.42
    61899 | Jorge               | Vera Lasso            |                 1 |    5639931.76
    54151 | Brayan              | Fl├│rez Berm├║dez       |                 1 |    5635828.00
    24002 | Amparo              | Bedoya Romero         |                 1 |    5629990.52
    39505 | Gustavo             | R├¡os Duque            |                 1 |    5627116.58
   106780 | Felipe Ricardo      | L├│pez Trujillo        |                 1 |    5625491.49
   130945 | In├®s Paola          | Su├írez Medina         |                 1 |    5620834.44
   101992 | Juan Alberto        | Betancur Bastidas     |                 1 |    5618190.24
    49083 | Ana                 | Losada Fl├│rez         |                 1 |    5617208.25
   119413 | Beatriz             | Galvis R├¡os           |                 1 |    5616657.00
    13311 | Germ├ín Wilmer       | Correa Tovar          |                 1 |    5611684.56
    58879 | Nelson              | Castro Londo├▒o        |                 1 |    5610611.21
   109600 | Myriam Gladys       | S├ínchez Ruiz          |                 1 |    5609846.34
   125390 | Alejandro           | Ramos Su├írez          |                 1 |    5609594.16
    51983 | Valentina           | Henao Sandoval        |                 1 |    5603597.75
     1138 | Libardo             | R├¡os Osorio           |                 1 |    5602558.62
   102084 | Olga                | Ram├¡rez Cabrera       |                 1 |    5602394.70
    89108 | Alejandro           | Bedoya Garc├¡a         |                 1 |    5601118.96
    91783 | Martha              | ├ülvarez G├│mez         |                 2 |    5597462.67
   120113 | ├ôscar               | Erazo Valencia        |                 1 |    5596556.07
     7499 | Manuel Fabio        | Castro Rangel         |                 1 |    5594567.86
    37882 | Hernando            | Duarte Duque          |                 1 |    5591836.80
   123612 | Wilson Efra├¡n       | Bonilla Ramos         |                 1 |    5590879.32
    41874 | Elsa                | Londo├▒o Correa        |                 1 |    5590587.17
    51041 | Teresa Nubia        | Duque Rodr├¡guez       |                 1 |    5590390.36
     9834 | Luis                | Mej├¡a Duque           |                 1 |    5587246.26
    20515 | Carlos              | Rodr├¡guez Mu├▒oz       |                 1 |    5586544.08
    56801 | Isabella Fanny      | G├│mez Arias           |                 1 |    5584080.11
   120664 | Abelardo            | C├íceres Ruiz          |                 1 |    5581486.56
   120872 | Rub├®n               | Osorio Cabrera        |                 2 |    5580975.43
    49016 | Alberto             | Rinc├│n R├¡os           |                 1 |    5580111.67
    93913 | Javier              | Ortiz Montoya         |                 1 |    5579274.22
   118738 | Carmen Beatriz      | Fl├│rez Bastidas       |                 1 |    5575491.22
    23303 | Mauricio Javier     | Salazar Castro        |                 1 |    5572436.82
    45496 | Aura                | Prada Chamorro        |                 1 |    5568837.45
    27061 | Rafael              | Rivera Arias          |                 1 |    5567699.56
    74325 | Reinaldo            | Cardona Tovar         |                 1 |    5567249.27
    90430 | Carlos Brayan       | Villamizar Galvis     |                 1 |    5563041.44
    34275 | Sebasti├ín           | Guerrero Mu├▒oz        |                 1 |    5560813.48
    14849 | Fanny               | Quintero Trujillo     |                 1 |    5557722.10
    19840 | Manuel ├ülvaro       | Narv├íez Ram├¡rez       |                 1 |    5555943.47
    67127 | ├ôscar An├¡bal        | Hern├índez Lasso       |                 1 |    5551293.13
    43059 | Guillermo           | Ruiz Rojas            |                 1 |    5550656.30
   145987 | Yuliana             | Duarte Chamorro       |                 1 |    5549333.08
   141541 | Ana Sandra          | Mora Quintero         |                 1 |    5549281.14
    26465 | Santiago Javier     | Ramos Guerrero        |                 1 |    5547872.00
    93758 | ├ôscar Reinaldo      | Trujillo Cardona      |                 1 |    5544166.56
    11833 | Alejandra           | Duque Polan├¡a         |                 1 |    5542401.43
    24393 | Mario Felipe        | Berm├║dez Mej├¡a        |                 1 |    5542388.24
   148164 | Camilo              | Delgado Pe├▒a          |                 1 |    5539302.10
    78816 | Anc├¡zar Diego       | G├│mez Polan├¡a         |                 1 |    5538477.36
    14002 | Blanca              | Tovar Correa          |                 1 |    5538381.32
    81256 | Natalia             | Rangel Perdomo        |                 1 |    5537853.60
    54876 | Alejandra           | Ram├¡rez Calder├│n      |                 1 |    5536802.23
    65969 | Mar├¡a               | Lozano Castillo       |                 1 |    5535768.60
   118574 | Jorge               | Ibarra Uribe          |                 1 |    5534213.40
    15246 | Marcela             | Mora Mosquera         |                 1 |    5531405.73
   114243 | Elsa Mar├¡a          | Betancur Hern├índez    |                 1 |    5530175.39
    42422 | Brayan              | Zapata Moreno         |                 1 |    5528977.59
    50988 | Alejandro           | Mart├¡nez Guerrero     |                 1 |    5527881.18
    12164 | Yuliana             | Pinz├│n Londo├▒o        |                 1 |    5526812.73
    58898 | Orlando ├ülvaro      | Narv├íez D├¡az          |                 1 |    5526124.48
     6789 | Mariana Amparo      | Losada Serrano        |                 1 |    5521616.58
    36466 | Brayan              | S├ínchez Uribe         |                 2 |    5521378.49
    36265 | Martha              | Lasso Hern├índez       |                 1 |    5521119.46
    21147 | Santiago            | Pab├│n Calder├│n        |                 1 |    5520289.80
   101577 | Rodrigo             | Duque Uribe           |                 1 |    5520102.18
    17475 | Wilson              | Medina Mosquera       |                 1 |    5519095.21
    19133 | Santiago            | Ruiz Rojas            |                 1 |    5519086.86
     3530 | Abelardo Jos├®       | L├│pez Narv├íez         |                 1 |    5517612.48
    32048 | Alberto Sebasti├ín   | C├írdenas R├¡os         |                 1 |    5517360.85
   123819 | Mario               | Ibarra Carrillo       |                 1 |    5517280.98
    88940 | Luis Hugo           | Ram├¡rez C├íceres       |                 2 |    5516906.31
    11781 | Sara                | Pe├▒a Su├írez           |                 1 |    5515251.08
     4173 | Luz                 | Zapata Castillo       |                 1 |    5514739.18
    17296 | Arturo              | Osorio Ruiz           |                 1 |    5513571.53
    70893 | Olga                | Rivera Agudelo        |                 1 |    5510784.48
    45926 | H├®ctor              | Polan├¡a Garc├¡a        |                 1 |    5510048.75
    96176 | Efra├¡n Samuel       | Bonilla Barrera       |                 1 |    5509553.09
    36136 | Valentina           | D├¡az Moreno           |                 1 |    5509089.00
    22405 | Erika               | Galvis Ortiz          |                 1 |    5509027.05
    90615 | Mercedes Yesenia    | G├│mez Losada          |                 2 |    5508893.21
    73507 | Diana               | Guti├®rrez Agudelo     |                 2 |    5508850.41
    61517 | Juliana             | Osorio Jim├®nez        |                 1 |    5508629.27
    50436 | Andr├®s              | Ni├▒o Calder├│n         |                 1 |    5507882.94
    60584 | Diego               | Castillo Burbano      |                 1 |    5505398.43
    37753 | Fernando Arturo     | Cu├®llar Herrera       |                 1 |    5505020.71
    22793 | Gilberto            | C├íceres Castillo      |                 1 |    5501666.48
    60271 | Reinaldo Hugo       | Ramos Pe├▒a            |                 1 |    5499359.60
    49299 | Mateo               | Bedoya Fl├│rez         |                 1 |    5497909.43
   119754 | Jaime Esteban       | Jim├®nez Garc├¡a        |                 1 |    5495025.51
    25279 | Mateo               | Castillo Carrillo     |                 1 |    5492865.78
    51036 | Nicol├ís             | Gonz├ílez Trujillo     |                 1 |    5491099.76
   101914 | Rafael              | D├¡az Castillo         |                 1 |    5490764.25
    87878 | Francisco           | Zuluaga Torres        |                 1 |    5490536.66
    47153 | Leidy               | V├®lez Montoya         |                 2 |    5487780.72
   135250 | Luc├¡a               | Uribe Contreras       |                 1 |    5487410.14
    26459 | Luc├¡a               | Serrano Silva         |                 1 |    5487376.40
   146197 | Yesenia Alba        | Burbano Mart├¡nez      |                 1 |    5485115.35
    56893 | Cecilia Beatriz     | Bonilla Mu├▒oz         |                 1 |    5482452.50
    14989 | Yeison              | Mej├¡a Guerrero        |                 1 |    5482405.50
   106415 | Germ├ín              | Pab├│n Gonz├ílez        |                 1 |    5481485.01
     6648 | Diego               | Ortega Ortega         |                 1 |    5477690.85
   109175 | Arturo              | Duque Vera            |                 1 |    5475237.58
    22822 | Heriberto           | Delgado Correa        |                 1 |    5472040.85
    53899 | Libardo             | Herrera Serrano       |                 1 |    5470711.25
   113157 | Samuel              | Castro Silva          |                 1 |    5470399.23
    98592 | Teresa              | Mart├¡nez Valencia     |                 1 |    5469926.66
    67651 | Cristian            | Acevedo Duque         |                 1 |    5469097.42
   114165 | Reinaldo            | Betancur Correa       |                 1 |    5464398.00
   141609 | Stella              | Gonz├ílez Restrepo     |                 1 |    5463484.65
    30153 | Fernando            | Lasso Rodr├¡guez       |                 1 |    5461213.15
    21996 | Stella              | Prada Quintero        |                 1 |    5460492.00
   128595 | Reinaldo            | Pab├│n Losada          |                 1 |    5453162.56
     5039 | ├üngela Mar├¡a        | Acevedo Pab├│n         |                 1 |    5450031.77
    16049 | Germ├ín Efra├¡n       | Herrera Chamorro      |                 1 |    5449834.26
   130043 | Felipe              | Agudelo L├│pez         |                 1 |    5449792.32
    97977 | Luisa               | Sandoval Trujillo     |                 1 |    5449358.31
   126398 | Nubia               | Ortega P├®rez          |                 1 |    5449257.49
     6714 | Sof├¡a               | Chamorro Prada        |                 1 |    5448809.21
    99505 | Fabio               | Zapata Mar├¡n          |                 1 |    5446927.20
    29639 | Juliana             | Salazar Betancur      |                 1 |    5446723.78
    90727 | Beatriz             | Ramos Zapata          |                 1 |    5446478.08
    69341 | Alejandro           | Jaimes G├│mez          |                 1 |    5446280.35
    66092 | Alejandra           | Ortega Restrepo       |                 1 |    5445546.30
     8651 | Jorge               | G├│mez Rivera          |                 1 |    5445480.55
   118259 | Esperanza Luz       | Prada Rodr├¡guez       |                 1 |    5445279.69
    32052 | Luc├¡a               | Arango Berm├║dez       |                 1 |    5444720.63
     3396 | ├ülvaro Nicol├ís      | Trujillo Guti├®rrez    |                 1 |    5441929.18
   116178 | Martha Carolina     | Londo├▒o Restrepo      |                 1 |    5441444.17
     4485 | Yuliana Carmen      | Hern├índez Cardona     |                 1 |    5441385.60
   109547 | Roc├¡o               | Ortiz Londo├▒o         |                 1 |    5439958.41
    66961 | Fabio               | Arias Arias           |                 1 |    5432586.39
   108189 | Diana               | Mu├▒oz Osorio          |                 2 |    5430843.44
    37723 | Sara                | Uribe Restrepo        |                 1 |    5430147.96
    61431 | Esteban Emilio      | Contreras Cu├®llar     |                 2 |    5429519.52
    98984 | Yeison              | Caicedo Pab├│n         |                 1 |    5429451.20
    97021 | Diego               | ├ülvarez Garc├¡a        |                 1 |    5429161.38
    60709 | Ramiro              | Su├írez Mej├¡a          |                 1 |    5428656.48
     9647 | Leidy Yuliana       | Galvis Lasso          |                 1 |    5427921.98
   108464 | Abelardo            | S├ínchez Ruiz          |                 1 |    5427776.95
    84686 | Amparo              | Molina Ortiz          |                 1 |    5427622.37
   100011 | Francisco Andr├®s    | Perdomo Salazar       |                 1 |    5427399.81
    93671 | Pedro Arturo        | Caicedo Mora          |                 1 |    5425334.38
   113444 | David               | Salazar Mej├¡a         |                 1 |    5425187.61
   100218 | Fabio               | P├®rez R├¡os            |                 1 |    5421111.12
     3362 | Yeison              | Cabrera Pinz├│n        |                 1 |    5420981.97
    86945 | Iv├ín                | C├írdenas Arango       |                 1 |    5420603.98
    10038 | David               | Contreras V├®lez       |                 1 |    5419951.25
    60579 | Marcela             | Carrillo Arias        |                 1 |    5419932.00
    73142 | Gilberto            | Jim├®nez Gonz├ílez      |                 1 |    5416766.09
   140580 | Luis                | Mora Perdomo          |                 2 |    5415917.12
   138404 | Jazm├¡n              | Mar├¡n Tovar           |                 1 |    5415042.99
   115953 | Marcela Sandra      | Castro Chamorro       |                 1 |    5411847.98
    15036 | Juli├ín              | Medina Betancur       |                 1 |    5409903.57
   114048 | Gladys Dora         | Mart├¡nez Moreno       |                 1 |    5405190.84
    56226 | Edilma              | Correa Garc├¡a         |                 1 |    5402820.90
    70256 | Jaime               | Cabrera Narv├íez       |                 1 |    5401644.08
    70743 | Valentina           | P├®rez Rinc├│n          |                 1 |    5400665.22
    43940 | ├ülvaro Sebasti├ín    | Erazo Berm├║dez        |                 1 |    5400448.62
    22975 | Javier              | Silva Arias           |                 2 |    5398606.25
    48689 | David               | Parra Castillo        |                 1 |    5394764.92
    35933 | Santiago Pedro      | Restrepo Calder├│n     |                 1 |    5392133.32
    13774 | Nubia Elsa          | Villamizar Perdomo    |                 1 |    5391834.20
    47462 | Teresa              | Quintero Duque        |                 1 |    5390940.93
    56915 | Stella Paola        | Fl├│rez Su├írez         |                 1 |    5389404.58
   130815 | Hugo                | Guti├®rrez Jaimes      |                 1 |    5387636.54
    77511 | Claudia             | Rojas P├®rez           |                 2 |    5387626.91
   137889 | Mateo               | Silva Rinc├│n          |                 1 |    5387337.76
    18523 | Daniel              | Carrillo Henao        |                 1 |    5385205.68
   112659 | Rafael              | C├íceres Herrera       |                 1 |    5383144.13
    10358 | Juan                | Bonilla Guerrero      |                 1 |    5382816.82
    44555 | Carlos              | Trujillo Ibarra       |                 1 |    5380614.51
    30012 | Manuel              | Betancur Ortiz        |                 1 |    5379520.41
   123374 | Adriana             | Galvis L├│pez          |                 1 |    5379240.60
   140918 | Nubia Andrea        | Ibarra Ram├¡rez        |                 1 |    5376615.18
    65228 | H├®ctor Abelardo     | P├®rez L├│pez           |                 1 |    5371742.13
    49533 | Ruth                | Caicedo Ibarra        |                 1 |    5370349.25
    50805 | Yesenia             | Duque V├®lez           |                 1 |    5368463.09
   139530 | Pedro               | Quintero Pe├▒a         |                 1 |    5364418.32
   105077 | Antonio             | Ramos Parra           |                 1 |    5361263.04
    89745 | Teresa              | V├®lez Calder├│n        |                 1 |    5360890.43
    11898 | Gladys              | Restrepo Uribe        |                 1 |    5360742.46
   145848 | Jos├® Santiago       | Cu├®llar Castillo      |                 1 |    5359401.67
   106037 | Esperanza           | Burbano S├ínchez       |                 1 |    5359041.15
   143168 | Felipe Gustavo      | Parra Serrano         |                 1 |    5355052.92
    55748 | Iv├ín                | Polan├¡a Rodr├¡guez     |                 2 |    5353368.82
   103665 | Erika               | Cabrera Rivera        |                 1 |    5353045.32
    77885 | An├¡bal              | Burbano Cu├®llar       |                 1 |    5352715.77
    15913 | Efra├¡n              | Ortega Mu├▒oz          |                 1 |    5350262.10
    97248 | Yesenia Blanca      | Barrera Polan├¡a       |                 1 |    5349269.63
    87661 | Gustavo             | R├¡os Burbano          |                 1 |    5348992.44
    37632 | Nelson              | Vargas D├¡az           |                 1 |    5345855.63
    88741 | Erika Liliana       | Rojas Moreno          |                 1 |    5345490.96
    41105 | In├®s Carmen         | Zuluaga Ni├▒o          |                 1 |    5343755.52
    15529 | Sara                | Narv├íez Acevedo       |                 1 |    5342252.18
    13822 | Rosa Teresa         | C├íceres Calder├│n      |                 1 |    5341202.88
    46003 | Edilma              | Duarte Villamizar     |                 1 |    5340845.52
    73868 | Heriberto           | Tovar Ortiz           |                 1 |    5340546.95
    32000 | ├ôscar Ricardo       | Mar├¡n Rinc├│n          |                 1 |    5331514.50
   142931 | Daniel              | Lasso Cabrera         |                 1 |    5330518.53
    35099 | ├ülvaro              | Serrano Bedoya        |                 1 |    5328361.05
    64015 | Aura                | Agudelo Carrillo      |                 1 |    5324203.20
    38838 | Sandra              | Trujillo Ram├¡rez      |                 1 |    5322611.85
    92158 | Paola               | Medina Guerrero       |                 1 |    5322090.86
    34873 | Guillermo           | Parra Rojas           |                 1 |    5321411.66
    37682 | Yolanda Beatriz     | Rinc├│n ├ülvarez        |                 1 |    5320906.19
   131971 | Luisa Yesenia       | Ibarra Osorio         |                 1 |    5320658.28
    10530 | Esteban             | Uribe V├®lez           |                 1 |    5320236.82
    31711 | Emilio              | Su├írez Rangel         |                 1 |    5318858.87
   129273 | Edilma              | Cabrera Losada        |                 1 |    5318314.79
   106857 | Paola               | Quintero Ni├▒o         |                 1 |    5317934.76
   120017 | Nelson              | Valencia Cu├®llar      |                 1 |    5316162.60
   127441 | Gilberto Miguel     | Villamizar Cu├®llar    |                 1 |    5314292.76
    99319 | Amparo Yuliana      | Cardona G├│mez         |                 1 |    5313558.34
    51634 | Pedro               | Contreras Ramos       |                 1 |    5307797.81
    70268 | Fabio Alejandro     | Mart├¡nez Losada       |                 1 |    5306241.84
   110422 | Wilmer              | Rojas Restrepo        |                 1 |    5305365.97
    23718 | Mauricio            | Herrera Betancur      |                 1 |    5303837.20
   117072 | David Nicol├ís       | Contreras Ospina      |                 1 |    5301434.86
    65403 | Teresa Paola        | Herrera Jaimes        |                 1 |    5299450.77
   103824 | Diego Sebasti├ín     | Rodr├¡guez Vera        |                 1 |    5297366.60
    13592 | Edilma              | Contreras Salazar     |                 2 |    5294829.95
   110448 | ├ülvaro              | Mora Moreno           |                 1 |    5294765.19
    64563 | Blanca              | Delgado Tovar         |                 1 |    5284986.42
    61411 | Sebasti├ín           | Prada Romero          |                 1 |    5284382.00
   134815 | Miguel Rub├®n        | Betancur Duque        |                 1 |    5284334.61
    59827 | Luz                 | Lasso Mora            |                 1 |    5283518.24
   144793 | Elsa                | Lozano Cu├®llar        |                 1 |    5282491.03
    36105 | ├ëdgar               | S├ínchez Cu├®llar       |                 1 |    5280756.17
     3457 | Isabella            | Duque Parra           |                 1 |    5277939.16
   128708 | An├¡bal              | Restrepo Burbano      |                 1 |    5277783.32
   110399 | Yeison              | Herrera Giraldo       |                 1 |    5276932.54
    96894 | Natalia Blanca      | Tovar S├ínchez         |                 2 |    5272433.86
   135071 | Brayan              | Garc├¡a Ortiz          |                 1 |    5268198.88
   122647 | Jazm├¡n              | Salazar Bastidas      |                 1 |    5263085.04
    75822 | Brayan              | G├│mez Acevedo         |                 1 |    5263006.71
   113769 | Camilo              | Burbano Mar├¡n         |                 1 |    5262730.20
    57755 | Amparo              | Ni├▒o Castro           |                 1 |    5262568.16
   106729 | Roc├¡o               | Duarte Burbano        |                 1 |    5261986.08
    89829 | Antonio             | Polan├¡a C├íceres       |                 1 |    5261114.30
    38643 | Reinaldo            | Polan├¡a Garc├¡a        |                 1 |    5260343.88
    54166 | Hugo                | Rivera S├ínchez        |                 1 |    5258375.91
   113139 | Daniel Wilmer       | Contreras Serrano     |                 1 |    5257867.52
     8125 | Arturo              | Guerrero R├¡os         |                 1 |    5256779.20
   116204 | Santiago            | Medina Narv├íez        |                 1 |    5253656.57
   137957 | Arturo              | Restrepo Mora         |                 1 |    5251161.60
   125605 | Aura                | Pe├▒a Benavides        |                 1 |    5250352.75
    23159 | Daniela             | Losada Narv├íez        |                 1 |    5250119.37
    46730 | Jazm├¡n Martha       | Cabrera Giraldo       |                 1 |    5248231.06
   101482 | Rafael              | Restrepo Mora         |                 1 |    5245684.50
   132813 | Aura                | Vera Cu├®llar          |                 1 |    5244159.40
   148050 | Liliana             | Valencia Tovar        |                 1 |    5243603.43
    84506 | Juli├ín              | Villamizar V├®lez      |                 1 |    5242998.87
    98705 | Daniela             | V├®lez Serrano         |                 1 |    5239735.76
    92481 | Jaime               | Losada Guerrero       |                 1 |    5239103.24
    83937 | Adriana             | Rangel Rodr├¡guez      |                 1 |    5238754.57
    32309 | Fanny               | Galvis Mart├¡nez       |                 1 |    5238581.18
    67401 | Luz Sof├¡a           | ├ülvarez Bonilla       |                 1 |    5237058.78
   109968 | Alba                | Lasso L├│pez           |                 1 |    5236025.60
    75339 | ├ülvaro Luis         | Pab├│n Arango          |                 1 |    5235031.32
    58861 | Beatriz             | Villamizar Montoya    |                 1 |    5231206.51
   145966 | Rosa                | Herrera Cardona       |                 1 |    5229409.02
    50421 | Marcela             | Lasso Caicedo         |                 1 |    5227159.92
    23158 | Natalia Gladys      | D├¡az Duque            |                 1 |    5225479.35
    33045 | Yeison              | Castillo Benavides    |                 1 |    5225222.70
    97626 | Gloria Luc├¡a        | Lozano Calder├│n       |                 1 |    5223815.86
    52188 | Stella              | Narv├íez Osorio        |                 1 |    5223495.38
     5985 | Francisco           | Guerrero Benavides    |                 1 |    5222461.59
   134521 | Guillermo           | Garc├¡a Ruiz           |                 1 |    5222444.00
    23375 | Hernando Heriberto  | Guerrero Guerrero     |                 1 |    5220812.17
    13204 | Francisco Luis      | Mosquera Arias        |                 1 |    5218321.92
    38121 | Carolina Patricia   | Guerrero Lozano       |                 1 |    5216602.05
   132636 | An├¡bal              | Castillo Salazar      |                 1 |    5215650.43
    29486 | Sof├¡a               | Cabrera Rinc├│n        |                 2 |    5215366.24
   100015 | Jaime               | Vargas Caicedo        |                 1 |    5214765.39
    57949 | ├ëdgar               | Torres Medina         |                 1 |    5209048.60
    29693 | Carolina Myriam     | Parra Berm├║dez        |                 1 |    5204012.68
    79965 | Santiago Carlos     | Polan├¡a Montoya       |                 1 |    5203175.62
    49717 | An├¡bal Orlando      | Lasso C├íceres         |                 1 |    5202855.36
     6315 | Fabio Emilio        | Lozano G├│mez          |                 1 |    5201726.06
    16021 | Libardo             | Osorio Lozano         |                 1 |    5201490.00
    68799 | Iv├ín                | Losada Tovar          |                 1 |    5201042.86
    55990 | Rub├®n               | Castro Vera           |                 1 |    5196999.96
   126335 | Isabella            | Ortiz Su├írez          |                 1 |    5195941.20
    90480 | Libardo             | S├ínchez Molina        |                 1 |    5194477.40
    30932 | Orlando ├ülvaro      | Arias Londo├▒o         |                 1 |    5193197.07
    61115 | Laura               | Ni├▒o Erazo            |                 1 |    5190251.96
    28358 | Daniel Nicol├ís      | Lozano Vera           |                 1 |    5190189.76
    54059 | Gladys Dora         | Cu├®llar Caicedo       |                 1 |    5189678.20
    15274 | Hernando            | Erazo Medina          |                 1 |    5188496.04
    93593 | Juliana             | Garc├¡a Moreno         |                 1 |    5185016.15
    19715 | Dora                | Erazo Molina          |                 1 |    5184786.01
   134314 | Alberto             | Ibarra Romero         |                 1 |    5183353.32
    62647 | Abelardo            | Quintero C├írdenas     |                 1 |    5182783.90
    91628 | Alberto Gilberto    | Galvis Ibarra         |                 1 |    5181351.30
   103472 | Jaime               | Rodr├¡guez Quintero    |                 1 |    5180176.61
    84979 | Alberto             | Jim├®nez Barrera       |                 1 |    5179719.92
   114653 | Germ├ín              | Rojas Rangel          |                 1 |    5179657.38
    65662 | ├ëdgar               | Vera Perdomo          |                 1 |    5179448.05
    42793 | Guillermo Alberto   | Mar├¡n Gonz├ílez        |                 1 |    5176636.97
     9943 | Luisa               | Villamizar Villamizar |                 1 |    5175565.38
    50941 | Esperanza           | Valencia Cardona      |                 1 |    5175286.94
     6861 | Andr├®s              | Caicedo Mar├¡n         |                 1 |    5175280.30
     1184 | Blanca              | S├ínchez L├│pez         |                 1 |    5174760.54
    29093 | Daniel              | Sandoval Ospina       |                 1 |    5174034.05
    13478 | ├ëdgar               | Agudelo Losada        |                 1 |    5173946.52
    85139 | Emilio              | Zapata Fl├│rez         |                 1 |    5172618.22
    33998 | Teresa              | Villamizar Medina     |                 1 |    5172434.78
   133973 | Gladys Patricia     | L├│pez Bastidas        |                 1 |    5171046.72
    52746 | Carolina            | Berm├║dez Trujillo     |                 1 |    5170961.84
    51562 | Luisa               | Betancur Burbano      |                 1 |    5170125.00
   132540 | Sandra              | Vera Cabrera          |                 1 |    5169361.01
   100616 | Liliana             | Castro Guti├®rrez      |                 1 |    5167622.53
   111765 | Diego Cristian      | G├│mez G├│mez           |                 1 |    5166524.27
    97970 | Viviana             | Duque Burbano         |                 1 |    5165206.41
     3562 | Mariana             | Restrepo Herrera      |                 1 |    5163991.06
   108933 | Alejandro           | Ortiz Ni├▒o            |                 1 |    5160117.89
    98583 | Jairo Mario         | Benavides Romero      |                 1 |    5159041.20
    72288 | Mauricio Mateo      | V├®lez Jaimes          |                 1 |    5154635.12
    62559 | Alejandro An├¡bal    | Betancur Ortiz        |                 1 |    5154465.03
   130525 | Alba                | G├│mez Perdomo         |                 1 |    5150788.89
   109675 | Valentina           | Ortega Henao          |                 1 |    5145817.55
   129866 | Luis                | Cabrera Osorio        |                 1 |    5141842.78
   113853 | Francisco           | Cu├®llar Duque         |                 1 |    5139712.55
    19507 | Olga Mercedes       | S├ínchez Salazar       |                 1 |    5135239.60
    86902 | Alberto             | Ni├▒o Duarte           |                 1 |    5134113.74
    17379 | Blanca              | Jaimes Ruiz           |                 1 |    5133706.02
    78046 | Felipe              | Acevedo Prada         |                 1 |    5130466.99
    57613 | Pedro Juan          | Rodr├¡guez Berm├║dez    |                 1 |    5128252.95
    22129 | Gloria              | Mart├¡nez Caicedo      |                 1 |    5128236.48
    91491 | Manuel              | R├¡os Ortega           |                 1 |    5123887.34
   113483 | Hernando            | Arias C├írdenas        |                 1 |    5122044.13
    12662 | Elsa ├üngela         | Correa Mu├▒oz          |                 1 |    5120279.64
    53095 | Aura                | Torres Acevedo        |                 1 |    5119214.76
   135063 | Ramiro              | Sandoval Serrano      |                 1 |    5117511.27
    12933 | Sof├¡a               | Perdomo Cardona       |                 1 |    5116227.20
    40378 | Gustavo             | Losada Torres         |                 1 |    5114678.80
   126803 | Dora                | Torres Tovar          |                 1 |    5114308.77
   111041 | Juli├ín Emilio       | C├írdenas S├ínchez      |                 1 |    5113897.42
      470 | Andr├®s              | Ni├▒o Ramos            |                 1 |    5113777.24
    77043 | Amparo Sara         | Molina Zuluaga        |                 1 |    5111094.90
    17016 | Stella              | Galvis Lozano         |                 1 |    5108905.61
    38001 | Felipe Camilo       | Caicedo Sandoval      |                 1 |    5107973.31
   142791 | Gladys              | Acevedo Bastidas      |                 1 |    5107782.96
    15658 | Reinaldo            | Arias Calder├│n        |                 1 |    5105899.03
    26149 | Alejandro           | Guti├®rrez Quintero    |                 1 |    5105620.84
   148938 | Nelson Samuel       | Bastidas Osorio       |                 1 |    5100150.29
   142500 | Rub├®n Alberto       | Herrera Mar├¡n         |                 1 |    5091967.68
   115426 | Luc├¡a               | Mora Pinz├│n           |                 1 |    5091472.90
   121209 | Juli├ín Jos├®         | R├¡os Perdomo          |                 1 |    5091051.46
    95917 | Cristian ├ôscar      | Narv├íez Rinc├│n        |                 1 |    5088545.06
   106150 | Mario               | Su├írez Herrera        |                 1 |    5088083.94
   138542 | Isabella Mariana    | L├│pez Mej├¡a           |                 1 |    5087855.55
    90566 | Paola               | Arango Duarte         |                 1 |    5087790.40
    55789 | Wilson Juan         | Chamorro Londo├▒o      |                 1 |    5086823.52
   109190 | Yesenia             | Cardona Rojas         |                 1 |    5086019.13
   133213 | Carlos              | Henao Burbano         |                 1 |    5085244.25
   109664 | Alba                | Villamizar Perdomo    |                 1 |    5084882.88
    99919 | Juan                | Rangel Villamizar     |                 1 |    5084064.27
    95225 | Efra├¡n              | Molina Galvis         |                 1 |    5083199.46
   132338 | Gabriela            | Restrepo Narv├íez      |                 1 |    5081512.80
    20666 | Javier              | Ram├¡rez Duque         |                 1 |    5079739.71
    41001 | Aura                | Fl├│rez Rangel         |                 1 |    5078644.63
    97696 | Alejandro           | Erazo Narv├íez         |                 1 |    5075889.30
    47338 | Yolanda             | Zuluaga Cardona       |                 1 |    5073251.04
    75705 | Rodrigo             | Lasso Castillo        |                 1 |    5072545.39
   110110 | Ramiro              | Barrera Serrano       |                 2 |    5072116.13
   148385 | Elsa Carolina       | Erazo Bedoya          |                 1 |    5072083.64
    10002 | ├ëdgar               | ├ülvarez Zuluaga       |                 1 |    5069289.16
    74068 | Diana               | Correa Restrepo       |                 1 |    5067584.65
    20416 | Gloria              | Burbano L├│pez         |                 1 |    5067039.52
    13514 | Marleny Amparo      | Lasso Salazar         |                 1 |    5066776.32
   143263 | Libardo             | Ni├▒o Pe├▒a             |                 1 |    5065501.36
    13237 | Guillermo           | Molina Mora           |                 1 |    5064694.05
    99848 | Sebasti├ín           | Zuluaga Arango        |                 1 |    5063586.09
   128000 | Alejandra           | C├íceres Burbano       |                 1 |    5062190.27
     3479 | Rosa                | R├¡os ├ülvarez          |                 1 |    5061074.95
   132078 | ├ülvaro Rub├®n        | Fl├│rez Barrera        |                 1 |    5060948.64
    87116 | ├ülvaro              | Erazo Mart├¡nez        |                 2 |    5059947.71
    39425 | Jos├®                | Barrera Berm├║dez      |                 1 |    5058012.70
    54585 | Brayan Pedro        | Acevedo Caicedo       |                 2 |    5055543.27
    18852 | Sandra              | Trujillo Vera         |                 1 |    5051911.02
   106020 | Mario               | Mart├¡nez Duque        |                 1 |    5051193.87
    37741 | Amparo Roc├¡o        | Pe├▒a Ibarra           |                 1 |    5050832.05
    77245 | Nicol├ís             | Cabrera P├®rez         |                 1 |    5049991.87
   118593 | Camilo              | Ramos Molina          |                 1 |    5048800.12
    36845 | Natalia             | Correa Vargas         |                 1 |    5045413.63
   113703 | Roc├¡o               | Guti├®rrez Londo├▒o     |                 1 |    5041774.63
    53179 | Rodrigo Reinaldo    | Agudelo Ortega        |                 1 |    5032865.55
    85335 | Jos├®                | Pinz├│n Castro         |                 1 |    5031453.35
   134297 | Teresa Martha       | Caicedo Ram├¡rez       |                 1 |    5028996.48
   141750 | Rafael              | Galvis Erazo          |                 2 |    5026552.27
   114420 | Amparo Aura         | Polan├¡a Carrillo      |                 1 |    5024670.00
    68868 | Mariana             | Jim├®nez Guti├®rrez     |                 1 |    5024013.95
    53639 | Brayan              | Losada Sandoval       |                 1 |    5023983.51
    88242 | Orlando Gilberto    | Su├írez Agudelo        |                 1 |    5022987.99
    49982 | Felipe              | Cardona Betancur      |                 1 |    5022628.25
    32273 | Yolanda             | Pinz├│n Carrillo       |                 1 |    5014771.88
    50631 | Miguel              | Zapata Silva          |                 1 |    5013706.66
    59961 | Libardo             | Villamizar Carrillo   |                 1 |    5012611.09
    71463 | Yeison              | Contreras Cardona     |                 1 |    5012573.40
   149858 | Wilson              | Rinc├│n Benavides      |                 1 |    5011332.00
   119546 | Francisco           | Garc├¡a Silva          |                 1 |    5011102.14
   116497 | Erika               | Silva Salazar         |                 1 |    5010299.84
     6057 | Jazm├¡n              | Hern├índez Fl├│rez      |                 1 |    5010191.24
    84944 | Libardo             | Narv├íez L├│pez         |                 1 |    5010059.92
    73964 | Yolanda             | Cardona Ospina        |                 2 |    5009632.43
    61787 | Mariana             | Parra Prada           |                 1 |    5008920.60
   125424 | Alberto Gustavo     | G├│mez Polan├¡a         |                 1 |    5008824.62
    73870 | Manuel              | D├¡az Montoya          |                 1 |    5008791.04
    14535 | Iv├ín                | Trujillo Zapata       |                 1 |    5008624.79
   128957 | Yeison ├ôscar        | Losada Henao          |                 1 |    5006347.42
    65657 | Cristian Hugo       | Cu├®llar Hern├índez     |                 1 |    5002036.38
    57961 | Myriam Marleny      | Cu├®llar ├ülvarez       |                 1 |    5001717.57
    12133 | Rodrigo Santiago    | Silva Lasso           |                 1 |    5001708.29
   125934 | Natalia             | Bonilla Lozano        |                 1 |    5000973.17
    20292 | ├ülvaro              | Rodr├¡guez Ramos       |                 1 |    5000810.13
     3881 | Daniel              | Mora Torres           |                 1 |    5000184.96
   111683 | Wilmer              | Torres Su├írez         |                 1 |    4997662.86
   114038 | Nubia Sandra        | Hern├índez Cardona     |                 1 |    4997133.10
   104846 | Olga Natalia        | Quintero Fl├│rez       |                 2 |    4996161.07
    37838 | Andr├®s H├®ctor       | R├¡os Prada            |                 1 |    4993821.32
   129588 | Paola               | Mora Rojas            |                 1 |    4993671.65
   116298 | Wilmer              | Giraldo Burbano       |                 1 |    4991184.00
   103349 | Luis Wilson         | Mart├¡nez Bastidas     |                 1 |    4990017.20
    65243 | Yeison              | Villamizar G├│mez      |                 1 |    4989546.10
    32802 | Adriana             | Rojas Guerrero        |                 1 |    4988486.39
    25643 | Libardo             | Jim├®nez Delgado       |                 1 |    4987876.27
    38330 | Wilmer              | Giraldo Giraldo       |                 1 |    4987831.74
    18570 | H├®ctor              | Chamorro Caicedo      |                 1 |    4987190.91
     4733 | Erika               | Uribe Osorio          |                 1 |    4986524.48
   135132 | Reinaldo Francisco  | Bedoya C├íceres        |                 1 |    4984242.56
    13896 | Ricardo             | Carrillo Arias        |                 1 |    4983110.29
    69653 | Esperanza           | Berm├║dez Rojas        |                 1 |    4982407.35
    64459 | Ricardo             | Jaimes Giraldo        |                 1 |    4981777.59
     8708 | Gloria              | Moreno Hern├índez      |                 1 |    4978611.40
    70270 | Cecilia Claudia     | Rinc├│n Ortiz          |                 1 |    4978167.39
    88979 | Nelson              | S├ínchez Betancur      |                 1 |    4975720.53
    88000 | Rafael              | Giraldo Burbano       |                 1 |    4973771.40
    73130 | Juan                | C├íceres Romero        |                 1 |    4973198.02
    30785 | Ricardo Emilio      | Ruiz Pe├▒a             |                 1 |    4968400.02
   146767 | Erika               | Moreno Arias          |                 1 |    4965975.12
   130859 | Esteban             | Duarte Moreno         |                 1 |    4965827.33
   134971 | Wilson              | Ortega Londo├▒o        |                 1 |    4965597.36
   125028 | Mercedes            | Bonilla Medina        |                 1 |    4964630.80
    19386 | Luis                | Hern├índez Ibarra      |                 1 |    4964222.97
   131926 | Mauricio            | Mar├¡n Mart├¡nez        |                 1 |    4963583.60
   138449 | In├®s                | Serrano Zuluaga       |                 1 |    4960835.28
    18130 | Javier              | Mart├¡nez Pab├│n        |                 1 |    4960726.93
   104079 | Luisa Elsa          | Castro Giraldo        |                 1 |    4960154.72
    49627 | Carmen              | Montoya Guti├®rrez     |                 1 |    4960114.71
     3108 | Alejandro           | Fl├│rez Narv├íez        |                 1 |    4959182.22
     8943 | Santiago            | Pinz├│n Sandoval       |                 2 |    4956949.56
   122316 | Diana               | Herrera Silva         |                 1 |    4956278.88
    93342 | Javier              | Quintero Arias        |                 1 |    4953171.00
    99005 | Rub├®n               | Ramos Rojas           |                 1 |    4952423.67
    96553 | Carolina            | Mar├¡n Silva           |                 1 |    4950160.49
   108139 | Wilson              | Zuluaga R├¡os          |                 1 |    4946740.55
    47421 | Sara                | Moreno Vera           |                 1 |    4944530.13
    30157 | H├®ctor              | Henao Barrera         |                 1 |    4943397.39
    85170 | Leidy               | Pinz├│n Trujillo       |                 1 |    4943326.50
    87824 | Laura               | Henao Cu├®llar         |                 1 |    4942811.68
    35846 | Hernando Luis       | Salazar Montoya       |                 1 |    4941860.69
   137594 | Manuel              | Cardona Ram├¡rez       |                 2 |    4941839.99
    90778 | Yeison              | Caicedo Zapata        |                 1 |    4941715.56
   104545 | Manuel              | R├¡os Bastidas         |                 1 |    4941508.11
    48327 | Andrea Liliana      | Bedoya Osorio         |                 1 |    4940235.15
   142699 | Gabriela            | Salazar Montoya       |                 1 |    4938179.00
   128755 | Gabriela            | Duarte Londo├▒o        |                 1 |    4936916.60
    41154 | Aura                | Valencia Duque        |                 1 |    4935365.88
     5099 | M├│nica Erika        | Ospina Londo├▒o        |                 2 |    4934206.82
    67187 | Jairo               | Correa Hern├índez      |                 1 |    4929867.64
    36029 | Nubia               | Londo├▒o Restrepo      |                 1 |    4928394.91
    91805 | Francisco           | Ramos Cu├®llar         |                 1 |    4928197.95
   131847 | Viviana             | Delgado Montoya       |                 1 |    4925392.32
   125845 | Jaime               | Uribe Romero          |                 1 |    4924502.73
   111616 | Efra├¡n              | Bastidas Torres       |                 1 |    4922634.40
     2774 | Juan An├¡bal         | Montoya ├ülvarez       |                 1 |    4922416.22
   105015 | Daniel              | Garc├¡a Duque          |                 1 |    4922055.84
   112252 | Ricardo Miguel      | Vargas Duarte         |                 1 |    4921306.64
    92240 | Mercedes Anc├¡zar    | Galvis Medina         |                 1 |    4916791.09
    56919 | Jos├®                | Cu├®llar Correa        |                 1 |    4916031.80
     4269 | Alejandro           | Bastidas Benavides    |                 1 |    4915646.38
   104246 | Cecilia             | Quintero Vera         |                 1 |    4915496.41
    95753 | Daniel              | Calder├│n Ospina       |                 1 |    4913666.33
   120320 | Laura Camila        | Henao Polan├¡a         |                 1 |    4913473.53
   101116 | Jaime               | Mart├¡nez Ortiz        |                 1 |    4912581.94
      937 | Marcela             | Benavides Castillo    |                 1 |    4912541.01
   109806 | Marcela             | Mora Perdomo          |                 1 |    4912167.00
   116149 | Luis                | Castro Acevedo        |                 1 |    4911971.76
    89588 | Jaime Francisco     | Chamorro Gonz├ílez     |                 1 |    4911913.53
    83049 | Jaime               | Montoya Pinz├│n        |                 1 |    4911667.20
   119132 | M├│nica              | C├íceres Rojas         |                 1 |    4910782.50
   117761 | Amparo              | Ram├¡rez R├¡os          |                 1 |    4910263.25
    55034 | Miguel              | D├¡az Bedoya           |                 1 |    4909051.80
    49521 | Brayan              | Perdomo D├¡az          |                 1 |    4908662.17
    47216 | Valentina Martha    | D├¡az Romero           |                 1 |    4907738.32
    60672 | Natalia             | Duarte Ortega         |                 1 |    4906902.71
    64007 | Carmen              | Trujillo Arango       |                 1 |    4904672.49
    90764 | Teresa Isabella     | Fl├│rez Barrera        |                 1 |    4904427.28
    81420 | Sara                | Barrera Mora          |                 1 |    4904120.22
    47497 | Valentina           | Ruiz G├│mez            |                 1 |    4903910.70
   131844 | Abelardo            | Gonz├ílez L├│pez        |                 1 |    4902743.71
    21999 | Andrea              | C├írdenas Rojas        |                 1 |    4901275.40
    55624 | Hernando            | Ortiz Romero          |                 1 |    4900011.75
   121937 | Yeison              | L├│pez Mart├¡nez        |                 1 |    4899722.40
    65881 | Javier              | Uribe Hern├índez       |                 1 |    4899656.41
   121666 | ├ëdgar ├ôscar         | Cu├®llar Giraldo       |                 1 |    4896183.04
    15462 | Fanny               | Medina Molina         |                 1 |    4895319.78
    43065 | Samuel              | Bastidas S├ínchez      |                 1 |    4895127.75
   115873 | Juli├ín Sebasti├ín    | Mu├▒oz Benavides       |                 1 |    4894749.65
    17717 | Rosa Stella         | Rojas Rangel          |                 1 |    4894612.75
    70381 | Aura                | Rivera R├¡os           |                 1 |    4894465.11
   126894 | Jaime               | Tovar Londo├▒o         |                 1 |    4894192.55
   107798 | Anc├¡zar             | V├®lez Calder├│n        |                 1 |    4894190.13
    66211 | Gilberto            | Castillo Guti├®rrez    |                 1 |    4894031.97
    21893 | Roc├¡o               | Rodr├¡guez ├ülvarez     |                 1 |    4892385.12
    34807 | Claudia Sandra      | Rojas Mu├▒oz           |                 1 |    4891794.89
    25263 | Francisco           | Salazar Benavides     |                 1 |    4891450.54
    60804 | Natalia Alba        | Quintero Rojas        |                 1 |    4889828.28
     8244 | Camilo              | Herrera Villamizar    |                 1 |    4888622.39
    41542 | Patricia            | Arias Pinz├│n          |                 1 |    4887579.71
    91173 | Mauricio            | Rangel Jim├®nez        |                 1 |    4887452.25
    27028 | Elsa                | Su├írez Rodr├¡guez      |                 1 |    4884959.48
   140212 | Reinaldo            | Tovar Cardona         |                 1 |    4883037.78
   121617 | Gabriela            | Vera Henao            |                 1 |    4881323.40
    97706 | Yuliana Elsa        | R├¡os Fl├│rez           |                 1 |    4880124.69
    91025 | Mariana             | Ram├¡rez Bonilla       |                 1 |    4879623.44
    85362 | Brayan ├ëdgar        | L├│pez Vargas          |                 1 |    4877942.55
   103537 | Esteban Jorge       | Rangel Cabrera        |                 1 |    4877907.31
    77956 | Ruth                | Silva Hern├índez       |                 1 |    4875540.80
    93632 | Mateo               | Su├írez Vera           |                 1 |    4872249.86
     3910 | Carolina            | Romero Ruiz           |                 1 |    4869088.20
    39851 | Edilma              | Bonilla L├│pez         |                 1 |    4866314.74
   111271 | Jos├®                | Jim├®nez Quintero      |                 1 |    4866118.66
    66507 | Antonio             | Guerrero Zapata       |                 3 |    4864976.00
   133783 | Juan Diego          | Garc├¡a Romero         |                 1 |    4864874.96
   110731 | Camilo              | Zapata Romero         |                 1 |    4864631.10
    70862 | Fanny               | Tovar P├®rez           |                 1 |    4864106.32
   149091 | Carmen              | Pab├│n L├│pez           |                 1 |    4863773.44
    27845 | Lorena              | Quintero Rinc├│n       |                 1 |    4862731.58
    39628 | Yeison Juan         | C├íceres Bastidas      |                 1 |    4862419.50
    55372 | Blanca              | Giraldo Burbano       |                 1 |    4862014.05
    79185 | Alejandro           | Torres Prada          |                 1 |    4861100.73
   112588 | Abelardo            | ├ülvarez D├¡az          |                 1 |    4859754.78
   116630 | ├üngela              | D├¡az Berm├║dez         |                 1 |    4859515.36
    59224 | Wilmer              | Bedoya P├®rez          |                 1 |    4858951.66
    27187 | Valentina Stella    | Ortiz Carrillo        |                 1 |    4858940.32
    90544 | Liliana             | Vera Betancur         |                 1 |    4858185.15
    55557 | Esperanza           | Pinz├│n Ramos          |                 1 |    4858049.97
   136097 | In├®s                | Benavides L├│pez       |                 1 |    4857523.92
    61761 | Sebasti├ín           | Osorio Herrera        |                 1 |    4857039.29
    65958 | Manuela             | Rojas Agudelo         |                 1 |    4856703.19
   111030 | Fernando            | C├íceres Tovar         |                 1 |    4855936.25
    70441 | Patricia Adriana    | L├│pez Pe├▒a            |                 1 |    4853722.00
   105202 | Fernando            | Romero Su├írez         |                 1 |    4852556.03
    81237 | Francisco Alejandro | Rojas Benavides       |                 1 |    4850597.46
   134565 | Edilma              | Ortiz Guti├®rrez       |                 1 |    4849728.06
   117891 | Reinaldo            | Salazar Ruiz          |                 1 |    4845038.76
    25164 | Mario               | Mora Parra            |                 1 |    4844304.58
   128929 | Martha              | Quintero Jaimes       |                 1 |    4843721.35
    89087 | Luc├¡a               | ├ülvarez Contreras     |                 1 |    4842614.30
     8063 | Esteban             | Zapata Silva          |                 1 |    4842223.61
    58244 | Daniel              | Benavides Duque       |                 1 |    4840301.98
    70332 | Ruth                | Ortega Cardona        |                 1 |    4839213.34
   115326 | Olga                | Ortega C├íceres        |                 1 |    4839120.04
    80998 | Yesenia             | Zapata Mej├¡a          |                 1 |    4838548.44
   129163 | ├ëdgar               | Torres Moreno         |                 1 |    4838095.40
   101902 | Jairo               | Betancur Arias        |                 2 |    4837309.55
    57820 | Yuliana             | Ospina Lozano         |                 1 |    4835826.24
    20226 | Mateo Gustavo       | Barrera Ni├▒o          |                 1 |    4835539.20
    91053 | Beatriz             | Calder├│n Londo├▒o      |                 1 |    4835455.56
   126927 | Edilma Valentina    | Barrera Pinz├│n        |                 1 |    4835125.40
    89658 | ├ëdgar Abelardo      | Rivera Agudelo        |                 1 |    4834069.24
   115952 | Aura                | Mar├¡n Giraldo         |                 2 |    4832884.37
   148657 | Camilo              | Delgado Carrillo      |                 1 |    4831990.12
    97158 | Wilmer              | Rojas Parra           |                 1 |    4831252.10
   123436 | Rosa                | C├íceres Pab├│n         |                 1 |    4830966.42
    10569 | Jos├®                | Silva Tovar           |                 1 |    4829377.85
   114305 | Alejandro Mateo     | ├ülvarez Tovar         |                 1 |    4828940.60
    12800 | Samuel Wilmer       | Londo├▒o Calder├│n      |                 1 |    4828218.45
    87237 | Ricardo Nelson      | Ruiz Rinc├│n           |                 1 |    4828209.10
    19603 | Isabella Aura       | Mora Quintero         |                 1 |    4827023.52
     3347 | Nicol├ís             | Ramos Narv├íez         |                 1 |    4826847.28
    57144 | Andr├®s              | Lasso ├ülvarez         |                 1 |    4826475.00
   128893 | Diana               | Burbano Ospina        |                 1 |    4825740.24
    89856 | Sebasti├ín           | Vera Sandoval         |                 1 |    4825562.80
    97962 | Abelardo            | Ramos Moreno          |                 1 |    4825555.93
    34298 | Amparo              | Tovar Gonz├ílez        |                 1 |    4825550.30
    12107 | An├¡bal Hugo         | Ni├▒o ├ülvarez          |                 1 |    4825464.20
    75595 | Ruth Gabriela       | Mart├¡nez R├¡os         |                 1 |    4825053.90
    34946 | Jaime               | Salazar Pab├│n         |                 1 |    4824912.16
    62437 | Orlando Gustavo     | Ortiz Ibarra          |                 1 |    4824783.36
    73447 | Heriberto Javier    | C├íceres Osorio        |                 1 |    4822779.27
    40470 | Yesenia Dora        | Uribe Duarte          |                 1 |    4821840.20
    52218 | Heriberto           | Duarte Ramos          |                 1 |    4821803.25
    59173 | Amparo              | Ortega Ibarra         |                 1 |    4821146.82
    26983 | Mercedes            | Silva Valencia        |                 1 |    4818184.20
   127940 | Mar├¡a               | Zapata Polan├¡a        |                 1 |    4817802.58
   147601 | Jairo               | Ruiz Mosquera         |                 1 |    4816003.68
    68665 | Erika               | Garc├¡a Delgado        |                 1 |    4813399.36
    42174 | Esteban             | Berm├║dez Villamizar   |                 1 |    4812626.69
      580 | Francisco           | Mu├▒oz Mu├▒oz           |                 1 |    4811597.70
    78577 | Leidy               | Su├írez Barrera        |                 1 |    4810849.38
    66657 | David               | Valencia Burbano      |                 1 |    4810540.48
    10770 | Carmen              | R├¡os Narv├íez          |                 1 |    4809845.23
    88626 | Cristian            | Restrepo Valencia     |                 1 |    4809532.34
   109204 | Natalia Olga        | Vargas Ram├¡rez        |                 1 |    4809188.90
   121763 | Natalia             | Mora D├¡az             |                 1 |    4808636.92
    41009 | Ruth Myriam         | Arias C├írdenas        |                 1 |    4808170.41
    43991 | Lorena              | Henao Vargas          |                 1 |    4808119.50
    64896 | Alejandro           | Arango Lasso          |                 1 |    4807871.64
     5522 | Sandra Isabella     | Molina Ram├¡rez        |                 1 |    4807039.98
   143356 | Alberto Esteban     | Lasso Ni├▒o            |                 1 |    4806837.63
   124771 | Iv├ín Sebasti├ín      | Gonz├ílez Mar├¡n        |                 1 |    4805974.72
   136167 | Rosa                | Arango Villamizar     |                 1 |    4805391.29
   133596 | Esteban             | Ram├¡rez Ram├¡rez       |                 1 |    4802665.42
   107175 | Camilo              | Salazar Rinc├│n        |                 1 |    4802386.78
    63392 | Mariana Marleny     | Valencia Mart├¡nez     |                 1 |    4800629.55
    89760 | Carmen              | Jaimes Arias          |                 1 |    4799731.75
   122840 | Mario Miguel        | Ortega Ortiz          |                 1 |    4799348.62
    15570 | Hernando            | Pe├▒a Serrano          |                 1 |    4799053.44
    48009 | Yeison              | Ni├▒o Agudelo          |                 1 |    4797200.84
    15978 | Rub├®n               | Castillo Narv├íez      |                 1 |    4796288.43
   140027 | Nelson              | D├¡az Contreras        |                 1 |    4794856.00
   137402 | Jos├®                | Ram├¡rez Duque         |                 1 |    4794445.24
    26327 | Dora                | Silva Pab├│n           |                 1 |    4794291.25
   117016 | Mario               | Pinz├│n Carrillo       |                 1 |    4793056.64
   142309 | Fabio Javier        | Guerrero Duarte       |                 1 |    4790453.93
    30672 | Nelson Guillermo    | Su├írez Castillo       |                 1 |    4789391.02
    39275 | Carolina Camila     | Vera Ni├▒o             |                 1 |    4788589.63
    69304 | Wilmer              | Zapata Rivera         |                 1 |    4788452.79
    66883 | Claudia Marleny     | C├írdenas Losada       |                 1 |    4787766.39
    98749 | Ramiro              | L├│pez Betancur        |                 1 |    4787467.42
   130545 | Nelson              | Betancur R├¡os         |                 1 |    4787448.40
   105550 | Martha              | Guerrero Bastidas     |                 1 |    4786940.86
    62247 | Olga Gladys         | Betancur Ortiz        |                 1 |    4783144.68
   104069 | Gilberto            | D├¡az Montoya          |                 1 |    4781015.07
    10984 | Mario Luis          | Moreno Lasso          |                 1 |    4778907.97
   117071 | Mariana             | Castro Acevedo        |                 1 |    4778876.75
    82129 | Jaime               | Gonz├ílez Herrera      |                 1 |    4775683.22
    81883 | Ricardo H├®ctor      | Correa Hern├índez      |                 1 |    4774080.12
   146867 | Efra├¡n Daniel       | Benavides Fl├│rez      |                 1 |    4772351.36
    74001 | Hernando            | Ibarra Losada         |                 1 |    4771099.20
   146928 | ├ülvaro              | S├ínchez Prada         |                 1 |    4771027.10
    19297 | Lorena              | Cardona Mu├▒oz         |                 1 |    4770050.89
   138260 | Luz                 | Mora Cardona          |                 1 |    4768109.32
    81605 | Valentina           | S├ínchez D├¡az          |                 1 |    4766922.09
    74693 | Santiago            | Sandoval Correa       |                 1 |    4765276.20
    10854 | Juan Javier         | Losada Arango         |                 1 |    4764674.92
    39735 | Beatriz             | Ortega Romero         |                 1 |    4764670.24
    36688 | Luisa               | Tovar Guerrero        |                 1 |    4764137.68
    49726 | Felipe              | Barrera Barrera       |                 1 |    4763238.93
    84747 | Javier Libardo      | Ortiz Romero          |                 1 |    4763053.24
    28961 | Wilmer              | Berm├║dez Valencia     |                 1 |    4762676.80
     4855 | Ana                 | Bedoya Villamizar     |                 2 |    4761965.88
    97951 | Yeison Brayan       | Pab├│n Garc├¡a          |                 1 |    4761763.91
    33877 | Pedro Diego         | Gonz├ílez Hern├índez    |                 1 |    4759628.01
   129242 | Samuel              | Barrera Moreno        |                 1 |    4758691.14
    57486 | ├üngela              | Carrillo Agudelo      |                 1 |    4756516.70
     4865 | Emilio              | Prada Moreno          |                 1 |    4750439.04
    41690 | Orlando             | V├®lez Duque           |                 1 |    4750137.27
    11591 | Aura                | Osorio Rodr├¡guez      |                 2 |    4749730.83
    27847 | Gilberto            | Jim├®nez Mora          |                 1 |    4749208.33
     5438 | H├®ctor              | Polan├¡a C├írdenas      |                 1 |    4749089.88
    68671 | Natalia Patricia    | Ruiz Berm├║dez         |                 1 |    4748477.85
    80764 | Luz Camila          | Ram├¡rez Rivera        |                 1 |    4747781.23
    41952 | Leidy               | Parra G├│mez           |                 1 |    4746020.54
    48067 | Abelardo            | Delgado Correa        |                 1 |    4745207.35
   115228 | Wilmer David        | Perdomo Pinz├│n        |                 1 |    4742192.52
   130528 | Daniela             | Rojas Sandoval        |                 1 |    4738166.06
   136256 | Diego               | Prada Su├írez          |                 1 |    4738132.74
     9681 | Camila Carolina     | Jim├®nez Parra         |                 1 |    4737171.20
   130242 | Abelardo Alberto    | Ramos Cardona         |                 1 |    4735574.13
   116224 | Luisa               | Carrillo Jim├®nez      |                 1 |    4734559.18
   140289 | Camilo Juan         | Contreras Uribe       |                 1 |    4733274.60
    60222 | Luz                 | Sandoval Mosquera     |                 1 |    4733181.96
     2155 | ├ëdgar               | Calder├│n Correa       |                 1 |    4733034.78
    92615 | Adriana Teresa      | Arango Rinc├│n         |                 1 |    4733025.00
    93415 | Myriam              | Bonilla Carrillo      |                 1 |    4732362.21
    34736 | Manuela             | Calder├│n Betancur     |                 1 |    4731656.14
    56546 | Alejandra           | Bedoya Mart├¡nez       |                 1 |    4730904.35
    73794 | Edilma              | Mosquera Narv├íez      |                 1 |    4730534.70
    33214 | Yuliana Teresa      | R├¡os V├®lez            |                 1 |    4730031.80
    81536 | Emilio              | Contreras Montoya     |                 1 |    4728261.83
    61190 | Esteban             | P├®rez Tovar           |                 1 |    4728065.33
   134992 | Sebasti├ín           | Mart├¡nez Pinz├│n       |                 1 |    4727280.42
     7377 | Fernando            | Mora Ni├▒o             |                 1 |    4727238.72
    63005 | Ana                 | Vargas Contreras      |                 1 |    4726898.52
   132318 | Blanca              | Mora Mej├¡a            |                 1 |    4726559.73
    80045 | Cristian            | Salazar Torres        |                 1 |    4723447.50
   126227 | Cristian            | Barrera Serrano       |                 1 |    4722920.92
   126014 | Mar├¡a Patricia      | Rivera Mora           |                 1 |    4722874.76
   127997 | Patricia Sof├¡a      | Uribe Erazo           |                 1 |    4722632.64
    86570 | Rafael              | Parra Fl├│rez          |                 1 |    4722631.88
     2704 | Samuel              | L├│pez Delgado         |                 1 |    4722268.46
    45127 | Stella              | Londo├▒o Ospina        |                 1 |    4721387.16
     5866 | Roc├¡o               | Bedoya Losada         |                 1 |    4721306.71
   102558 | Sof├¡a               | ├ülvarez Arias         |                 1 |    4720744.11
   141175 | Elsa                | Arias Guerrero        |                 1 |    4720023.00
   129978 | Alejandro           | Pinz├│n Ramos          |                 1 |    4718542.44
    76222 | Gladys Edilma       | Benavides Tovar       |                 1 |    4717027.88
    26623 | Diana               | Ram├¡rez Parra         |                 1 |    4716634.06
    73135 | Carolina            | Romero Betancur       |                 1 |    4716280.64
    86254 | Alejandra           | Jim├®nez Molina        |                 1 |    4715316.97
    10048 | Blanca Carolina     | Su├írez Lozano         |                 1 |    4715138.78
    75449 | Fernando            | Ram├¡rez Polan├¡a       |                 1 |    4714924.50
    14222 | Luz                 | Berm├║dez Restrepo     |                 1 |    4714337.47
    39521 | Martha Beatriz      | Mar├¡n Jim├®nez         |                 1 |    4713213.41
    53655 | Ana                 | Garc├¡a Acevedo        |                 1 |    4709618.41
    74513 | Patricia Stella     | Montoya Torres        |                 1 |    4707796.85
    46735 | Fanny               | Barrera Henao         |                 1 |    4707003.41
    35152 | In├®s                | Vera Osorio           |                 1 |    4706968.08
     6967 | Fanny               | Uribe Pinz├│n          |                 1 |    4706527.49
    90603 | Mateo               | C├íceres Su├írez        |                 1 |    4705500.16
   130948 | Francisco           | Perdomo Lasso         |                 1 |    4703357.62
    44687 | Hugo Guillermo      | Ibarra Guerrero       |                 1 |    4702532.30
   105402 | Francisco           | Tovar Benavides       |                 1 |    4700379.20
    55893 | Brayan ├ëdgar        | Londo├▒o Ortiz         |                 1 |    4699717.12
    23037 | Rosa                | Tovar Hern├índez       |                 1 |    4696808.35
    96890 | Marcela             | Polan├¡a Parra         |                 1 |    4695048.48
    95728 | Elsa Marcela        | Valencia Ospina       |                 1 |    4694989.78
   102166 | Manuel              | Garc├¡a Zapata         |                 1 |    4694293.05
    26733 | Luisa               | Valencia Serrano      |                 1 |    4693722.84
    97651 | Efra├¡n Alberto      | R├¡os S├ínchez          |                 1 |    4690731.78
    74042 | Ricardo             | R├¡os P├®rez            |                 1 |    4690240.08
     7351 | Marleny             | G├│mez Losada          |                 1 |    4689745.18
    91231 | Natalia             | Villamizar Galvis     |                 1 |    4687360.98
    12960 | Claudia Martha      | Rinc├│n Mosquera       |                 1 |    4686772.34
    57167 | Ana                 | Villamizar Giraldo    |                 1 |    4685345.56
   140807 | Cristian            | Vargas Rodr├¡guez      |                 1 |    4684963.71
    39955 | Rafael              | Mu├▒oz Losada          |                 1 |    4684459.33
    96834 | Martha              | C├írdenas Londo├▒o      |                 1 |    4684257.06
    62430 | Laura Nubia         | Pinz├│n Erazo          |                 1 |    4684130.03
   149741 | Ricardo             | Bonilla Guerrero      |                 1 |    4682380.71
    79253 | Rub├®n               | Garc├¡a Henao          |                 1 |    4681707.96
    75657 | Yolanda Camila      | Mu├▒oz Silva           |                 1 |    4681460.00
    69113 | Jorge               | Moreno Salazar        |                 1 |    4680536.38
   142207 | Fernando Fabio      | Acevedo Vargas        |                 1 |    4679134.10
    90923 | Mariana             | Guerrero ├ülvarez      |                 1 |    4678372.85
    74167 | Yeison Jaime        | Zapata Bonilla        |                 1 |    4678203.50
    21696 | ├ülvaro              | Pinz├│n Cardona        |                 1 |    4676657.02
   126155 | Mateo               | Betancur Uribe        |                 1 |    4675824.09
     6155 | Samuel Jos├®         | Mar├¡n Perdomo         |                 1 |    4675724.88
   106098 | Jaime               | Ospina Osorio         |                 1 |    4674687.78
    88804 | Amparo              | Villamizar Montoya    |                 1 |    4672674.58
     8539 | Esteban             | Polan├¡a Medina        |                 1 |    4672281.06
    44033 | Iv├ín                | Osorio Acevedo        |                 1 |    4671862.12
    38354 | Luis David          | Osorio Molina         |                 1 |    4671696.59
    50826 | An├¡bal              | Ramos Restrepo        |                 1 |    4670674.32
    80719 | Patricia            | Pinz├│n Medina         |                 1 |    4670457.75
    68791 | Mauricio            | Lasso Fl├│rez          |                 1 |    4668724.83
    91780 | Manuela             | Tovar Tovar           |                 1 |    4668306.84
    57446 | H├®ctor              | Ibarra ├ülvarez        |                 1 |    4668065.78
   139168 | Javier              | Mej├¡a Arango          |                 1 |    4667590.31
   136032 | Fernando Juan       | Gonz├ílez Mart├¡nez     |                 1 |    4664279.28
    95787 | Mateo ├ôscar         | Herrera Betancur      |                 1 |    4664077.74
     7003 | Esperanza           | Jaimes Narv├íez        |                 1 |    4664062.62
   133673 | Alejandro           | Bastidas Perdomo      |                 1 |    4663431.01
    32951 | Edilma              | S├ínchez Caicedo       |                 1 |    4663336.44
    93860 | Fernando            | Hern├índez R├¡os        |                 1 |    4662269.92
    59953 | Pedro               | Parra ├ülvarez         |                 1 |    4659543.38
   132443 | Antonio Esteban     | Ramos C├írdenas        |                 1 |    4659089.70
   147288 | Fernando            | S├ínchez Torres        |                 1 |    4657929.79
    82911 | Cristian            | Mart├¡nez Vera         |                 1 |    4656457.82
   145486 | Daniela             | Ruiz Agudelo          |                 1 |    4655228.04
   120347 | Mercedes            | Ospina Londo├▒o        |                 1 |    4654865.45
   121285 | Orlando Reinaldo    | Mart├¡nez Perdomo      |                 1 |    4653979.46
   120354 | Amparo Leidy        | Vera Vera             |                 1 |    4653900.76
    73385 | Manuel Jaime        | Ruiz Herrera          |                 1 |    4653331.77
    60424 | Gustavo             | Trujillo Rangel       |                 1 |    4653259.66
    38534 | Germ├ín              | Bedoya Osorio         |                 1 |    4653214.65
    51986 | Mario Mauricio      | Erazo Trujillo        |                 2 |    4650919.53
   100848 | Jos├®                | Duque Guti├®rrez       |                 1 |    4650555.75
   117971 | Myriam Patricia     | Betancur Losada       |                 1 |    4650095.00
   127555 | Rub├®n Abelardo      | Fl├│rez Pinz├│n         |                 1 |    4649842.55
    57789 | Luz                 | Erazo S├ínchez         |                 1 |    4649167.05
   106622 | Efra├¡n              | Arias Ospina          |                 1 |    4648959.32
   130419 | Manuela             | G├│mez Zapata          |                 1 |    4647997.00
    40310 | Pedro               | Su├írez Calder├│n       |                 1 |    4646806.53
    85959 | Guillermo           | Ruiz Valencia         |                 1 |    4646171.04
    58171 | Luc├¡a Dora          | Zapata ├ülvarez        |                 1 |    4646101.76
    91079 | Nelson              | Bastidas Pab├│n        |                 1 |    4645881.84
   110220 | Miguel              | Erazo Henao           |                 1 |    4645335.89
   115259 | Cecilia             | Restrepo Giraldo      |                 2 |    4644061.55
    64319 | Rafael              | Tovar P├®rez           |                 1 |    4644027.99
    14055 | ├ülvaro              | Bastidas Mart├¡nez     |                 1 |    4643409.96
    83156 | Alba                | Caicedo Mora          |                 1 |    4642519.50
    88297 | Orlando             | Romero Tovar          |                 1 |    4641325.35
    53190 | Fernando Abelardo   | Medina Delgado        |                 1 |    4640498.57
    48931 | Reinaldo            | Villamizar Betancur   |                 1 |    4638173.61
   135258 | Dora Carolina       | Losada Henao          |                 1 |    4637743.80
    58815 | Myriam Jazm├¡n       | Ortega Polan├¡a        |                 1 |    4637452.98
    24673 | Gladys              | ├ülvarez Losada        |                 1 |    4635012.80
   132985 | Paola               | Jaimes Montoya        |                 1 |    4634813.00
    25784 | Reinaldo            | G├│mez Losada          |                 1 |    4634672.41
   138804 | Anc├¡zar             | Mosquera Montoya      |                 1 |    4633697.29
   129445 | Camilo              | S├ínchez Duque         |                 1 |    4632710.32
    66461 | Mar├¡a Camila        | Ortiz Moreno          |                 1 |    4632665.66
    15810 | Yeison              | Mart├¡nez Vera         |                 1 |    4632047.35
   113636 | Stella              | Guti├®rrez Jaimes      |                 1 |    4632006.04
   116481 | Adriana             | Castro Polan├¡a        |                 1 |    4631923.99
   107404 | Rosa                | Guti├®rrez Parra       |                 1 |    4631723.64
    39520 | Iv├ín                | Barrera Ramos         |                 1 |    4631619.16
   113410 | Emilio              | Medina P├®rez          |                 1 |    4631077.78
   141772 | Sebasti├ín           | Polan├¡a Sandoval      |                 1 |    4630729.70
    64714 | Paola               | Ospina Silva          |                 1 |    4630214.94
    86228 | Yeison              | Ram├¡rez Pe├▒a          |                 1 |    4629629.83
   135281 | Mariana Carolina    | L├│pez Rinc├│n          |                 1 |    4629253.16
    10234 | Alba                | Duarte Arango         |                 1 |    4628601.36
   100389 | Wilmer              | Bastidas Valencia     |                 1 |    4627329.93
    94248 | Natalia             | Vera Cu├®llar          |                 1 |    4626106.26
    49944 | Juli├ín              | D├¡az Medina           |                 1 |    4624900.29
   125198 | Mercedes            | Pab├│n Herrera         |                 1 |    4623726.00
    38054 | Libardo Cristian    | Calder├│n Ruiz         |                 1 |    4623090.52
    42512 | Antonio             | Castro Ramos          |                 1 |    4622268.20
   116664 | Brayan              | Pab├│n Agudelo         |                 1 |    4622145.50
   106790 | Emilio              | Gonz├ílez Castro       |                 1 |    4622030.34
   130031 | An├¡bal              | Benavides Barrera     |                 1 |    4621735.95
    44481 | ├ülvaro Iv├ín         | C├írdenas L├│pez        |                 1 |    4620799.56
    94018 | David Felipe        | L├│pez Benavides       |                 1 |    4619216.82
    65647 | Sof├¡a Sara          | Arias Trujillo        |                 1 |    4618245.38
    94685 | ├ülvaro              | L├│pez Giraldo         |                 1 |    4617595.44
   123727 | Andrea Marcela      | Parra Vera            |                 1 |    4617116.45
    93183 | ├ülvaro              | Salazar Losada        |                 1 |    4617064.90
    82164 | Wilmer              | Torres Correa         |                 1 |    4616792.97
   128289 | Wilmer Pedro        | Herrera G├│mez         |                 2 |    4613530.00
   109808 | In├®s Patricia       | Lasso Losada          |                 1 |    4613489.92
    17853 | Wilmer              | Ramos Benavides       |                 2 |    4613247.18
   106719 | Alberto             | Castro Acevedo        |                 1 |    4611534.63
    94668 | In├®s                | Bonilla S├ínchez       |                 1 |    4611290.76
    49244 | Luc├¡a               | Polan├¡a Parra         |                 1 |    4610728.10
    19661 | Ramiro              | Sandoval Mosquera     |                 1 |    4609504.13
     1816 | Luc├¡a               | Molina Villamizar     |                 1 |    4608949.86
    13266 | Nicol├ís             | Correa Ni├▒o           |                 1 |    4608847.14
   113884 | ├ëdgar               | Delgado Bonilla       |                 1 |    4608032.00
    35766 | Libardo Mario       | Mar├¡n Gonz├ílez        |                 1 |    4607421.46
    50896 | Roc├¡o               | Garc├¡a Quintero       |                 1 |    4606447.11
    59658 | Miguel              | Correa Tovar          |                 1 |    4603630.40
    75483 | Isabella            | Uribe Caicedo         |                 1 |    4602014.56
    17573 | Cristian            | Su├írez Vargas         |                 1 |    4600944.98
    98121 | Jorge               | Calder├│n Mu├▒oz        |                 1 |    4599643.12
    88949 | David               | Burbano Cardona       |                 1 |    4598711.11
    25864 | Rosa                | Hern├índez Ram├¡rez     |                 1 |    4594749.68
   124952 | Samuel              | Hern├índez Losada      |                 1 |    4593858.99
    58547 | Ana                 | Cardona Su├írez        |                 1 |    4593037.31
    16853 | Abelardo            | Mosquera Ibarra       |                 1 |    4592877.50
   105099 | Juliana             | Moreno Ibarra         |                 1 |    4590542.76
     3046 | Diego               | Villamizar Silva      |                 1 |    4589250.54
    69855 | Rafael              | Hern├índez Bedoya      |                 1 |    4589021.31
    94375 | Laura               | Calder├│n Castillo     |                 1 |    4587832.83
    27825 | Leidy               | Barrera Carrillo      |                 1 |    4587372.34
   131284 | Daniel              | R├¡os Castillo         |                 1 |    4586812.46
   145815 | Carolina Alba       | Garc├¡a Agudelo        |                 1 |    4586557.50
    18771 | Ricardo Gilberto    | Agudelo C├írdenas      |                 1 |    4586410.24
    40056 | Rosa                | Salazar Henao         |                 1 |    4586298.64
   145205 | Liliana             | Prada G├│mez           |                 1 |    4585142.60
    20420 | Lorena Rosa         | Galvis ├ülvarez        |                 1 |    4584638.76
   140268 | Mauricio            | C├íceres Galvis        |                 1 |    4583895.67
    83603 | Ramiro              | Pinz├│n Jim├®nez        |                 1 |    4583669.09
   105113 | Libardo Juan        | Mart├¡nez Quintero     |                 1 |    4582962.17
    78690 | Reinaldo            | Prada Delgado         |                 1 |    4582872.58
   129318 | Nubia               | Zapata Benavides      |                 1 |    4582690.66
   116154 | Hernando Ricardo    | Londo├▒o S├ínchez       |                 1 |    4582192.61
    83274 | Beatriz             | Fl├│rez Pe├▒a           |                 1 |    4582051.76
    62209 | ├ülvaro              | Castillo Molina       |                 1 |    4581651.56
    90849 | Andr├®s Ramiro       | Mart├¡nez Arango       |                 1 |    4580418.15
     7995 | Natalia Luisa       | Ram├¡rez Silva         |                 1 |    4580205.04
   119988 | Heriberto           | Medina Ortega         |                 1 |    4580063.22
    71067 | Hugo                | Acevedo Pinz├│n        |                 1 |    4579630.65
   105516 | Natalia             | Calder├│n Restrepo     |                 1 |    4578446.34
    65814 | Abelardo            | Pab├│n Castillo        |                 1 |    4578111.73
   118487 | Juli├ín Jairo        | P├®rez Gonz├ílez        |                 1 |    4578057.60
   146566 | Anc├¡zar             | L├│pez Ortega          |                 1 |    4577962.80
    96798 | Gloria              | Osorio Bonilla        |                 1 |    4576391.62
    91822 | Rafael              | Rojas Torres          |                 1 |    4575188.82
   137362 | Ruth                | Parra Chamorro        |                 1 |    4574264.33
    31651 | Yolanda             | Cardona Osorio        |                 1 |    4570857.90
   119011 | Gladys              | Pinz├│n Pab├│n          |                 1 |    4569033.82
    22137 | Patricia            | Bedoya Rivera         |                 1 |    4568724.52
    52413 | Juan                | Moreno Tovar          |                 1 |    4568172.39
    62489 | Santiago            | Rinc├│n Vera           |                 1 |    4566250.72
    60105 | Liliana             | Rojas Mu├▒oz           |                 1 |    4565974.03
    54679 | Blanca              | Cabrera Silva         |                 1 |    4565565.41
   126337 | Libardo             | Ortega Zuluaga        |                 1 |    4565501.01
    61592 | Yesenia             | S├ínchez Castro        |                 1 |    4564793.70
   145623 | Hugo                | Bonilla Jim├®nez       |                 1 |    4563670.86
    38498 | Miguel Felipe       | Restrepo Pe├▒a         |                 1 |    4562023.55
   146356 | Pedro               | Jaimes Vera           |                 1 |    4561977.66
   142614 | Gilberto            | Ni├▒o Henao            |                 1 |    4560021.88
     7616 | Carlos Ramiro       | Rangel Duarte         |                 2 |    4559527.14
     7149 | Camila Olga         | Mej├¡a Losada          |                 1 |    4557321.19
    41169 | Yeison              | Rivera Ruiz           |                 1 |    4557185.95
    52793 | Viviana             | Trujillo Mar├¡n        |                 1 |    4556606.30
    49777 | ├ôscar               | Rojas Prada           |                 1 |    4556073.16
     4204 | Camilo              | R├¡os Ramos            |                 1 |    4555817.03
     3426 | Laura               | Pe├▒a R├¡os             |                 1 |    4554885.71
    17774 | Myriam              | Rivera Ortiz          |                 1 |    4554604.86
    14268 | Dora ├üngela         | Pe├▒a Ram├¡rez          |                 1 |    4554226.70
   145218 | Jairo               | Delgado C├íceres       |                 1 |    4554206.67
   138271 | Gustavo             | Benavides Erazo       |                 1 |    4553421.24
    40569 | Aura Ruth           | Sandoval Ortega       |                 1 |    4552622.27
    73701 | Libardo             | L├│pez Bastidas        |                 1 |    4548320.61
    15677 | Rosa                | Moreno Cu├®llar        |                 1 |    4548186.00
    36475 | Arturo              | Mu├▒oz Burbano         |                 1 |    4548052.80
    92725 | Ramiro Juli├ín       | Narv├íez Mora          |                 1 |    4547346.53
    43365 | Mateo               | Erazo Villamizar      |                 1 |    4543715.61
     1099 | Luc├¡a               | Barrera R├¡os          |                 1 |    4543612.92
    87080 | Sara Mercedes       | Caicedo R├¡os          |                 1 |    4542343.32
   110006 | Patricia Teresa     | Bedoya C├íceres        |                 1 |    4541199.12
   136624 | Luz                 | Mu├▒oz Parra           |                 2 |    4538626.09
     4590 | Iv├ín                | Zapata Carrillo       |                 1 |    4537943.14
    14769 | Dora                | Pinz├│n Ramos          |                 1 |    4537808.73
   115652 | Gloria Marleny      | Correa Mora           |                 1 |    4537419.60
   131725 | Adriana             | Betancur Delgado      |                 1 |    4535654.46
   130831 | Gustavo             | R├¡os Gonz├ílez         |                 1 |    4533884.47
   144033 | Yeison              | ├ülvarez Lozano        |                 1 |    4533673.66
   125288 | Rafael              | Restrepo Contreras    |                 1 |    4531315.27
     5385 | Wilmer              | Calder├│n Giraldo      |                 1 |    4530936.08
    54688 | Paola Cecilia       | Vera Ni├▒o             |                 2 |    4529676.61
   136483 | Pedro               | Mej├¡a Montoya         |                 1 |    4528519.55
   147888 | Erika               | Prada Gonz├ílez        |                 1 |    4527468.85
     5405 | Alberto             | Jim├®nez Pab├│n         |                 1 |    4526569.89
   102630 | Gabriela Alba       | Serrano Villamizar    |                 1 |    4526399.91
    10195 | Dora Teresa         | ├ülvarez C├írdenas      |                 1 |    4526240.25
    28437 | Ramiro              | P├®rez Villamizar      |                 1 |    4524933.00
    15090 | Alejandro Daniel    | Mosquera Chamorro     |                 1 |    4524674.44
   140037 | Miguel Nelson       | Guerrero Trujillo     |                 1 |    4524276.00
    84158 | Daniel Fabio        | Sandoval Bonilla      |                 1 |    4523794.11
   115893 | Hugo                | Villamizar Romero     |                 1 |    4523664.02
    90822 | Antonio Alejandro   | Calder├│n Henao        |                 1 |    4523509.89
    47238 | Marcela Gladys      | Cabrera Fl├│rez        |                 1 |    4522735.27
   108193 | Claudia             | S├ínchez Mu├▒oz         |                 1 |    4522096.08
   114612 | Francisco           | Cu├®llar Londo├▒o       |                 1 |    4521295.37
     6225 | Orlando             | Ruiz Rinc├│n           |                 1 |    4520546.57
   148461 | Yeison              | Mosquera Silva        |                 1 |    4519787.67
    97570 | Edilma              | Henao Galvis          |                 1 |    4518688.02
    84605 | Orlando             | Pe├▒a Rangel           |                 1 |    4517488.55
    16806 | Carmen Marcela      | C├íceres D├¡az          |                 1 |    4517389.20
    92365 | Patricia            | Valencia Guti├®rrez    |                 1 |    4517355.60
    27901 | Rafael              | Torres G├│mez          |                 1 |    4515724.96
    72994 | Manuela             | Ramos Pab├│n           |                 1 |    4513191.28
    88439 | David Hernando      | Contreras L├│pez       |                 1 |    4512774.10
   108134 | Cristian            | Delgado Benavides     |                 1 |    4512521.00
   141867 | Aura                | Rivera Perdomo        |                 1 |    4511806.20
    24174 | Myriam              | Pe├▒a Giraldo          |                 1 |    4510834.05
    84285 | Juan Gilberto       | Osorio Villamizar     |                 1 |    4509683.16
    50080 | Ramiro Wilson       | Acevedo C├íceres       |                 1 |    4507958.62
   139479 | Gladys Ana          | Barrera Henao         |                 1 |    4507763.47
    15332 | Diana               | Guerrero Erazo        |                 1 |    4507646.85
   127122 | Reinaldo            | Garc├¡a Henao          |                 1 |    4507416.96
   141903 | Gustavo             | Guti├®rrez Garc├¡a      |                 1 |    4507366.64
   106228 | Ana                 | Medina Villamizar     |                 1 |    4507119.54
    72229 | Marcela             | Ortega G├│mez          |                 1 |    4502666.76
   137283 | Esperanza           | Fl├│rez L├│pez          |                 1 |    4501518.40
   147012 | Jairo               | Calder├│n Calder├│n     |                 1 |    4501227.60
    94727 | Gladys              | Rivera Silva          |                 1 |    4499493.40
    67892 | Yolanda             | Trujillo Rodr├¡guez    |                 1 |    4499322.10
    19288 | Fabio               | Betancur Duque        |                 1 |    4498581.71
   141067 | Esperanza           | Hern├índez Guti├®rrez   |                 1 |    4498534.33
   130111 | Rafael Juli├ín       | Medina Jim├®nez        |                 1 |    4497144.96
   145197 | ├üngela Olga         | Pab├│n V├®lez           |                 1 |    4496834.09
    84457 | Alberto Fernando    | Guerrero Polan├¡a      |                 1 |    4496196.79
    92630 | Teresa Isabella     | Losada Ruiz           |                 1 |    4495768.58
     3722 | Martha              | Gonz├ílez Polan├¡a      |                 2 |    4495468.56
    37475 | Juan                | Carrillo Betancur     |                 1 |    4495130.50
    21383 | Manuel Daniel       | Ramos Romero          |                 1 |    4494621.90
    74612 | Jos├® Orlando        | Uribe Bastidas        |                 1 |    4494400.30
    64694 | Adriana Elsa        | L├│pez Fl├│rez          |                 1 |    4493323.15
    38482 | H├®ctor              | Rangel Salazar        |                 1 |    4489438.45
    21160 | Sof├¡a               | Moreno Hern├índez      |                 1 |    4487351.64
   104156 | Paola               | Sandoval L├│pez        |                 1 |    4487304.24
   115547 | Germ├ín Fabio        | C├íceres Ibarra        |                 2 |    4486894.86
     8074 | Alejandro           | Mart├¡nez Tovar        |                 1 |    4486829.54
   129547 | Alberto             | D├¡az Castillo         |                 1 |    4486612.16
    27575 | Santiago            | Mu├▒oz Acevedo         |                 1 |    4483538.92
     6817 | Elsa                | Garc├¡a Lasso          |                 1 |    4482760.26
    61978 | Ricardo             | Erazo Rojas           |                 2 |    4481843.89
    42856 | Fabio               | G├│mez Mosquera        |                 1 |    4481236.00
    51761 | Sandra              | Ni├▒o Silva            |                 2 |    4480817.38
   112127 | An├¡bal Luis         | V├®lez Giraldo         |                 1 |    4480651.16
   118541 | Fabio ├ëdgar         | Ortega Uribe          |                 1 |    4479861.18
    22082 | Olga                | Cardona Torres        |                 1 |    4479480.95
    46077 | Gabriela Carolina   | Acevedo Arango        |                 1 |    4478277.07
   135570 | Orlando             | Su├írez Acevedo        |                 1 |    4477790.98
    57045 | Laura               | Bastidas Garc├¡a       |                 1 |    4477345.70
    70935 | Aura Olga           | Torres Agudelo        |                 1 |    4477139.37
   138760 | Dora Alejandra      | Uribe Correa          |                 1 |    4474751.65
    29382 | Mario Brayan        | Vargas Silva          |                 1 |    4474007.04
    93706 | ├ülvaro              | Zuluaga D├¡az          |                 1 |    4473095.19
   113653 | Hernando            | Mora R├¡os             |                 1 |    4472842.80
    78568 | Luis                | Herrera C├írdenas      |                 1 |    4472455.00
     5121 | Teresa              | Medina Serrano        |                 1 |    4469805.18
    68292 | Gloria              | Su├írez Arias          |                 1 |    4469212.91
   103334 | Mateo Fabio         | Narv├íez Perdomo       |                 1 |    4465998.18
    55817 | Sof├¡a               | Cardona Herrera       |                 1 |    4465535.62
   124036 | Wilmer              | Guti├®rrez Delgado     |                 1 |    4462953.15
    69483 | Mercedes            | Castillo Serrano      |                 1 |    4462327.05
   116862 | Roc├¡o               | Perdomo Arango        |                 1 |    4461864.60
   105876 | Marleny             | Quintero Quintero     |                 1 |    4461075.00
    31155 | Luisa Roc├¡o         | Parra Fl├│rez          |                 1 |    4460499.85
    11687 | Alejandro           | Salazar Jaimes        |                 1 |    4460413.40
    10044 | Abelardo Rafael     | Ruiz Medina           |                 1 |    4460281.60
   140547 | Ruth                | Serrano Mar├¡n         |                 1 |    4459606.18
    82081 | Wilson              | Contreras Guti├®rrez   |                 1 |    4459070.39
    33885 | Mario               | Osorio Polan├¡a        |                 1 |    4457745.00
   145552 | Jos├®                | Bonilla Mu├▒oz         |                 1 |    4457390.42
    77718 | Mateo               | L├│pez Herrera         |                 1 |    4456847.10
    75130 | Amparo              | Guerrero Contreras    |                 1 |    4456249.05
   149416 | Yesenia Isabella    | Restrepo Ortega       |                 1 |    4455199.83
   143363 | Luisa               | Castillo ├ülvarez      |                 1 |    4454191.69
    49494 | Esperanza           | Serrano Jim├®nez       |                 1 |    4453972.63
   142499 | Roc├¡o               | Castillo Hern├índez    |                 1 |    4452477.20
    26829 | Beatriz Luc├¡a       | Galvis Carrillo       |                 1 |    4448769.96
   107328 | Luis                | V├®lez Ramos           |                 1 |    4448177.76
    71198 | Gustavo             | Ibarra Hern├índez      |                 1 |    4448079.81
    61709 | Brayan              | Fl├│rez C├íceres        |                 1 |    4447987.88
    19272 | Nelson              | C├íceres Medina        |                 1 |    4447531.05
   137096 | Anc├¡zar             | Ibarra Rodr├¡guez      |                 1 |    4446895.83
    81848 | Hernando            | Narv├íez D├¡az          |                 1 |    4446194.46
   139800 | Yeison              | Gonz├ílez Cabrera      |                 1 |    4444908.96
     7332 | Luc├¡a               | Bastidas Erazo        |                 1 |    4443299.01
    61407 | Mateo Manuel        | Vargas Londo├▒o        |                 1 |    4442501.13
   115243 | Cecilia Marleny     | Guti├®rrez Guerrero    |                 1 |    4442282.29
   113937 | Emilio Cristian     | Fl├│rez Salazar        |                 1 |    4441332.96
    30270 | Claudia             | Pinz├│n Trujillo       |                 1 |    4440486.96
   134337 | Gladys Dora         | Correa Parra          |                 1 |    4437710.77
    80886 | Laura               | Uribe Duarte          |                 1 |    4437221.41
     7822 | Luisa               | Duque Garc├¡a          |                 1 |    4436103.12
   100819 | Reinaldo            | Barrera Osorio        |                 1 |    4435940.88
   118002 | Camilo Juli├ín       | Arango Molina         |                 1 |    4434488.16
   119452 | Diego               | R├¡os Moreno           |                 1 |    4432416.73
    39402 | In├®s Luc├¡a          | Ospina Torres         |                 1 |    4431940.58
   129296 | In├®s                | C├írdenas Calder├│n     |                 1 |    4431017.68
   139832 | Jos├®                | Barrera Rinc├│n        |                 1 |    4430144.25
    97561 | Marcela             | Bedoya Parra          |                 1 |    4428127.44
    18976 | Camila              | Rojas Agudelo         |                 1 |    4427649.07
   147205 | Iv├ín ├ülvaro         | Duque Galvis          |                 1 |    4427123.00
   102600 | Amparo Laura        | Romero Cu├®llar        |                 1 |    4425721.64
    35322 | Mar├¡a Blanca        | C├írdenas Pab├│n        |                 1 |    4425670.08
    89392 | Andrea Sof├¡a        | Herrera Medina        |                 1 |    4424658.84
    19336 | Esteban             | Medina R├¡os           |                 1 |    4424442.12
    11978 | Rodrigo             | Quintero Jim├®nez      |                 1 |    4424134.40
   108898 | Blanca              | C├íceres Serrano       |                 1 |    4421847.29
    87278 | Andrea              | Cabrera Guerrero      |                 1 |    4421838.54
   106039 | Francisco           | Arango Quintero       |                 1 |    4418862.17
   107301 | Yeison              | Correa Rojas          |                 1 |    4417723.80
    97813 | Luc├¡a               | Su├írez Uribe          |                 1 |    4417552.04
    64543 | Edilma              | Moreno Sandoval       |                 1 |    4416699.28
    74403 | Iv├ín Pedro          | Bonilla Herrera       |                 1 |    4416303.51
   124907 | Emilio              | Burbano Uribe         |                 1 |    4414513.05
    21257 | Yeison              | Uribe Vera            |                 1 |    4413541.87
   139839 | Sof├¡a               | Rodr├¡guez Benavides   |                 1 |    4413410.79
   113533 | Efra├¡n              | Torres P├®rez          |                 1 |    4412967.96
    93783 | In├®s                | C├írdenas Arias        |                 1 |    4412956.62
    79786 | Reinaldo Juan       | G├│mez Castro          |                 2 |    4411512.31
    39669 | Luz                 | Londo├▒o Berm├║dez      |                 1 |    4411469.56
   102644 | Patricia Alejandra  | Calder├│n Ni├▒o         |                 1 |    4410837.00
    40706 | Patricia Teresa     | Giraldo Rivera        |                 1 |    4409873.52
   115232 | Arturo              | Londo├▒o Medina        |                 1 |    4409086.50
   135085 | Jorge               | Rivera Jaimes         |                 1 |    4409040.60
   119859 | Francisco Iv├ín      | Silva Osorio          |                 1 |    4408614.98
    87173 | Rosa                | Valencia Mu├▒oz        |                 1 |    4406988.53
    55331 | Amparo Roc├¡o        | Ram├¡rez L├│pez         |                 1 |    4403209.92
    98119 | Marcela Ruth        | Giraldo Cabrera       |                 1 |    4400677.06
    50604 | Alberto             | Quintero Contreras    |                 1 |    4398816.48
   140675 | Mauricio            | C├írdenas Bedoya       |                 1 |    4398400.49
    75836 | Yolanda Mariana     | Pinz├│n Jaimes         |                 1 |    4396965.82
    20658 | Ricardo             | Fl├│rez Rangel         |                 1 |    4396751.40
   127618 | Hugo Jos├®           | Moreno Duque          |                 1 |    4396461.30
    19378 | Camilo              | Ortiz Prada           |                 1 |    4396110.79
   126081 | Nubia               | Calder├│n Ramos        |                 1 |    4395866.25
   110950 | Wilmer              | Guti├®rrez Narv├íez     |                 1 |    4395786.12
   143785 | Mauricio            | Ram├¡rez Mart├¡nez      |                 1 |    4395498.75
   134528 | Luis                | Mu├▒oz Osorio          |                 1 |    4395316.80
    88745 | Jos├® Esteban        | Betancur Mosquera     |                 1 |    4395220.73
     1158 | Laura               | Bedoya Rinc├│n         |                 1 |    4394037.00
   134877 | Blanca Carmen       | Torres L├│pez          |                 1 |    4393252.50
    12172 | Orlando             | Ram├¡rez Ortiz         |                 1 |    4392965.20
   130480 | Sandra              | Giraldo Restrepo      |                 1 |    4391572.65
    33381 | Yeison Cristian     | Castillo Bonilla      |                 1 |    4391343.43
    92346 | David               | Duarte Delgado        |                 1 |    4389510.08
    38769 | Yuliana             | Berm├║dez Trujillo     |                 1 |    4388365.75
   133774 | Juan                | Silva Castro          |                 1 |    4387884.67
   126260 | Fanny               | Duque Villamizar      |                 1 |    4387858.14
      466 | Andrea              | Ni├▒o Ni├▒o             |                 1 |    4387736.19
    23850 | Nubia               | Molina R├¡os           |                 1 |    4386727.92
    35054 | Orlando             | Jaimes Rojas          |                 1 |    4385845.24
    36733 | Guillermo Gustavo   | V├®lez Cardona         |                 1 |    4385508.64
     8451 | Patricia            | V├®lez Sandoval        |                 1 |    4383417.28
   103461 | Emilio              | Lozano D├¡az           |                 1 |    4382450.65
    92486 | Miguel              | Ramos Rivera          |                 1 |    4381639.32
   123719 | Esteban             | Contreras Burbano     |                 1 |    4381415.77
   112839 | Iv├ín                | Lasso Prada           |                 1 |    4380781.28
    35337 | In├®s                | R├¡os Bastidas         |                 2 |    4380714.44
    64110 | Daniela             | Herrera Lasso         |                 1 |    4379592.80
    47031 | Hernando            | Guti├®rrez Vargas      |                 1 |    4379144.96
   112778 | Sof├¡a Olga          | Polan├¡a Torres        |                 1 |    4377998.27
    23443 | Yeison Nicol├ís      | Zapata Tovar          |                 1 |    4377030.00
    61522 | Carlos              | Delgado Londo├▒o       |                 1 |    4374597.45
   134333 | Sebasti├ín           | Ibarra Perdomo        |                 1 |    4374266.19
    55488 | Rodrigo Esteban     | Parra Londo├▒o         |                 1 |    4374114.03
    92593 | M├│nica              | Ramos Ni├▒o            |                 1 |    4373416.48
   119242 | Gustavo Miguel      | Molina Ram├¡rez        |                 1 |    4369782.62
    62599 | Natalia Beatriz     | Ram├¡rez Mora          |                 1 |    4368518.56
   110171 | Dora Camila         | ├ülvarez Montoya       |                 1 |    4367923.68
     4504 | Heriberto ├ôscar     | Rangel Villamizar     |                 1 |    4367533.68
    33086 | Jorge               | Cu├®llar Parra         |                 1 |    4366740.00
    64750 | ├ülvaro              | Cardona Zapata        |                 2 |    4366414.24
    60968 | Isabella            | Tovar Bastidas        |                 1 |    4366374.75
    82564 | Lorena Esperanza    | Salazar Bonilla       |                 1 |    4364155.41
   122263 | Reinaldo Juan       | Hern├índez Parra       |                 2 |    4363217.03
       56 | An├¡bal              | Prada Delgado         |                 1 |    4362862.62
    26879 | Iv├ín                | Guerrero Tovar        |                 1 |    4360881.77
    17999 | Stella              | Castro Ortiz          |                 1 |    4360340.40
    58167 | Javier              | Gonz├ílez Rangel       |                 1 |    4359372.77
    30232 | Jorge               | Rivera C├írdenas       |                 1 |    4358648.58
    10017 | Roc├¡o               | Silva Erazo           |                 1 |    4357882.07
    96785 | Juliana             | Uribe Mora            |                 1 |    4357594.80
   145178 | Daniel              | Ram├¡rez Ramos         |                 1 |    4356672.84
    42536 | Andrea              | Gonz├ílez Parra        |                 1 |    4356573.84
     2766 | Luc├¡a               | Chamorro Trujillo     |                 1 |    4355751.96
   136902 | M├│nica Yolanda      | Ibarra Ruiz           |                 1 |    4355747.51
    47697 | Wilmer              | Sandoval Correa       |                 1 |    4354662.99
    33002 | Jazm├¡n Gabriela     | Su├írez Bedoya         |                 1 |    4354617.52
      972 | H├®ctor Gustavo      | Acevedo Rinc├│n        |                 1 |    4354598.79
    16689 | Viviana             | Barrera Ruiz          |                 1 |    4354460.09
    55910 | Guillermo           | Montoya Castro        |                 1 |    4353321.88
     1570 | Liliana             | Vera Cu├®llar          |                 1 |    4353297.80
    59002 | Guillermo           | Bastidas Lasso        |                 1 |    4352361.51
    43398 | Blanca Carmen       | Silva Lozano          |                 1 |    4351723.50
    11695 | Gilberto            | R├¡os Pe├▒a             |                 1 |    4351435.76
    67096 | Sof├¡a               | Zuluaga Mosquera      |                 1 |    4350979.00
   137195 | Valentina           | Cardona Narv├íez       |                 1 |    4349694.44
    99477 | Luis                | Pinz├│n Ibarra         |                 1 |    4349385.88
   119656 | Gloria              | Rojas Molina          |                 1 |    4348114.12
   101561 | Gilberto Cristian   | Montoya Burbano       |                 1 |    4345472.95
    73058 | Myriam              | Torres Molina         |                 1 |    4341052.80
   142022 | Pedro               | Gonz├ílez Mar├¡n        |                 1 |    4339959.36
    81321 | Sof├¡a               | Carrillo Perdomo      |                 1 |    4339922.26
    21931 | Guillermo           | Montoya Arango        |                 1 |    4338804.20
   116797 | Javier              | Mej├¡a Correa          |                 1 |    4338729.34
    48096 | Edilma Yolanda      | Cu├®llar Duque         |                 1 |    4338197.00
    46107 | Luz Ruth            | Burbano Romero        |                 1 |    4337995.35
    73948 | Edilma ├üngela       | Burbano Betancur      |                 1 |    4337319.15
    78836 | Marcela             | R├¡os D├¡az             |                 1 |    4336414.92
    95057 | Juli├ín              | S├ínchez Pe├▒a          |                 1 |    4332333.08
   144272 | Sandra Viviana      | Ortega Ruiz           |                 1 |    4330724.93
   145186 | Felipe Luis         | Berm├║dez Mej├¡a        |                 1 |    4328256.07
    48814 | Ricardo             | Erazo Guti├®rrez       |                 1 |    4327277.91
    45985 | Jairo               | Correa Zapata         |                 1 |    4327186.05
    22961 | Elsa                | P├®rez Agudelo         |                 1 |    4325455.24
    73445 | Jos├®                | Silva Zuluaga         |                 1 |    4324945.06
    24089 | Mar├¡a               | Vargas Prada          |                 1 |    4324391.61
    83120 | Fabio Jorge         | Galvis Molina         |                 1 |    4322348.20
   132365 | Dora Daniela        | Vera C├íceres          |                 1 |    4320413.62
   118670 | Jaime               | Londo├▒o Parra         |                 1 |    4319332.63
    27797 | Fanny Laura         | Pab├│n Calder├│n        |                 1 |    4318878.08
   137619 | Sebasti├ín           | Ospina Erazo          |                 1 |    4316144.32
   111940 | Fernando Fabio      | Silva Duarte          |                 1 |    4315888.92
    95024 | Fabio               | Benavides Carrillo    |                 1 |    4315371.48
   108421 | Luis                | Hern├índez Pe├▒a        |                 1 |    4312099.61
   104159 | Liliana Andrea      | Cu├®llar R├¡os          |                 1 |    4310699.19
    27300 | Mariana Carolina    | Torres Ni├▒o           |                 1 |    4310106.40
   111457 | Marcela             | Henao Mart├¡nez        |                 1 |    4309095.96
   147983 | Marleny             | Gonz├ílez Castro       |                 1 |    4307701.62
    61349 | Alba                | Mar├¡n Bedoya          |                 1 |    4307276.40
    26705 | Patricia            | Su├írez Bedoya         |                 1 |    4305666.19
    78474 | Nelson              | Gonz├ílez C├íceres      |                 1 |    4304624.64
   135734 | Cristian Heriberto  | Jim├®nez D├¡az          |                 1 |    4304085.43
    24203 | Guillermo           | Ram├¡rez Prada         |                 1 |    4302767.90
    71156 | Hernando            | Henao G├│mez           |                 1 |    4301683.64
   126148 | Carolina Paola      | Perdomo Ni├▒o          |                 1 |    4300917.66
   146199 | Mauricio            | Mosquera Lasso        |                 1 |    4300586.57
   106404 | Anc├¡zar Andr├®s      | Serrano Moreno        |                 1 |    4299197.76
    43342 | Marleny             | Henao Duque           |                 1 |    4297903.90
   101249 | Marcela             | Duque Agudelo         |                 1 |    4297397.44
    93189 | Gilberto Esteban    | Guerrero Bedoya       |                 1 |    4296701.48
   131699 | Daniela Olga        | Londo├▒o Medina        |                 1 |    4296615.92
   131240 | Erika               | Lozano Cardona        |                 1 |    4295433.60
    56281 | Mario               | Zuluaga Valencia      |                 1 |    4291337.70
    65596 | Wilmer              | Hern├índez Lasso       |                 1 |    4288285.57
   126973 | Wilmer              | Ram├¡rez Castillo      |                 1 |    4287377.56
   125919 | Juliana             | Guerrero Garc├¡a       |                 1 |    4286571.34
   146211 | Esteban             | V├®lez Berm├║dez        |                 1 |    4285493.25
    78830 | Claudia             | P├®rez Pe├▒a            |                 1 |    4284348.06
   142581 | Gustavo             | R├¡os Pinz├│n           |                 1 |    4283732.33
    84960 | Natalia Gladys      | Polan├¡a Guti├®rrez     |                 1 |    4283505.04
   121529 | Yolanda Marleny     | Galvis Rangel         |                 1 |    4282703.36
   134005 | Pedro               | Calder├│n Cardona      |                 1 |    4278248.31
   145456 | Diego               | Moreno Mar├¡n          |                 1 |    4277150.17
   137143 | Heriberto           | Parra Burbano         |                 1 |    4276003.08
    86760 | Reinaldo            | Villamizar Mej├¡a      |                 1 |    4275287.38
    42897 | Pedro               | S├ínchez Herrera       |                 1 |    4273471.11
    34542 | Leidy               | Herrera Correa        |                 1 |    4271534.40
    36930 | Mariana             | Pe├▒a Villamizar       |                 1 |    4271375.12
    58037 | Diego               | Carrillo Henao        |                 1 |    4270710.64
   123140 | Yesenia Nubia       | Rivera Uribe          |                 1 |    4270416.46
    23055 | Daniel              | L├│pez Bedoya          |                 1 |    4269632.02
     7052 | Fabio               | Benavides Herrera     |                 1 |    4269628.23
    19090 | Sara                | Moreno Acevedo        |                 1 |    4268774.40
   100792 | Jairo               | Duque Correa          |                 1 |    4268260.78
    64046 | Daniel              | P├®rez Ortiz           |                 1 |    4268243.75
    79166 | Abelardo            | Pab├│n Carrillo        |                 1 |    4267572.20
    29401 | Gilberto Mario      | Villamizar Gonz├ílez   |                 1 |    4266362.50
    36737 | Alba                | Carrillo Villamizar   |                 1 |    4265776.45
    21889 | Gustavo             | Montoya Herrera       |                 1 |    4264291.31
     1293 | Cristian Mario      | Cabrera Jaimes        |                 1 |    4263679.74
    15017 | Mario               | Sandoval Restrepo     |                 1 |    4263570.43
   146811 | Sara Teresa         | Restrepo Serrano      |                 1 |    4260782.43
    96536 | Isabella            | Mosquera C├írdenas     |                 1 |    4260678.28
    60262 | Carlos Fabio        | Ortega Rinc├│n         |                 1 |    4260417.29
   141308 | Reinaldo            | Arango Losada         |                 1 |    4258439.67
   130536 | Andr├®s              | Galvis ├ülvarez        |                 1 |    4258166.25
   120671 | Elsa                | Bastidas V├®lez        |                 1 |    4257827.34
     5722 | Francisco           | Chamorro Serrano      |                 1 |    4257335.60
   116984 | Rosa Aura           | Narv├íez Garc├¡a        |                 1 |    4256564.30
    22294 | Carlos              | Parra Perdomo         |                 1 |    4255778.08
    66221 | Stella              | Bonilla Mosquera      |                 1 |    4255607.09
    19901 | Heriberto           | Moreno Restrepo       |                 1 |    4255309.67
   136030 | Fanny               | Castro Contreras      |                 1 |    4254652.15
    35579 | Reinaldo            | Fl├│rez Contreras      |                 1 |    4254409.50
    86222 | Esteban             | Guti├®rrez Lozano      |                 1 |    4252446.57
    74905 | Amparo              | Zuluaga Ortega        |                 1 |    4250774.23
    47350 | Iv├ín                | Erazo Pab├│n           |                 1 |    4249043.95
    96974 | Gustavo Rodrigo     | Tovar Molina          |                 1 |    4248712.50
    22227 | Wilmer              | Berm├║dez Cardona      |                 1 |    4248063.12
     9616 | In├®s Viviana        | Arango Galvis         |                 1 |    4247597.24
    13555 | Brayan              | Montoya Jim├®nez       |                 1 |    4247129.01
    24447 | ├ëdgar               | Salazar Benavides     |                 1 |    4247034.56
   136921 | Alejandro           | Losada Betancur       |                 1 |    4244130.94
   127139 | Sebasti├ín           | Ramos Parra           |                 1 |    4243588.03
   101533 | ├ülvaro              | Mart├¡nez Duarte       |                 1 |    4242635.00
    71263 | Francisco Miguel    | Su├írez Giraldo        |                 1 |    4242413.92
   140054 | Jaime               | Contreras Erazo       |                 2 |    4241455.56
    75656 | Adriana Mercedes    | Osorio Montoya        |                 1 |    4240748.12
    36867 | Luc├¡a               | Arango Bedoya         |                 1 |    4240694.40
   103108 | Cristian            | Polan├¡a Torres        |                 1 |    4240116.44
   111430 | Paola               | Londo├▒o Londo├▒o       |                 1 |    4239875.22
    65008 | Alejandra           | Zuluaga Molina        |                 1 |    4239827.88
    43153 | ├ëdgar               | Trujillo Pinz├│n       |                 1 |    4239064.16
    63327 | Stella              | Moreno Rangel         |                 1 |    4234838.20
    82544 | Carmen              | Acevedo P├®rez         |                 1 |    4234167.30
    15587 | Natalia Juliana     | Bedoya Rodr├¡guez      |                 1 |    4233439.34
    42622 | Lorena              | Montoya Chamorro      |                 1 |    4232935.38
    51721 | Ricardo             | Castillo Rojas        |                 1 |    4232418.21
    30444 | Arturo Esteban      | Sandoval Giraldo      |                 1 |    4231301.36
    55482 | Juli├ín              | Acevedo Zapata        |                 1 |    4230151.16
    26716 | Jairo               | Ortiz Zuluaga         |                 1 |    4228338.08
    29927 | Leidy               | Jaimes Ram├¡rez        |                 1 |    4227946.36
   142617 | Guillermo           | Guerrero Ibarra       |                 1 |    4227342.30
    13971 | Mariana             | Medina Guerrero       |                 1 |    4226435.50
    30998 | Wilmer              | Su├írez Arias          |                 1 |    4226341.55
   129526 | Miguel              | Londo├▒o Moreno        |                 1 |    4225632.12
    40789 | Myriam              | Mart├¡nez Londo├▒o      |                 1 |    4224744.28
    96605 | Wilson Brayan       | Berm├║dez Ramos        |                 1 |    4224425.05
    22174 | Juan                | Mej├¡a Pinz├│n          |                 1 |    4223480.05
    64415 | Alejandro           | Bedoya Berm├║dez       |                 1 |    4222467.63
   133640 | Luis                | Salazar Duque         |                 1 |    4222130.44
    12410 | Lorena              | Jaimes Trujillo       |                 1 |    4221565.92
    68495 | Ramiro              | Narv├íez Ortega        |                 1 |    4221494.28
    64031 | Nelson              | Parra Carrillo        |                 1 |    4220853.80
    96204 | Gabriela            | Mar├¡n Trujillo        |                 1 |    4220276.82
   115587 | Santiago            | Pinz├│n Bedoya         |                 1 |    4220242.32
    95333 | Hugo Jaime          | Gonz├ílez Ortega       |                 1 |    4220005.99
   122562 | Alejandra           | Sandoval Ospina       |                 1 |    4219222.56
    10585 | Iv├ín                | Herrera Silva         |                 1 |    4217747.60
   124266 | Miguel              | Arias D├¡az            |                 1 |    4217562.20
    32212 | Mar├¡a               | Vargas Perdomo        |                 1 |    4217313.20
    97256 | An├¡bal              | Tovar Ruiz            |                 1 |    4214558.04
   113799 | Sandra              | Torres Garc├¡a         |                 1 |    4214351.38
    54184 | Ramiro              | Serrano Cabrera       |                 1 |    4213881.96
    64318 | Pedro               | Arango ├ülvarez        |                 1 |    4211915.25
   117001 | Alberto             | Betancur Osorio       |                 1 |    4211355.64
    15212 | Camilo Orlando      | Calder├│n Ospina       |                 1 |    4208280.64
   145389 | Fanny               | Acevedo Jaimes        |                 1 |    4208048.27
    53648 | Gilberto            | Duque Mar├¡n           |                 1 |    4207936.28
    33701 | Daniel Antonio      | Su├írez Cu├®llar        |                 1 |    4204181.61
   124418 | Teresa ├üngela       | Valencia Mart├¡nez     |                 1 |    4200387.90
    52601 | Olga Jazm├¡n         | Moreno Tovar          |                 1 |    4198693.86
   138934 | Francisco           | Giraldo Zuluaga       |                 2 |    4198583.23
    97550 | Daniela             | Rivera Restrepo       |                 1 |    4198474.45
    66101 | ├ôscar               | Jim├®nez Vargas        |                 1 |    4197624.23
    66639 | ├ëdgar               | Correa Pe├▒a           |                 1 |    4195810.19
    16786 | Juan                | Quintero Perdomo      |                 1 |    4195150.26
    38848 | Claudia             | Tovar L├│pez           |                 2 |    4194741.98
   149446 | Ramiro              | Herrera Burbano       |                 1 |    4194235.73
   128192 | Daniel ├ülvaro       | Correa Trujillo       |                 1 |    4194173.52
   130202 | Camilo              | Valencia Romero       |                 1 |    4193146.08
    40564 | Wilson              | Perdomo R├¡os          |                 1 |    4193138.88
     8917 | Hernando            | Burbano Mu├▒oz         |                 1 |    4191933.78
    16821 | Carlos              | Salazar Gonz├ílez      |                 1 |    4191714.51
    86922 | Luc├¡a               | Moreno S├ínchez        |                 1 |    4191656.77
     7637 | Alberto Jos├®        | Acevedo Mar├¡n         |                 1 |    4189531.50
    93711 | Patricia            | Valencia Romero       |                 1 |    4189293.68
    68261 | Nicol├ís Luis        | Castillo Castro       |                 1 |    4188953.44
   149168 | Nubia Fanny         | Molina Parra          |                 1 |    4188517.34
    71182 | Mario               | Torres Delgado        |                 1 |    4188389.37
    43851 | Gladys              | Trujillo Ram├¡rez      |                 1 |    4188175.08
   145151 | Efra├¡n              | Quintero Bastidas     |                 1 |    4187384.46
   102078 | Jorge               | Bonilla Villamizar    |                 1 |    4185636.93
    53749 | Abelardo Anc├¡zar    | Lasso Ortiz           |                 1 |    4184448.30
     1061 | Francisco           | Bedoya Sandoval       |                 1 |    4181769.50
    60677 | Juan Iv├ín           | Hern├índez Cardona     |                 1 |    4181454.72
    46183 | Hugo                | Molina Mosquera       |                 1 |    4180804.44
   141382 | Roc├¡o               | Restrepo Silva        |                 1 |    4179734.62
    63908 | David               | Gonz├ílez Polan├¡a      |                 1 |    4178193.22
     6610 | Alba Brayan         | Calder├│n Rivera       |                 1 |    4176300.48
    65058 | Isabella            | Ramos Jim├®nez         |                 1 |    4175265.68
     4754 | Laura               | Villamizar C├íceres    |                 1 |    4174959.58
    79427 | Diego               | Arango Polan├¡a        |                 1 |    4173249.97
   101352 | Wilson              | Erazo Bastidas        |                 1 |    4172095.17
    82956 | Beatriz             | Vargas Duque          |                 1 |    4171691.08
   129624 | ├ôscar               | Salazar G├│mez         |                 1 |    4170703.08
     9333 | Valentina Beatriz   | Herrera Rivera        |                 1 |    4161646.15
   122614 | Iv├ín                | Rinc├│n Ramos          |                 1 |    4161413.96
    48638 | Nelson              | Silva Ortiz           |                 1 |    4160599.58
   127733 | Cristian            | Montoya Burbano       |                 1 |    4159277.04
    41371 | Claudia             | Calder├│n Bonilla      |                 1 |    4158385.07
   103541 | Javier              | Mar├¡n Ortiz           |                 1 |    4157406.68
    94912 | Alba                | Guti├®rrez Herrera     |                 1 |    4156894.74
    21357 | Emilio              | Montoya Burbano       |                 1 |    4155823.07
    55719 | Diana               | Vera Rangel           |                 1 |    4154650.08
    99170 | Germ├ín              | Erazo C├íceres         |                 1 |    4153166.34
     6439 | Abelardo            | Moreno Calder├│n       |                 1 |    4152449.07
    37480 | Ramiro Francisco    | Mora Gonz├ílez         |                 1 |    4150125.83
    21851 | Nicol├ís             | Mar├¡n Fl├│rez          |                 1 |    4149655.77
    45085 | Marcela Adriana     | Mu├▒oz Mar├¡n           |                 1 |    4149470.01
    44514 | Andrea              | Moreno ├ülvarez        |                 1 |    4149052.16
    94371 | Rub├®n Daniel        | Hern├índez Rivera      |                 1 |    4148125.94
   126382 | Fanny               | Serrano Villamizar    |                 1 |    4139729.01
    64204 | Daniel              | Mej├¡a Rivera          |                 1 |    4136646.98
   103764 | Gabriela            | Zapata Gonz├ílez       |                 1 |    4135452.10
    61451 | ├ëdgar Libardo       | Arias Rivera          |                 1 |    4135272.44
    29509 | Alejandro Guillermo | Quintero Sandoval     |                 1 |    4134624.32
   136572 | Aura                | Castro Betancur       |                 1 |    4133978.72
   144936 | Gladys Blanca       | C├íceres Serrano       |                 1 |    4132877.58
    69792 | Rosa Lorena         | G├│mez Betancur        |                 1 |    4132830.91
    90436 | Hernando            | Serrano Osorio        |                 1 |    4132642.18
    45298 | Manuela             | Delgado Salazar       |                 1 |    4130932.93
    59159 | Yuliana             | Jaimes Londo├▒o        |                 1 |    4130930.66
    59826 | Luisa               | Agudelo Garc├¡a        |                 1 |    4130808.36
    82076 | Daniel              | Contreras Perdomo     |                 1 |    4130518.08
    89775 | Ruth Erika          | Cabrera Cabrera       |                 1 |    4129331.94
    88401 | Valentina Gloria    | Ruiz Medina           |                 1 |    4127830.99
   121278 | Pedro ├ôscar         | Mu├▒oz C├íceres         |                 1 |    4126300.46
   109371 | Nubia               | Contreras Mej├¡a       |                 1 |    4125717.60
     5048 | Martha Anc├¡zar      | C├íceres Pab├│n         |                 1 |    4125075.26
     8401 | Mar├¡a               | Giraldo Henao         |                 1 |    4124896.72
   109107 | Rub├®n               | Silva C├írdenas        |                 1 |    4124556.58
   132018 | Juli├ín Arturo       | Villamizar Guti├®rrez  |                 1 |    4123346.05
    19787 | Claudia             | Arias Rojas           |                 1 |    4122229.43
    16190 | Alberto             | Zuluaga Bedoya        |                 1 |    4121467.92
    17509 | Paola Sof├¡a         | Ortega Londo├▒o        |                 1 |    4119147.90
    78581 | Camilo              | G├│mez Romero          |                 1 |    4116329.58
   148442 | Beatriz             | Gonz├ílez Mu├▒oz        |                 1 |    4115735.36
    37797 | Samuel Ramiro       | Calder├│n Duque        |                 1 |    4115621.95
   118268 | Juli├ín              | Salazar Galvis        |                 1 |    4114786.65
    10101 | Martha              | Ram├¡rez Pab├│n         |                 1 |    4114026.15
    93481 | Gustavo             | V├®lez Ni├▒o            |                 1 |    4111509.15
   109775 | Alejandro           | Ospina Villamizar     |                 1 |    4111459.13
   127800 | ├ôscar               | Ospina Duque          |                 1 |    4110420.48
   136307 | Manuel              | Polan├¡a Ram├¡rez       |                 1 |    4107898.68
   141051 | Jairo               | Ortiz Cardona         |                 1 |    4107717.94
    62255 | Jorge               | D├¡az Cu├®llar          |                 1 |    4106929.92
    87451 | Amparo Liliana      | Acevedo Ni├▒o          |                 1 |    4105881.08
    44269 | Hernando            | Herrera Vera          |                 1 |    4105787.28
    89609 | Juliana             | Mu├▒oz Chamorro        |                 1 |    4105563.40
    57700 | Luz Adriana         | D├¡az Cardona          |                 1 |    4104795.36
    40927 | Marleny Ruth        | Uribe Garc├¡a          |                 1 |    4104579.96
   133867 | Gloria              | Ortiz G├│mez           |                 1 |    4102964.01
   104213 | Andrea              | Fl├│rez Erazo          |                 1 |    4102844.48
   103587 | Javier Gilberto     | Mu├▒oz Arango          |                 1 |    4102434.56
    88637 | Ricardo             | P├®rez Torres          |                 1 |    4101920.83
    99051 | Sebasti├ín           | Ortiz Rivera          |                 1 |    4101918.46
    94906 | Myriam              | R├¡os Galvis           |                 1 |    4100963.40
    23902 | Fabio Efra├¡n        | Guerrero Rojas        |                 1 |    4100702.32
    32985 | In├®s                | Guti├®rrez C├írdenas    |                 1 |    4100022.51
   122265 | Diana               | Ortiz Calder├│n        |                 1 |    4099368.27
    31890 | ├ülvaro              | Henao Carrillo        |                 1 |    4098994.27
   132830 | Jazm├¡n              | Ortiz Restrepo        |                 1 |    4098935.56
      458 | Hugo                | Mej├¡a Jaimes          |                 1 |    4093123.32
   111358 | Laura               | Osorio Zapata         |                 1 |    4092702.68
   140050 | Heriberto           | Rangel Mosquera       |                 1 |    4092532.40
   145401 | Antonio             | Correa Pe├▒a           |                 1 |    4091338.92
   147209 | Arturo Yeison       | Garc├¡a Gonz├ílez       |                 1 |    4089915.76
   147813 | Iv├ín                | Zuluaga Cabrera       |                 1 |    4088924.45
   121505 | Alejandro           | Rivera Jaimes         |                 1 |    4088712.03
    18467 | H├®ctor              | Ni├▒o Acevedo          |                 1 |    4088603.97
   141270 | Isabella Marcela    | Romero Rangel         |                 1 |    4088478.31
     8666 | Yuliana             | Castro Montoya        |                 1 |    4087805.44
    11488 | Edilma              | Parra Ibarra          |                 1 |    4087732.99
   112877 | Fanny               | ├ülvarez Moreno        |                 1 |    4087160.11
    44473 | Juan                | Acevedo Rodr├¡guez     |                 1 |    4086139.50
    83157 | Mar├¡a In├®s          | Agudelo Mora          |                 1 |    4085886.55
    10461 | H├®ctor              | Bonilla Romero        |                 1 |    4085534.54
   106606 | Felipe              | Mart├¡nez Castillo     |                 1 |    4085366.64
    36600 | Efra├¡n              | Valencia Tovar        |                 1 |    4082731.75
    94950 | Andrea Alejandra    | C├íceres Zapata        |                 1 |    4082298.88
    71019 | Edilma Cecilia      | Cabrera Restrepo      |                 1 |    4080540.70
   121229 | ├ëdgar               | Ruiz Herrera          |                 1 |    4080425.78
     1255 | Viviana             | Torres Erazo          |                 1 |    4079759.80
    95926 | Adriana             | Castillo ├ülvarez      |                 1 |    4079097.92
    93087 | Manuel              | Tovar Ibarra          |                 1 |    4078347.91
     4394 | Germ├ín              | Bedoya Mu├▒oz          |                 1 |    4078153.92
    35583 | Wilson              | Cabrera C├írdenas      |                 1 |    4076065.83
    40826 | Jorge               | Molina Polan├¡a        |                 1 |    4074298.82
    23700 | Roc├¡o               | Pe├▒a Losada           |                 2 |    4074221.46
    62313 | Mercedes Claudia    | Guerrero Rangel       |                 1 |    4073718.49
   131656 | Yolanda Liliana     | Barrera Narv├íez       |                 1 |    4073521.56
    35954 | Gloria              | Garc├¡a Ortega         |                 1 |    4072577.63
    99892 | Germ├ín              | V├®lez Cabrera         |                 1 |    4070955.18
    97994 | Roc├¡o Gloria        | Mu├▒oz Guerrero        |                 1 |    4070421.04
    36200 | Mercedes            | Zuluaga Villamizar    |                 1 |    4069860.43
    81094 | Claudia             | Villamizar Acevedo    |                 1 |    4068847.20
    57352 | Rub├®n               | Ruiz Bonilla          |                 1 |    4068261.18
   112480 | Liliana             | Perdomo Herrera       |                 1 |    4068067.53
   149114 | Gabriela            | Arias Ortiz           |                 1 |    4066650.96
   104903 | Guillermo           | Restrepo Zapata       |                 1 |    4066487.06
   137173 | Iv├ín Orlando        | Barrera Burbano       |                 1 |    4066275.20
    93013 | ├üngela              | Perdomo Barrera       |                 1 |    4066178.96
    41241 | Brayan              | Mosquera D├¡az         |                 1 |    4064960.43
     5217 | Jaime               | Correa Rinc├│n         |                 1 |    4064747.40
    30047 | Stella M├│nica       | Henao Trujillo        |                 1 |    4063428.50
    81916 | H├®ctor              | Ortiz Ortiz           |                 1 |    4062984.89
   112696 | Brayan              | Romero Losada         |                 1 |    4062425.99
    26582 | Arturo Orlando      | Mart├¡nez Silva        |                 1 |    4062345.80
    74049 | Carolina Marcela    | R├¡os Cardona          |                 1 |    4061956.61
   120477 | Hernando            | Villamizar Castillo   |                 1 |    4061340.61
    17907 | ├üngela Alba         | P├®rez Benavides       |                 1 |    4059661.54
    53480 | Javier              | Ibarra Ram├¡rez        |                 1 |    4057754.30
   100482 | ├üngela Alejandra    | Serrano Bastidas      |                 1 |    4055947.68
    23480 | Luc├¡a               | Bonilla Barrera       |                 1 |    4053861.71
    16851 | Yeison              | Lasso Carrillo        |                 1 |    4053156.59
    27377 | Natalia             | Londo├▒o Losada        |                 1 |    4050356.81
    51531 | Rub├®n               | L├│pez Villamizar      |                 1 |    4049967.38
    64169 | Carlos Jorge        | Jim├®nez Rojas         |                 1 |    4049221.50
    86692 | Mercedes            | Torres Carrillo       |                 1 |    4048443.28
    23207 | Daniel              | Ibarra Restrepo       |                 1 |    4047182.99
   101055 | Libardo             | Barrera Mosquera      |                 1 |    4047028.86
   105816 | Anc├¡zar             | Ram├¡rez Salazar       |                 1 |    4046884.29
    44601 | Myriam              | Pinz├│n Quintero       |                 1 |    4041275.28
   140575 | Libardo             | Trujillo Burbano      |                 1 |    4040587.96
   143889 | Nicol├ís             | Vera Fl├│rez           |                 1 |    4040512.65
    90762 | Fernando            | Zapata Bastidas       |                 1 |    4038058.85
    23912 | Germ├ín              | Erazo Rinc├│n          |                 1 |    4036423.59
    41425 | Roc├¡o               | Fl├│rez Silva          |                 1 |    4035913.35
    39812 | Mario               | Restrepo Bastidas     |                 1 |    4035651.24
    30108 | Miguel              | Mart├¡nez Benavides    |                 1 |    4035346.77
   138840 | Cristian            | C├íceres Ram├¡rez       |                 1 |    4035268.14
    13549 | Guillermo           | Arias Mart├¡nez        |                 1 |    4033805.38
    89399 | Manuela Blanca      | Erazo Pinz├│n          |                 1 |    4033019.20
    29421 | Orlando             | Medina V├®lez          |                 1 |    4032181.41
    90928 | Ramiro              | Mej├¡a Villamizar      |                 1 |    4031725.28
    95712 | Yuliana Gloria      | Narv├íez Londo├▒o       |                 1 |    4030842.15
   106966 | Liliana Mercedes    | Restrepo Trujillo     |                 1 |    4030669.92
    78773 | Sof├¡a               | Caicedo Osorio        |                 1 |    4030334.55
     5763 | H├®ctor              | Galvis Villamizar     |                 1 |    4029102.00
     6922 | Esteban             | Zuluaga Guti├®rrez     |                 1 |    4028292.45
   148955 | Rodrigo             | Agudelo Ospina        |                 1 |    4026474.76
    68978 | Andrea              | Hern├índez Arango      |                 1 |    4025723.56
     8800 | Leidy               | Zapata Rodr├¡guez      |                 1 |    4024583.01
    91949 | In├®s                | Benavides Sandoval    |                 1 |    4024003.32
    60649 | ├ëdgar Hugo          | Barrera Bedoya        |                 1 |    4023252.00
    64011 | Pedro               | Guti├®rrez L├│pez       |                 1 |    4022964.26
   115995 | Mar├¡a               | Rinc├│n Jim├®nez        |                 1 |    4021198.87
   115072 | Pedro               | Salazar Bonilla       |                 1 |    4017789.30
    90528 | Viviana             | Rojas Quintero        |                 1 |    4017613.56
    62298 | Amparo Liliana      | Galvis Chamorro       |                 1 |    4015277.64
     9073 | Marleny             | Jim├®nez Zuluaga       |                 1 |    4015197.67
   123397 | Jaime               | Mu├▒oz Moreno          |                 1 |    4014912.96
   142691 | Juli├ín              | Uribe Lozano          |                 1 |    4014456.66
    72087 | Ricardo             | Caicedo Rinc├│n        |                 1 |    4013532.28
    52422 | Diego               | Mej├¡a Ortiz           |                 1 |    4012071.00
    90656 | Yeison              | Ramos S├ínchez         |                 1 |    4010718.92
   131681 | Paola               | Bonilla Pab├│n         |                 1 |    4010001.84
    34765 | Alejandro           | Cabrera Rojas         |                 1 |    4009602.87
     4013 | Germ├ín ├ôscar        | D├¡az Herrera          |                 1 |    4008231.34
     3370 | Sebasti├ín           | L├│pez Mora            |                 1 |    4007534.24
     8514 | Pedro               | Pab├│n Herrera         |                 1 |    4007337.92
    59519 | Fernando Jaime      | Pab├│n Lasso           |                 1 |    4005973.50
    56152 | Esteban             | Mart├¡nez Pab├│n        |                 1 |    4005659.43
    62391 | Alejandro           | Silva Serrano         |                 1 |    4003582.32
   119682 | Andr├®s              | Erazo Carrillo        |                 1 |    4002966.86
   128779 | Rosa Erika          | Polan├¡a D├¡az          |                 2 |    4002901.29
    41785 | Nicol├ís Nelson      | Perdomo Sandoval      |                 1 |    4002579.40
   115706 | Carlos              | Medina Burbano        |                 1 |    4002510.80
    92807 | H├®ctor              | Bedoya Duque          |                 1 |    4002465.51
    85994 | Brayan Francisco    | Villamizar Caicedo    |                 1 |    4002453.53
   140374 | ├ôscar               | Zapata Moreno         |                 1 |    4001899.28
   123890 | Ana                 | Castillo Erazo        |                 1 |    4001878.91
    85684 | Mariana             | Henao Galvis          |                 1 |    4001608.32
   122676 | Iv├ín                | Ni├▒o Arango           |                 1 |    4001027.27
    31765 | Laura Rosa          | Delgado Vargas        |                 1 |    3999456.01
    78117 | Germ├ín              | Serrano C├íceres       |                 1 |    3995701.71
   108929 | Ramiro              | Caicedo Acevedo       |                 1 |    3994751.92
    49721 | Juliana             | Mart├¡nez Lozano       |                 1 |    3993751.04
   121081 | M├│nica Sara         | Vera Parra            |                 1 |    3993322.98
    36833 | Carlos An├¡bal       | Guerrero Restrepo     |                 1 |    3991975.12
    68654 | Lorena              | Duque Chamorro        |                 1 |    3991806.54
    13741 | Ana                 | Sandoval Mora         |                 1 |    3990197.17
   132893 | Blanca              | Bonilla Mosquera      |                 1 |    3989952.07
    70525 | Brayan Fernando     | Castro Burbano        |                 1 |    3988408.25
    91640 | Paola               | Galvis R├¡os           |                 2 |    3986231.07
    96254 | Esperanza           | Ibarra Silva          |                 1 |    3985708.85
   133137 | Mariana             | Sandoval Erazo        |                 1 |    3983148.44
    17075 | Hernando Guillermo  | Gonz├ílez Ruiz         |                 1 |    3982324.92
    93982 | Manuela             | Ibarra Moreno         |                 1 |    3981900.57
     6141 | Heriberto           | Giraldo Quintero      |                 1 |    3980543.60
    38752 | Mercedes            | Jaimes Galvis         |                 1 |    3979922.88
   103815 | Yeison              | Mu├▒oz Duque           |                 1 |    3979444.96
    76770 | Alejandro Guillermo | Osorio Zapata         |                 1 |    3977641.08
   122653 | Hernando            | Lozano Cabrera        |                 1 |    3976838.72
    81806 | Carolina Patricia   | Cabrera Torres        |                 1 |    3976354.33
   124818 | Erika Gloria        | Londo├▒o Bonilla       |                 1 |    3976178.21
    46339 | Lorena              | Mu├▒oz Duarte          |                 1 |    3975344.38
    10725 | Francisco Gilberto  | Carrillo Ibarra       |                 1 |    3974928.93
    56852 | Hugo                | Calder├│n Narv├íez      |                 1 |    3972666.35
    88530 | Antonio             | Ortega Garc├¡a         |                 1 |    3972567.35
    17553 | Mauricio            | Ortega S├ínchez        |                 1 |    3972201.12
    73915 | Erika               | Contreras Erazo       |                 1 |    3970331.61
    72869 | Patricia            | Guti├®rrez Quintero    |                 1 |    3970290.24
    11364 | Jairo               | Valencia Ospina       |                 1 |    3969662.84
    56934 | Ramiro              | ├ülvarez Rodr├¡guez     |                 1 |    3969270.80
    87823 | Rafael Jaime        | Arias G├│mez           |                 1 |    3969174.18
    27457 | Ramiro              | Jim├®nez Cabrera       |                 1 |    3964903.92
    77041 | Sara                | Silva Salazar         |                 1 |    3964808.63
   105178 | Camilo              | Duque Narv├íez         |                 1 |    3961797.06
    45783 | Miguel              | C├írdenas Duarte       |                 1 |    3961782.88
   126181 | David               | Mu├▒oz Torres          |                 1 |    3960985.90
     5349 | Alejandro           | Mar├¡n P├®rez           |                 1 |    3960784.22
   128691 | Alejandra Beatriz   | Ortiz Ortega          |                 1 |    3960204.85
   118489 | Rodrigo             | Acevedo Ortega        |                 1 |    3957946.70
    31075 | Jaime               | Fl├│rez Su├írez         |                 1 |    3955380.21
   118894 | Felipe              | Quintero Serrano      |                 1 |    3954327.60
    57579 | Mario               | Castillo Moreno       |                 1 |    3951960.84
    95551 | Arturo              | Tovar Rinc├│n          |                 1 |    3950592.06
    44235 | Isabella Nubia      | Burbano Gonz├ílez      |                 1 |    3950335.65
   121673 | Libardo             | Serrano Mosquera      |                 1 |    3948233.19
   120240 | Rodrigo             | Mar├¡n Berm├║dez        |                 1 |    3947168.54
   107454 | Andrea              | S├ínchez Romero        |                 1 |    3946745.71
    11720 | Roc├¡o               | Bastidas Ortiz        |                 1 |    3944048.38
   143149 | Gloria              | Delgado Gonz├ílez      |                 1 |    3943797.18
    35861 | Camila              | Benavides G├│mez       |                 1 |    3943438.94
    69647 | Cecilia Gladys      | D├¡az L├│pez            |                 1 |    3943030.29
    16386 | Yeison              | Villamizar Zapata     |                 1 |    3942501.68
    57388 | Wilson Miguel       | Rinc├│n Carrillo       |                 1 |    3940954.77
   145726 | Pedro               | Mosquera Fl├│rez       |                 1 |    3939596.48
    76941 | Cristian            | Su├írez Gonz├ílez       |                 1 |    3939580.47
    24213 | Camilo Alejandro    | Correa Romero         |                 1 |    3939360.98
    97417 | Liliana             | Lozano Castro         |                 1 |    3938700.00
   116071 | Alejandro           | Gonz├ílez Gonz├ílez     |                 1 |    3938502.21
    38583 | Luc├¡a               | L├│pez Perdomo         |                 1 |    3937693.35
   129224 | Luz                 | Ortega Molina         |                 1 |    3937242.00
     8265 | Rub├®n               | Acevedo Agudelo       |                 1 |    3936843.22
   115984 | Camila              | Restrepo Rangel       |                 1 |    3935841.55
   109056 | Gabriela Yuliana    | Pinz├│n Herrera        |                 1 |    3935149.68
   128917 | Rub├®n               | Ortiz Jaimes          |                 1 |    3934826.28
   100256 | Jaime Abelardo      | Molina L├│pez          |                 1 |    3932678.23
   103852 | Camila              | Salazar Quintero      |                 1 |    3932241.95
     9168 | Francisco           | Duarte Romero         |                 1 |    3931649.84
    62420 | Gloria Fanny        | Correa Ibarra         |                 1 |    3929722.28
    99189 | Guillermo Santiago  | Rodr├¡guez Mora        |                 1 |    3929008.51
   123712 | Reinaldo            | Ibarra Jaimes         |                 1 |    3929000.90
   134143 | H├®ctor              | Uribe Quintero        |                 1 |    3928421.43
    71399 | Reinaldo Mateo      | Villamizar Osorio     |                 1 |    3928086.30
    66884 | Emilio              | Fl├│rez ├ülvarez        |                 1 |    3927361.83
    50816 | Fernando            | L├│pez Mosquera        |                 1 |    3926695.56
     5510 | Rafael              | Betancur Serrano      |                 1 |    3926533.81
    90616 | Jorge               | G├│mez Guerrero        |                 1 |    3925646.72
    26626 | Javier Emilio       | Barrera Mart├¡nez      |                 1 |    3925560.40
    98638 | Beatriz             | Lozano Ortiz          |                 1 |    3924797.02
   148039 | Paola               | Molina Chamorro       |                 1 |    3924697.92
     7475 | Cristian Emilio     | Correa Medina         |                 1 |    3924624.88
    62244 | Rub├®n               | Mej├¡a Garc├¡a          |                 1 |    3924520.16
    49741 | Esteban             | Rinc├│n Guti├®rrez      |                 1 |    3924277.20
   142354 | Mar├¡a M├│nica        | Henao Duarte          |                 1 |    3924104.84
    86827 | Juli├ín              | Burbano R├¡os          |                 1 |    3923753.79
    89686 | Manuel              | Zuluaga Londo├▒o       |                 1 |    3923592.20
    33710 | Gustavo             | Jaimes Serrano        |                 1 |    3923051.27
    95528 | Pedro               | D├¡az Castro           |                 1 |    3922592.25
   103549 | Pedro               | Berm├║dez Castillo     |                 1 |    3921908.40
   135391 | Sebasti├ín           | Londo├▒o Benavides     |                 1 |    3921782.70
   121186 | Marleny             | Perdomo Tovar         |                 1 |    3919490.96
    41119 | ├ëdgar               | Duque Narv├íez         |                 1 |    3918832.81
    78888 | Carolina            | Serrano Bastidas      |                 1 |    3918668.94
    99601 | Antonio             | Losada Bonilla        |                 1 |    3918293.34
    64850 | Gladys              | Caicedo Correa        |                 1 |    3918133.95
   125145 | Emilio              | Salazar D├¡az          |                 1 |    3917807.42
   102547 | Ricardo             | Acevedo Castillo      |                 1 |    3917091.21
    68267 | Carmen Teresa       | Betancur R├¡os         |                 1 |    3916536.14
    40175 | Natalia             | Pinz├│n Caicedo        |                 1 |    3913892.43
    75452 | Luis                | Salazar Galvis        |                 1 |    3912544.66
    78370 | H├®ctor              | Duarte Pe├▒a           |                 1 |    3912459.99
    52130 | Jos├®                | Ruiz Pe├▒a             |                 1 |    3911448.13
    75213 | Rodrigo Anc├¡zar     | Molina Osorio         |                 1 |    3910450.05
   111553 | Mariana             | Bonilla Guerrero      |                 1 |    3910190.76
    67519 | Leidy               | Berm├║dez Polan├¡a      |                 1 |    3910165.65
    54773 | Felipe              | Betancur Moreno       |                 1 |    3908769.76
    53042 | Yuliana             | Cardona Ospina        |                 1 |    3908595.99
    83476 | Santiago Jaime      | Chamorro Garc├¡a       |                 1 |    3907708.40
    80196 | Adriana Yolanda     | Restrepo Vera         |                 1 |    3907581.54
    69345 | Luz Gabriela        | Berm├║dez Agudelo      |                 1 |    3906090.54
    73833 | Fernando Rafael     | Mart├¡nez Betancur     |                 1 |    3905785.40
   134354 | Nicol├ís Nelson      | Pab├│n C├írdenas        |                 1 |    3905124.96
    32525 | Martha Edilma       | G├│mez G├│mez           |                 1 |    3904960.16
   118568 | Isabella            | Zuluaga Garc├¡a        |                 1 |    3904269.97
   131114 | Ricardo             | ├ülvarez Mosquera      |                 1 |    3904250.03
    32933 | Francisco           | Contreras Pab├│n       |                 1 |    3904210.08
    74904 | Ricardo             | Prada Ospina          |                 1 |    3903196.47
   100102 | Alba                | Prada V├®lez           |                 1 |    3900530.07
    76480 | Juliana             | Berm├║dez Villamizar   |                 1 |    3900339.31
   130622 | Ramiro              | Burbano Londo├▒o       |                 1 |    3899562.99
   137837 | Aura                | Ruiz Vargas           |                 1 |    3898447.95
    60604 | Mariana             | Pab├│n Mej├¡a           |                 1 |    3897755.75
    13314 | Gladys              | Herrera Jaimes        |                 1 |    3897035.96
     1269 | Santiago Mauricio   | Jaimes Correa         |                 1 |    3896128.08
    71936 | Mariana             | Su├írez Arango         |                 1 |    3896075.36
   136640 | Iv├ín                | Giraldo Contreras     |                 1 |    3895676.40
    82815 | ├ülvaro              | V├®lez Medina          |                 1 |    3894110.53
   106018 | Gabriela Viviana    | Romero P├®rez          |                 1 |    3893530.52
     3895 | Lorena              | Zapata Garc├¡a         |                 1 |    3893519.51
    43809 | ├ëdgar               | Rodr├¡guez Polan├¡a     |                 1 |    3893165.76
    48995 | Alejandro           | Castillo Castro       |                 1 |    3890797.85
    55369 | Luc├¡a               | Sandoval ├ülvarez      |                 1 |    3889874.10
   140786 | Teresa              | Castro Bonilla        |                 1 |    3888791.82
    39880 | Paola               | Torres ├ülvarez        |                 1 |    3888473.62
    57695 | Orlando             | Prada Chamorro        |                 1 |    3887978.37
    17927 | Ramiro              | Duque Trujillo        |                 1 |    3885237.54
    53112 | Claudia             | Lozano Torres         |                 1 |    3884834.68
    17040 | Dora                | Ortiz Rodr├¡guez       |                 1 |    3882296.42
   137961 | Claudia             | Molina Osorio         |                 1 |    3881500.00
     1270 | Amparo              | Ram├¡rez Herrera       |                 1 |    3881163.82
   126920 | Mario               | Berm├║dez Pe├▒a         |                 1 |    3880972.34
    58770 | Nelson Sebasti├ín    | C├írdenas Villamizar   |                 2 |    3880022.75
    47154 | Ana Camila          | Cabrera Trujillo      |                 1 |    3879700.11
    99214 | Alejandra           | Arango Rojas          |                 1 |    3879048.49
    87705 | Wilson              | Vera Ram├¡rez          |                 1 |    3878592.68
     6583 | Laura               | Zuluaga Ni├▒o          |                 1 |    3877601.52
   124187 | Mar├¡a               | Mu├▒oz Osorio          |                 1 |    3877491.19
    50048 | Rub├®n Mateo         | Jim├®nez Vera          |                 1 |    3876789.72
    85381 | ├ôscar               | R├¡os C├írdenas         |                 1 |    3876745.18
   126494 | Pedro               | Narv├íez Zapata        |                 1 |    3876332.00
    10053 | Brayan              | Castro Mora           |                 1 |    3876234.60
    94190 | Yuliana             | Losada Mosquera       |                 1 |    3875926.88
    39609 | Teresa Stella       | Zuluaga Contreras     |                 1 |    3874323.40
   135340 | Camila              | Perdomo Gonz├ílez      |                 1 |    3873241.71
    90713 | Gloria              | Correa S├ínchez        |                 1 |    3873012.66
    78227 | Edilma              | Cabrera Serrano       |                 1 |    3872264.56
   126464 | Myriam              | Uribe Galvis          |                 1 |    3871883.33
    97595 | Libardo             | Arias Lasso           |                 1 |    3870178.88
    56787 | Olga Rub├®n          | G├│mez Silva           |                 1 |    3869451.75
    98555 | Carlos              | Rivera Ospina         |                 1 |    3868838.16
    34451 | Viviana Teresa      | Cardona Mora          |                 1 |    3868196.32
    94347 | Yuliana             | Mart├¡nez Osorio       |                 1 |    3866168.30
   125975 | Daniel              | Pe├▒a Ortiz            |                 1 |    3865492.02
   108276 | Marleny             | Burbano Duarte        |                 1 |    3865474.25
    13137 | Samuel              | Cabrera Polan├¡a       |                 1 |    3865342.02
   110334 | Valentina           | Barrera Rinc├│n        |                 1 |    3864500.51
     4039 | Beatriz             | Fl├│rez Mu├▒oz          |                 1 |    3859366.70
    77632 | Daniel              | Garc├¡a Restrepo       |                 1 |    3856974.80
    33520 | Yeison Andr├®s       | Bonilla Losada        |                 1 |    3856433.33
   103184 | Sebasti├ín           | Castillo Mar├¡n        |                 1 |    3856392.54
    83173 | Edilma Teresa       | Gonz├ílez Mora         |                 1 |    3855973.92
   112408 | Miguel Libardo      | Sandoval Mora         |                 1 |    3855679.00
    22022 | Diego               | Villamizar Zapata     |                 2 |    3855427.92
    61351 | Heriberto           | Bedoya Hern├índez      |                 1 |    3855022.35
    82216 | Hugo                | Montoya Ruiz          |                 1 |    3852770.52
   148219 | Blanca              | Montoya Su├írez        |                 1 |    3850786.50
   107542 | Wilson Mateo        | Burbano Molina        |                 1 |    3849875.81
    89286 | Rafael Ricardo      | Betancur Mej├¡a        |                 1 |    3848712.82
    11575 | Andr├®s Antonio      | Calder├│n Delgado      |                 1 |    3848330.82
    76435 | Andr├®s              | Restrepo Contreras    |                 1 |    3846826.58
     5666 | Mateo               | Ni├▒o Silva            |                 1 |    3846196.47
   112819 | Gladys              | Cabrera Herrera       |                 1 |    3846122.50
    11465 | Rodrigo             | Narv├íez Osorio        |                 1 |    3845324.31
     3244 | Yesenia             | Chamorro Ni├▒o         |                 1 |    3844768.20
    20708 | Olga                | Sandoval Narv├íez      |                 1 |    3842099.63
    76406 | Arturo              | Polan├¡a Pinz├│n        |                 1 |    3841611.47
     2294 | Wilmer Fabio        | Carrillo Torres       |                 1 |    3841579.92
    47900 | Jorge Yeison        | D├¡az C├írdenas         |                 1 |    3839515.25
    75622 | Lorena              | Castillo Carrillo     |                 1 |    3839360.58
    40105 | ├ëdgar               | Rojas Pinz├│n          |                 1 |    3839207.65
   149640 | Sandra              | Torres Ni├▒o           |                 1 |    3838569.36
    67900 | Luc├¡a Luisa         | Rojas Correa          |                 1 |    3837211.74
    75420 | Nelson              | Londo├▒o Carrillo      |                 1 |    3837098.41
   114834 | Hugo                | Arias Mosquera        |                 1 |    3836783.64
   126322 | Luz                 | Garc├¡a Medina         |                 1 |    3836277.90
    32173 | Anc├¡zar Samuel      | Osorio Ospina         |                 1 |    3836085.00
   116966 | Germ├ín Arturo       | Calder├│n Narv├íez      |                 1 |    3834822.30
    61025 | Ramiro Luis         | Pab├│n Agudelo         |                 1 |    3832656.91
    93019 | Santiago Yeison     | Calder├│n Castro       |                 1 |    3831449.52
    63373 | Felipe              | Valencia Bonilla      |                 1 |    3829846.32
    98625 | Laura               | Rinc├│n Moreno         |                 1 |    3828890.05
   127188 | Rodrigo Wilmer      | Bastidas Acevedo      |                 1 |    3827826.09
    39979 | Rosa                | Carrillo V├®lez        |                 1 |    3826999.50
    93459 | Gloria              | Ruiz Garc├¡a           |                 1 |    3823941.20
    61714 | Javier              | Bastidas Zuluaga      |                 1 |    3823370.13
    75961 | Hugo Arturo         | Giraldo Parra         |                 1 |    3821585.62
    17008 | Daniela             | Mosquera Arias        |                 1 |    3821039.53
    24344 | Yolanda             | Vera Guti├®rrez        |                 1 |    3820936.95
    63014 | Alejandro           | Duque Montoya         |                 1 |    3820936.69
    73749 | Liliana             | V├®lez Perdomo         |                 1 |    3820453.60
   113986 | Nicol├ís             | Guerrero Prada        |                 1 |    3820033.26
    40075 | David               | C├íceres Silva         |                 1 |    3819680.28
    45757 | In├®s                | Rodr├¡guez Su├írez      |                 1 |    3819072.10
    27749 | Hernando An├¡bal     | Vera Moreno           |                 1 |    3819068.19
   141410 | Blanca              | Polan├¡a Tovar         |                 1 |    3818622.50
   100495 | Esteban             | R├¡os Vargas           |                 1 |    3818446.52
   141511 | Roc├¡o               | Ortiz Hern├índez       |                 1 |    3818075.31
   124490 | Yeison              | Jim├®nez Rinc├│n        |                 1 |    3817765.44
   143582 | Germ├ín ├ülvaro       | Ortega Contreras      |                 1 |    3817068.43
    84028 | Cecilia             | R├¡os Berm├║dez         |                 1 |    3817043.93
    77934 | Yeison              | Chamorro Polan├¡a      |                 1 |    3816756.00
   136585 | Nubia               | S├ínchez Zapata        |                 1 |    3816261.27
    55326 | An├¡bal              | Arias Rivera          |                 1 |    3815437.80
   149135 | Roc├¡o               | Berm├║dez Ospina       |                 1 |    3815288.64
    94121 | Yeison Javier       | Losada Ospina         |                 1 |    3814933.44
   128331 | Mauricio Javier     | Mora Torres           |                 1 |    3814780.39
   104037 | ├ülvaro Juan         | Pab├│n Cabrera         |                 2 |    3813631.22
    39378 | ├ôscar               | Ram├¡rez Fl├│rez        |                 1 |    3812005.80
   132703 | Sebasti├ín           | Uribe Henao           |                 1 |    3811621.60
   149512 | Cecilia Mar├¡a       | R├¡os R├¡os             |                 1 |    3810875.38
     3583 | Rafael              | Villamizar Rivera     |                 1 |    3809842.96
   141494 | Yeison              | Su├írez R├¡os           |                 1 |    3809785.35
   102628 | Orlando             | R├¡os Ramos            |                 1 |    3809652.26
    58218 | Miguel              | V├®lez Cabrera         |                 1 |    3809258.69
    63681 | Andrea              | Cu├®llar Ni├▒o          |                 1 |    3808662.67
   112555 | An├¡bal Juli├ín       | Agudelo Zapata        |                 1 |    3807377.38
   129325 | Heriberto           | Ortiz Romero          |                 1 |    3807329.49
   110056 | Martha Ricardo      | Pe├▒a P├®rez            |                 1 |    3807258.85
    75682 | Orlando             | Garc├¡a Arias          |                 1 |    3807034.39
   119416 | Mauricio            | Burbano Berm├║dez      |                 1 |    3806166.98
    11250 | Yuliana Laura       | S├ínchez Chamorro      |                 1 |    3805888.10
    94334 | Juliana             | Benavides Ramos       |                 1 |    3804751.50
    85091 | Gabriela Fanny      | Quintero S├ínchez      |                 1 |    3804606.72
    41311 | Hernando Miguel     | Jim├®nez Restrepo      |                 1 |    3803764.58
   147577 | Alba Blanca         | Lozano Carrillo       |                 1 |    3803492.00
    36734 | Natalia             | V├®lez Trujillo        |                 1 |    3803094.65
    24520 | Manuela             | Bastidas Londo├▒o      |                 1 |    3802471.48
    74948 | Abelardo            | Arango Restrepo       |                 1 |    3802105.30
   141029 | Jazm├¡n              | Mora C├írdenas         |                 1 |    3801354.35
    56060 | Cecilia             | Medina Rojas          |                 1 |    3800812.50
   126109 | Martha Mariana      | Mosquera Valencia     |                 1 |    3799950.04
    92131 | Anc├¡zar             | Rivera Rivera         |                 1 |    3799869.48
    54967 | Esteban             | Su├írez Su├írez         |                 1 |    3799530.00
   123171 | M├│nica Nubia        | G├│mez Uribe           |                 1 |    3798591.39
     7798 | Nubia               | Ortiz Herrera         |                 1 |    3797905.49
    72237 | Laura Camila        | Vargas Restrepo       |                 1 |    3797820.06
   141610 | Marcela             | Medina Garc├¡a         |                 1 |    3795882.60
    63909 | Nubia               | Silva Salazar         |                 1 |    3794761.52
    71746 | Germ├ín              | Moreno Berm├║dez       |                 1 |    3794123.42
    85026 | Ruth                | Silva Montoya         |                 1 |    3793971.43
    63822 | Mauricio            | Medina Rodr├¡guez      |                 1 |    3793532.40
   109723 | Pedro               | Londo├▒o Rivera        |                 1 |    3793470.78
    33637 | Manuela Luisa       | Berm├║dez Jaimes       |                 1 |    3792526.05
    88531 | Francisco Javier    | Duarte Londo├▒o        |                 1 |    3792452.30
   116006 | Arturo Efra├¡n       | Losada Chamorro       |                 1 |    3792176.40
    54043 | Ricardo             | S├ínchez Barrera       |                 1 |    3789802.08
   111359 | Wilmer Andr├®s       | Lozano Losada         |                 1 |    3788857.20
   103130 | Mauricio H├®ctor     | Mu├▒oz Rivera          |                 1 |    3787830.48
    40503 | Daniel Ricardo      | Ortiz Pe├▒a            |                 1 |    3785642.97
    56646 | Martha              | Pe├▒a Ramos            |                 1 |    3785094.74
    87817 | Juan                | Ramos Duarte          |                 1 |    3784622.94
   107663 | Hugo                | Cu├®llar Hern├índez     |                 1 |    3784546.56
   138379 | Isabella Nicol├ís    | Pab├│n Mart├¡nez        |                 1 |    3784180.80
    63186 | Heriberto Emilio    | Villamizar Tovar      |                 1 |    3781981.77
   131873 | Rodrigo             | Agudelo Vera          |                 1 |    3778448.30
    80838 | Hernando Yeison     | C├írdenas Valencia     |                 1 |    3777868.13
   134722 | Andrea              | Jaimes Moreno         |                 1 |    3777410.76
   127156 | Liliana             | Restrepo Ni├▒o         |                 1 |    3777272.04
    13277 | Gloria              | Mora Rangel           |                 1 |    3776879.75
   108386 | Antonio Ramiro      | V├®lez Torres          |                 1 |    3775493.52
    23739 | Gabriela            | P├®rez Ruiz            |                 1 |    3774879.06
    50782 | Carolina            | D├¡az Parra            |                 1 |    3773804.25
   132371 | Manuel              | Agudelo Rojas         |                 1 |    3772542.01
   140554 | Santiago            | Burbano Rojas         |                 1 |    3771480.79
   111171 | Fabio Mateo         | Mosquera Bonilla      |                 1 |    3770925.00
   111216 | Libardo             | Salazar Cardona       |                 1 |    3770868.77
   147082 | Daniel ├ôscar        | Mora Calder├│n         |                 1 |    3770363.03
   142142 | Myriam              | Lasso Ibarra          |                 1 |    3769180.35
    55151 | Yesenia             | Mu├▒oz Rodr├¡guez       |                 1 |    3768724.33
   142248 | Alberto             | Tovar Rinc├│n          |                 1 |    3766580.93
    18452 | Ricardo             | Carrillo Losada       |                 1 |    3766332.02
   146140 | Emilio              | Villamizar Pe├▒a       |                 1 |    3765277.61
    56681 | Orlando             | S├ínchez Osorio        |                 1 |    3764565.72
   106367 | Adriana             | Arias Duarte          |                 1 |    3763760.28
    21937 | Diana Laura         | Restrepo Prada        |                 1 |    3761151.52
   129619 | Sandra Luisa        | Ibarra Torres         |                 1 |    3760536.54
    57869 | Patricia            | Berm├║dez Arias        |                 1 |    3760059.68
    99002 | Rafael              | Delgado Montoya       |                 1 |    3759478.80
   134558 | Mariana             | Perdomo Parra         |                 2 |    3758448.68
   139217 | Esperanza Patricia  | R├¡os Guerrero         |                 1 |    3758420.80
    24565 | Hernando            | Correa Barrera        |                 1 |    3757993.20
   101935 | Edilma              | Zuluaga Quintero      |                 1 |    3757548.25
   112273 | Javier              | Ni├▒o Mu├▒oz            |                 1 |    3757231.55
   119802 | Juan Hugo           | Narv├íez L├│pez         |                 1 |    3756914.58
    66205 | Manuel Anc├¡zar      | Molina Pinz├│n         |                 1 |    3756445.06
    60778 | H├®ctor              | Garc├¡a Ni├▒o           |                 1 |    3753263.20
    28741 | Manuel              | S├ínchez Mu├▒oz         |                 1 |    3753143.10
    72079 | Daniel              | Quintero Rojas        |                 1 |    3752984.07
    89401 | Lorena Esperanza    | Zuluaga Duque         |                 1 |    3752192.98
   121880 | Rub├®n               | Jim├®nez Bonilla       |                 1 |    3751948.03
   110651 | Mauricio            | Osorio Correa         |                 1 |    3751242.48
    81259 | Nicol├ís Emilio      | Berm├║dez L├│pez        |                 1 |    3750774.68
   100844 | Gladys              | Medina Castro         |                 1 |    3747723.92
   143551 | Edilma              | Osorio Erazo          |                 1 |    3746923.35
   114442 | Rafael              | Ospina Castillo       |                 1 |    3746191.46
   148841 | Mar├¡a In├®s          | Narv├íez Bonilla       |                 1 |    3745956.80
   140241 | Libardo             | Burbano Ni├▒o          |                 1 |    3745482.98
   106114 | Alba Blanca         | Rangel Serrano        |                 1 |    3745287.71
   104583 | Adriana             | Zuluaga Fl├│rez        |                 1 |    3744651.48
    98885 | Juan Ramiro         | G├│mez Polan├¡a         |                 1 |    3743727.60
    14066 | Martha Daniel       | Lasso Mosquera        |                 1 |    3743723.04
    49764 | Camila Carmen       | Montoya Herrera       |                 1 |    3743200.64
   120788 | Germ├ín              | Castro Pinz├│n         |                 1 |    3741177.33
    40340 | Jairo               | Hern├índez Mej├¡a       |                 1 |    3740091.20
   139465 | ├ôscar Mario         | S├ínchez Prada         |                 1 |    3740070.52
    44021 | Yuliana             | Trujillo Mart├¡nez     |                 1 |    3739954.27
    88765 | Antonio Ricardo     | Calder├│n Montoya      |                 1 |    3739950.36
   139360 | ├ôscar David         | C├íceres Polan├¡a       |                 1 |    3737402.29
    84573 | Luc├¡a               | Narv├íez Ram├¡rez       |                 1 |    3737311.98
    22965 | Sandra              | Montoya Medina        |                 1 |    3737153.06
   118677 | Rosa Elsa           | Bedoya Hern├índez      |                 1 |    3736278.36
   111183 | Ramiro              | Sandoval Su├írez       |                 1 |    3734110.27
     8610 | Adriana             | Herrera Arango        |                 1 |    3733488.56
    61850 | Nicol├ís             | Mart├¡nez Ruiz         |                 1 |    3732989.28
   104805 | Abelardo            | Medina Ram├¡rez        |                 1 |    3732715.17
    74887 | Antonio             | Zuluaga Mar├¡n         |                 1 |    3732539.36
    55048 | Juan                | Zuluaga Tovar         |                 1 |    3730229.69
   115437 | Miguel Yeison       | Romero Ruiz           |                 1 |    3729654.94
    81260 | Miguel              | Calder├│n Arias        |                 1 |    3728656.60
    90079 | Rosa                | Giraldo Salazar       |                 1 |    3727579.57
     1022 | Blanca Mar├¡a        | Zapata Duarte         |                 1 |    3727288.82
    90906 | Guillermo Manuel    | Mar├¡n Cabrera         |                 2 |    3726433.25
   131809 | Alejandro           | Salazar Correa        |                 1 |    3723941.50
   145724 | Camilo              | Zuluaga Arango        |                 1 |    3720956.88
    34426 | Jazm├¡n              | Bastidas Caicedo      |                 1 |    3720904.45
    78534 | Wilson Fabio        | Guti├®rrez Arias       |                 1 |    3720762.82
    84243 | Stella              | Bedoya Guerrero       |                 1 |    3720335.27
    32485 | Ana                 | S├ínchez Ram├¡rez       |                 1 |    3718133.07
    52169 | Mauricio            | Gonz├ílez Calder├│n     |                 1 |    3717145.75
   118050 | Diana Mar├¡a         | Cardona Pinz├│n        |                 1 |    3714794.45
   115423 | Juliana             | Betancur Castro       |                 1 |    3714377.36
    48985 | Patricia Myriam     | Castillo Valencia     |                 1 |    3713370.00
      372 | Mariana             | Prada R├¡os            |                 1 |    3713259.18
    76137 | Samuel              | Mosquera Molina       |                 1 |    3712327.04
    13211 | Gilberto Diego      | Mu├▒oz Mu├▒oz           |                 1 |    3711561.84
    17357 | Sebasti├ín Gilberto  | Erazo Parra           |                 1 |    3710504.84
    22285 | Fanny Claudia       | P├®rez Jaimes          |                 1 |    3709852.29
   148013 | ├ülvaro              | Torres Uribe          |                 1 |    3709239.80
    93700 | Juan                | Barrera L├│pez         |                 1 |    3709079.28
    90284 | Arturo              | Prada Silva           |                 1 |    3708681.00
    43891 | Claudia             | Giraldo Torres        |                 1 |    3708576.30
    95187 | Abelardo Juan       | Benavides C├íceres     |                 1 |    3708407.20
   144435 | ├ôscar Carlos        | Ortiz Bedoya          |                 1 |    3707743.08
   140106 | ├üngela              | Londo├▒o Mart├¡nez      |                 1 |    3706614.90
    33899 | Guillermo           | G├│mez Parra           |                 1 |    3704671.36
   108379 | Ruth Claudia        | C├íceres Galvis        |                 1 |    3701365.70
   121570 | Gustavo             | Ni├▒o Lasso            |                 1 |    3700913.54
    92769 | Juli├ín              | Lasso Mosquera        |                 1 |    3700659.60
    38620 | Edilma              | L├│pez Agudelo         |                 1 |    3697929.91
    49590 | Samuel              | Pinz├│n Vera           |                 1 |    3697650.60
    40494 | Edilma Camila       | Serrano Vargas        |                 1 |    3696845.49
   137557 | In├®s Camila         | Ramos Duarte          |                 1 |    3695685.00
   146359 | Francisco           | Narv├íez Rinc├│n        |                 1 |    3695187.06
    24389 | Jos├® Manuel         | Jaimes Salazar        |                 1 |    3695096.82
   111450 | Diego               | Villamizar Tovar      |                 1 |    3694763.04
    12369 | Sara                | Guerrero Vera         |                 1 |    3692596.00
    89482 | Esteban             | ├ülvarez Acevedo       |                 1 |    3692311.34
    66742 | Iv├ín                | Burbano Hern├índez     |                 1 |    3689563.77
   145088 | Jorge               | Salazar Restrepo      |                 1 |    3689243.50
     4961 | Daniela             | Herrera Londo├▒o       |                 1 |    3687592.50
    92368 | Ruth                | R├¡os Restrepo         |                 1 |    3686461.00
    18648 | Jazm├¡n              | Burbano Ortega        |                 1 |    3685088.22
    52343 | Nubia               | Ortiz Cabrera         |                 1 |    3684109.26
    74469 | Iv├ín                | Mosquera Fl├│rez       |                 1 |    3683357.40
    70217 | Nelson              | Galvis Zapata         |                 1 |    3683174.46
     2546 | Mar├¡a               | Silva Montoya         |                 1 |    3682752.61
    43853 | Jairo Arturo        | Caicedo Molina        |                 1 |    3681881.01
   117425 | Ana                 | Zuluaga Jaimes        |                 1 |    3681691.50
    46143 | H├®ctor Manuel       | Guti├®rrez Contreras   |                 1 |    3681384.20
    58045 | Orlando             | Tovar Erazo           |                 1 |    3680498.98
    76106 | Sof├¡a               | Rinc├│n Ortiz          |                 1 |    3680009.15
   101799 | Mercedes            | Guti├®rrez Gonz├ílez    |                 1 |    3679338.59
   138644 | Fernando            | Hern├índez Mosquera    |                 1 |    3679224.96
   123028 | Arturo              | Castro Ortega         |                 1 |    3678643.26
   149383 | Wilson              | Caicedo Montoya       |                 1 |    3678597.72
   146651 | Jazm├¡n              | Mar├¡n Galvis          |                 1 |    3676257.84
    61489 | Stella              | Rojas R├¡os            |                 1 |    3675122.28
    87037 | Efra├¡n Alejandro    | Castro Delgado        |                 1 |    3674415.02
    15012 | Rodrigo Santiago    | Su├írez Chamorro       |                 1 |    3674044.08
    92048 | Myriam              | Parra Uribe           |                 1 |    3671641.54
   115674 | Yesenia Erika       | Carrillo Correa       |                 1 |    3671437.28
    12554 | Rosa                | Trujillo Contreras    |                 1 |    3670620.61
    90130 | ├ôscar               | Cu├®llar Bedoya        |                 1 |    3670274.16
    61326 | Yeison Emilio       | Romero Torres         |                 1 |    3668866.45
   110939 | Fanny Luc├¡a         | Lasso Giraldo         |                 1 |    3667427.00
   115675 | Juliana             | Cabrera Burbano       |                 1 |    3667241.76
    99198 | Sof├¡a               | Restrepo Henao        |                 1 |    3664460.28
    30502 | Mauricio Cristian   | Ram├¡rez L├│pez         |                 1 |    3664436.76
   129124 | Mauricio            | Londo├▒o Rangel        |                 1 |    3663961.28
    50347 | Gladys              | Pinz├│n Villamizar     |                 2 |    3663296.73
   121744 | Yuliana             | Jim├®nez Quintero      |                 1 |    3663079.42
    73797 | Carmen Marcela      | Calder├│n Rinc├│n       |                 1 |    3662998.57
   143483 | Patricia            | Guti├®rrez Romero      |                 1 |    3662928.09
   107835 | Paola               | Ibarra Zuluaga        |                 1 |    3662824.21
   114313 | ├ëdgar               | Perdomo Galvis        |                 1 |    3662545.84
    45681 | Pedro Mario         | Correa Sandoval       |                 1 |    3662067.41
   139195 | H├®ctor Andr├®s       | Ospina Torres         |                 1 |    3661781.25
    23012 | Arturo              | Henao Hern├índez       |                 1 |    3661374.86
    31309 | Guillermo           | Cardona Betancur      |                 1 |    3661120.67
   144680 | Diego               | Barrera Perdomo       |                 1 |    3660758.25
   124878 | Mateo Fernando      | Ortega Polan├¡a        |                 1 |    3659484.15
    88158 | Felipe              | Carrillo Guti├®rrez    |                 1 |    3658302.46
   133860 | Jaime David         | Molina Gonz├ílez       |                 1 |    3658048.78
    49690 | Jaime               | Contreras Correa      |                 1 |    3657721.44
    84251 | Brayan              | Erazo Zuluaga         |                 1 |    3657613.44
     2385 | Beatriz             | Bastidas Quintero     |                 1 |    3656756.34
    79224 | Wilmer              | Silva Ram├¡rez         |                 1 |    3653992.60
    77368 | Beatriz             | Narv├íez L├│pez         |                 1 |    3653514.45
    39860 | Marleny             | Perdomo G├│mez         |                 1 |    3652441.02
    41372 | Orlando             | Osorio Ospina         |                 1 |    3652126.78
    78804 | Juan                | Castillo L├│pez        |                 1 |    3652034.66
    13278 | Nicol├ís             | Romero Berm├║dez       |                 1 |    3651925.32
   141806 | Ramiro              | Mar├¡n Losada          |                 1 |    3651912.80
    43432 | Reinaldo Alberto    | Losada Trujillo       |                 2 |    3651847.01
    74523 | Carolina            | Benavides Garc├¡a      |                 1 |    3650844.76
    99165 | Juliana Jazm├¡n      | Ram├¡rez Rojas         |                 1 |    3650731.48
    83802 | Roc├¡o               | Duarte Pab├│n          |                 1 |    3649290.59
    39029 | Ricardo Cristian    | Perdomo Rodr├¡guez     |                 1 |    3647818.36
    35619 | Mercedes            | Lasso Rinc├│n          |                 1 |    3647428.00
   135629 | Rafael              | Acevedo Duarte        |                 1 |    3646049.79
   110798 | Nicol├ís             | Serrano Cardona       |                 1 |    3645136.25
     8232 | Esteban             | P├®rez Mu├▒oz           |                 1 |    3644454.39
   104493 | Heriberto           | Chamorro Henao        |                 1 |    3644366.25
    94687 | Ricardo             | Giraldo Arias         |                 1 |    3643777.29
   126024 | Jorge               | Zapata Duarte         |                 1 |    3643240.98
    81674 | Laura               | Romero Jaimes         |                 1 |    3642867.88
   109093 | Viviana Gustavo     | Montoya Duarte        |                 1 |    3642858.50
   104994 | Diana               | Ramos Jim├®nez         |                 1 |    3642779.94
    82161 | Hugo                | Medina Ni├▒o           |                 1 |    3642690.88
    76185 | Diana               | Correa Acevedo        |                 1 |    3642629.76
    18371 | Ana                 | Castro Guerrero       |                 1 |    3639558.44
   112527 | Gloria              | Serrano Ramos         |                 1 |    3638635.84
     1070 | Mario               | Bastidas Calder├│n     |                 1 |    3638285.91
    96059 | Esperanza Luisa     | Zuluaga Duarte        |                 1 |    3638211.23
   130598 | Arturo              | Cardona Moreno        |                 1 |    3637899.87
     6985 | Germ├ín              | Osorio Serrano        |                 1 |    3637370.97
    81181 | Alberto             | Ortiz Ram├¡rez         |                 1 |    3636963.70
   113267 | Olga Luisa          | Cu├®llar Acevedo       |                 1 |    3635870.04
    54540 | David Abelardo      | Molina Duarte         |                 1 |    3635272.20
    46618 | Alba                | Lozano Medina         |                 1 |    3634966.43
    46825 | Efra├¡n              | Tovar Ospina          |                 1 |    3632442.65
    82231 | Rodrigo             | Mar├¡n Giraldo         |                 1 |    3632110.24
    72976 | Isabella ├üngela     | Pe├▒a Rinc├│n           |                 1 |    3632096.65
    58908 | Ruth                | Calder├│n Benavides    |                 1 |    3631750.55
     5021 | Yuliana             | D├¡az Bonilla          |                 1 |    3630558.33
    50332 | Cecilia             | Torres Jim├®nez        |                 1 |    3630328.67
    51418 | Daniel Camilo       | V├®lez Osorio          |                 1 |    3629534.15
    61739 | Andr├®s              | Uribe Ibarra          |                 1 |    3628729.25
     7919 | Gladys              | Su├írez Rojas          |                 1 |    3627980.14
    36270 | Esteban             | Lasso Vargas          |                 1 |    3627838.00
   121018 | Camilo              | Trujillo Narv├íez      |                 1 |    3627623.68
    38337 | Alejandro           | G├│mez S├ínchez         |                 1 |    3626745.80
    79093 | Valentina           | Agudelo Mar├¡n         |                 1 |    3625774.94
   110543 | Emilio              | Sandoval G├│mez        |                 1 |    3625773.36
    39694 | Nelson Gilberto     | Bastidas Delgado      |                 1 |    3625277.99
   106980 | Arturo              | Salazar Ramos         |                 1 |    3624572.25
    13516 | Javier Esteban      | Guerrero Vargas       |                 1 |    3624459.54
    38627 | Fernando            | Londo├▒o V├®lez         |                 1 |    3623111.91
    58841 | Natalia             | Rivera Rojas          |                 1 |    3622693.20
    90864 | Isabella            | Vargas Castillo       |                 1 |    3621999.07
    77919 | ├üngela              | Trujillo Jaimes       |                 1 |    3621120.00
    17621 | Jorge               | Delgado Carrillo      |                 1 |    3621095.50
    47844 | Natalia             | Bedoya Fl├│rez         |                 1 |    3620794.13
    30088 | Wilson              | Duque Hern├índez       |                 1 |    3620444.94
    26233 | Gustavo             | Jaimes Valencia       |                 1 |    3620349.54
   103805 | Liliana             | P├®rez Erazo           |                 1 |    3620314.60
    91515 | Brayan              | Quintero Lozano       |                 1 |    3620190.01
    22029 | Gilberto Arturo     | Pe├▒a Benavides        |                 1 |    3619644.89
   121092 | Guillermo           | G├│mez Silva           |                 1 |    3619391.73
    24662 | Edilma Alejandra    | Vera Vera             |                 1 |    3617683.27
   149602 | Nubia               | Narv├íez Fl├│rez        |                 1 |    3616731.68
    78524 | Wilmer              | Delgado ├ülvarez       |                 1 |    3616513.10
   149169 | In├®s                | Narv├íez Valencia      |                 1 |    3615915.27
    71315 | Ruth                | Barrera Jaimes        |                 1 |    3613970.93
    41735 | Lorena              | Zapata Vargas         |                 1 |    3613829.96
    52467 | Gabriela            | Quintero Henao        |                 1 |    3612795.57
    51704 | Gustavo             | ├ülvarez R├¡os          |                 1 |    3611687.86
   112008 | Jazm├¡n              | Ortega Narv├íez        |                 1 |    3611342.72
    49794 | Abelardo            | Parra Herrera         |                 1 |    3611067.26
     3686 | Daniela             | Mosquera Narv├íez      |                 1 |    3610742.40
   124431 | Cristian            | Delgado Moreno        |                 1 |    3610690.88
    26154 | Fabio Efra├¡n        | Carrillo C├íceres      |                 1 |    3609089.93
    63262 | Amparo              | Carrillo Calder├│n     |                 1 |    3608955.00
    33613 | Juan                | Bonilla Cabrera       |                 1 |    3608395.13
    57548 | Manuel              | Lasso Rojas           |                 1 |    3607612.50
   110172 | In├®s                | Galvis Hern├índez      |                 1 |    3606911.52
    96419 | Libardo Cristian    | Ortiz Carrillo        |                 1 |    3606738.17
    15755 | Santiago            | Arango Rangel         |                 1 |    3604069.71
    87468 | ├ôscar Mateo         | Rinc├│n Caicedo        |                 1 |    3603789.71
    39104 | Luc├¡a               | Ramos Ruiz            |                 1 |    3603683.60
    38716 | Reinaldo            | Garc├¡a Burbano        |                 1 |    3603657.90
      943 | Juliana             | Rinc├│n Silva          |                 1 |    3603510.32
    10757 | Alejandro Samuel    | Correa P├®rez          |                 1 |    3603108.70
     4332 | Hernando            | Erazo Restrepo        |                 1 |    3602871.86
   126835 | Mariana             | D├¡az Lasso            |                 1 |    3600415.28
    94052 | Nubia Aura          | Pinz├│n Ramos          |                 1 |    3599532.78
    26908 | Sof├¡a               | Vargas Herrera        |                 1 |    3599391.96
     2114 | Gloria              | Medina Hern├índez      |                 1 |    3599137.24
   147353 | Ana                 | C├írdenas Betancur     |                 1 |    3595731.15
    53490 | M├│nica Isabella     | Contreras Mar├¡n       |                 1 |    3595616.79
    74278 | Francisco           | Mej├¡a Caicedo         |                 1 |    3594739.50
   100713 | Esperanza           | Duque Delgado         |                 1 |    3594077.86
    40859 | Andr├®s Libardo      | C├íceres Bedoya        |                 1 |    3592458.04
   113291 | Luz                 | R├¡os Zapata           |                 1 |    3591770.75
    90649 | Andr├®s Jaime        | Osorio Losada         |                 1 |    3591166.53
    37731 | Stella              | Erazo Rodr├¡guez       |                 1 |    3591000.30
    78881 | Guillermo Santiago  | Delgado Bonilla       |                 1 |    3590861.12
    41279 | Sara Mercedes       | Restrepo Castillo     |                 1 |    3590499.41
    28138 | Andrea Nubia        | Losada Silva          |                 1 |    3590314.14
    81767 | Olga                | Silva Pe├▒a            |                 1 |    3589914.86
    57279 | Antonio             | Trujillo Jaimes       |                 1 |    3588241.20
    97155 | Jaime               | D├¡az Giraldo          |                 1 |    3587778.15
    33622 | Yesenia             | Prada Rivera          |                 1 |    3587412.99
    12393 | David               | Agudelo Delgado       |                 1 |    3586468.95
   110818 | Andr├®s              | Ospina Henao          |                 1 |    3586227.75
   119594 | Mar├¡a               | Garc├¡a Pinz├│n         |                 1 |    3586068.33
    99338 | Nubia               | Arango S├ínchez        |                 1 |    3585869.29
   131519 | Martha              | Osorio Arias          |                 1 |    3584953.38
    96266 | Brayan              | Acevedo Ortiz         |                 1 |    3584685.15
    43712 | Javier              | Medina Agudelo        |                 1 |    3582678.80
   108619 | In├®s                | Mar├¡n Barrera         |                 1 |    3582553.16
    11057 | Arturo              | Ortega Prada          |                 1 |    3582144.39
    47578 | Hernando            | Londo├▒o Restrepo      |                 1 |    3582120.02
    47048 | Felipe              | Rojas Fl├│rez          |                 1 |    3581693.28
     6846 | Gilberto            | Agudelo Ospina        |                 1 |    3580515.85
    78803 | Andr├®s              | Montoya Osorio        |                 1 |    3580069.23
    19501 | Manuela Patricia    | C├írdenas Calder├│n     |                 1 |    3580024.68
    32001 | Teresa              | Rangel Pe├▒a           |                 1 |    3579285.27
    24916 | Nubia               | Arango S├ínchez        |                 1 |    3579254.50
   131298 | Libardo             | D├¡az Caicedo          |                 1 |    3577545.40
    15306 | Juan                | Caicedo Trujillo      |                 1 |    3577519.44
   145415 | Carlos              | Jim├®nez Arias         |                 1 |    3577403.76
     7469 | ├ülvaro Jorge        | Rojas Sandoval        |                 1 |    3577388.17
    26141 | Jazm├¡n              | Molina Ni├▒o           |                 1 |    3577181.64
     6000 | Luis Nelson         | Cardona Pab├│n         |                 1 |    3576767.04
   123369 | Daniel Cristian     | Parra Galvis          |                 1 |    3576683.24
    15356 | Yuliana Ana         | Su├írez Osorio         |                 1 |    3576346.02
   101165 | Miguel David        | Prada L├│pez           |                 1 |    3575937.20
   149801 | Camilo Hugo         | D├¡az Delgado          |                 1 |    3575868.70
    85464 | Juliana             | Ospina Herrera        |                 1 |    3575316.32
     5990 | Diana               | Castro Burbano        |                 1 |    3575162.76
   120787 | Liliana             | ├ülvarez Delgado       |                 1 |    3574517.82
    80492 | Jos├®                | Rivera ├ülvarez        |                 1 |    3574412.04
    95071 | Beatriz             | C├írdenas Erazo        |                 1 |    3574408.31
    66444 | Juan                | V├®lez Ortiz           |                 1 |    3574008.89
    57727 | Martha Marcela      | Gonz├ílez Villamizar   |                 1 |    3573904.80
    29147 | Javier              | Duque Montoya         |                 1 |    3573542.07
    62018 | Mateo Jairo         | Tovar Gonz├ílez        |                 1 |    3573207.72
    85398 | Hugo                | Jaimes Quintero       |                 1 |    3573105.20
    64183 | Yeison              | Mar├¡n Su├írez          |                 1 |    3572450.11
     4299 | Nicol├ís             | Castillo Lasso        |                 1 |    3571309.83
    63485 | Sebasti├ín Felipe    | Gonz├ílez Pinz├│n       |                 1 |    3570078.82
    83711 | Gilberto            | Ortiz Ram├¡rez         |                 1 |    3569084.64
    48301 | Santiago Germ├ín     | Fl├│rez Garc├¡a         |                 1 |    3568688.73
    22040 | Antonio Cristian    | Sandoval Valencia     |                 1 |    3568443.90
    49387 | Diego               | Molina Restrepo       |                 1 |    3568037.55
   118031 | Rafael              | Castillo Jim├®nez      |                 1 |    3566535.36
   114395 | Patricia Blanca     | Duarte Mu├▒oz          |                 1 |    3566501.50
    32997 | Daniel              | Ram├¡rez Losada        |                 1 |    3565803.44
   118150 | Marcela             | Silva Lozano          |                 1 |    3565438.44
    18110 | Martha              | V├®lez Ruiz            |                 1 |    3564538.23
    92998 | Nicol├ís             | C├írdenas Bonilla      |                 1 |    3564460.56
    51879 | Rodrigo Juan        | Rojas S├ínchez         |                 1 |    3563946.61
    32403 | Claudia             | Henao Valencia        |                 1 |    3562727.98
    36875 | Wilmer              | Ospina D├¡az           |                 1 |    3562222.50
   145663 | Fanny               | C├íceres Vera          |                 1 |    3562089.65
     8249 | Lorena In├®s         | Villamizar Mu├▒oz      |                 1 |    3561800.72
    59778 | Brayan              | Pinz├│n Tovar          |                 1 |    3561436.48
    31869 | Yuliana             | Mar├¡n Castillo        |                 1 |    3561014.30
    41576 | Rafael H├®ctor       | Londo├▒o Caicedo       |                 1 |    3560986.90
    49351 | Leidy               | Lasso C├íceres         |                 1 |    3560314.34
    52146 | Wilson              | Arango Erazo          |                 1 |    3560007.97
    31423 | Alejandra           | Pe├▒a Rinc├│n           |                 1 |    3559552.72
    72387 | Anc├¡zar Wilson      | R├¡os Bedoya           |                 1 |    3558916.14
    71286 | Samuel Mario        | Bastidas Arango       |                 1 |    3557808.04
     1960 | Alberto             | Ortiz Ram├¡rez         |                 1 |    3557139.92
    18931 | Juli├ín              | Delgado Romero        |                 1 |    3557127.48
    16932 | Sebasti├ín Anc├¡zar   | Cu├®llar Arias         |                 1 |    3556463.29
    91052 | Viviana             | Restrepo R├¡os         |                 1 |    3555993.96
   113578 | Alberto             | Hern├índez Zuluaga     |                 1 |    3555214.90
    28514 | Leidy               | Torres Romero         |                 1 |    3554961.40
   127209 | Edilma Carolina     | Gonz├ílez Prada        |                 1 |    3554888.07
    28494 | Ramiro              | Jim├®nez Pab├│n         |                 1 |    3553922.91
    22004 | Ana                 | Ram├¡rez Restrepo      |                 1 |    3552165.76
   101427 | Efra├¡n              | Jaimes Losada         |                 1 |    3549537.32
    17625 | Valentina           | Zuluaga Guerrero      |                 1 |    3549492.88
    64662 | Laura               | Barrera Pinz├│n        |                 1 |    3548571.54
     9103 | Jaime               | Medina Lasso          |                 1 |    3548446.80
   112327 | Paola               | Castro G├│mez          |                 1 |    3547638.98
   102860 | Sebasti├ín           | Herrera Galvis        |                 1 |    3547123.68
    19853 | Esperanza           | Zapata Rodr├¡guez      |                 1 |    3546848.80
   122442 | Laura               | Villamizar Pab├│n      |                 1 |    3546415.08
    64919 | Amparo Jazm├¡n       | Montoya Mar├¡n         |                 1 |    3546231.76
    65088 | Yolanda             | Arango Chamorro       |                 1 |    3545633.91
    77419 | H├®ctor              | Medina Pab├│n          |                 1 |    3544985.42
    47092 | Diego               | Bonilla Restrepo      |                 1 |    3543894.14
    54643 | Alberto             | Moreno Torres         |                 1 |    3542583.90
   144063 | Lorena              | Serrano Ram├¡rez       |                 1 |    3541924.60
   142066 | Felipe              | Gonz├ílez Arias        |                 1 |    3541235.00
    36083 | Roc├¡o               | Prada Caicedo         |                 1 |    3541220.19
    79179 | ├ülvaro Carlos       | Montoya Ruiz          |                 1 |    3541111.98
    65042 | An├¡bal              | Castillo Romero       |                 1 |    3540756.86
    77608 | Carlos              | Duarte Cu├®llar        |                 1 |    3540440.42
    41305 | Alejandro           | Pinz├│n Medina         |                 1 |    3540404.55
    87746 | ├ülvaro              | Bonilla Erazo         |                 1 |    3540404.35
    31592 | Camila              | Hern├índez Valencia    |                 1 |    3540287.52
   139893 | Reinaldo            | C├írdenas Serrano      |                 1 |    3540211.42
   145173 | Lorena              | Torres Perdomo        |                 1 |    3540080.87
   116432 | Andrea Amparo       | Mart├¡nez Carrillo     |                 1 |    3538857.94
   111257 | Mariana Viviana     | Bonilla Uribe         |                 1 |    3538826.40
    63144 | Yeison Hernando     | Acevedo Restrepo      |                 1 |    3538698.61
     9154 | Sara                | Rangel Uribe          |                 1 |    3538311.96
   114277 | Wilmer              | Prada Carrillo        |                 1 |    3538110.55
    33709 | Juan                | Valencia Contreras    |                 1 |    3536596.44
    69728 | Aura                | L├│pez Henao           |                 1 |    3536566.06
    14537 | Elsa                | Bastidas Ramos        |                 1 |    3535808.05
    87160 | Amparo Yesenia      | Correa Mej├¡a          |                 1 |    3535717.60
   146141 | Mariana             | Polan├¡a Fl├│rez        |                 1 |    3535143.37
    68446 | Ruth                | Gonz├ílez Quintero     |                 1 |    3534977.88
   105574 | Mateo               | Fl├│rez Henao          |                 1 |    3534918.01
    47681 | Sandra Isabella     | Zuluaga Cabrera       |                 1 |    3532819.24
    23577 | Ramiro              | Ortiz Bastidas        |                 1 |    3532779.68
    64205 | Sandra              | Bastidas Erazo        |                 1 |    3530756.34
    80383 | Diego               | Losada G├│mez          |                 1 |    3530667.22
    74627 | ├ëdgar               | V├®lez Galvis          |                 1 |    3530514.72
    48441 | Francisco           | Valencia Acevedo      |                 1 |    3530422.08
   128645 | Carolina            | Londo├▒o Ram├¡rez       |                 2 |    3529461.58
   115340 | Diana               | Villamizar Perdomo    |                 1 |    3527343.57
    36256 | Ruth                | Ruiz Vargas           |                 1 |    3526713.80
   147695 | Paola               | Pab├│n Molina          |                 1 |    3525542.32
    58842 | In├®s                | D├¡az Perdomo          |                 1 |    3524999.37
    39370 | Heriberto           | Molina Uribe          |                 1 |    3524623.76
    16016 | Santiago            | Duarte Duarte         |                 1 |    3523761.92
   142576 | Isabella            | Prada Cu├®llar         |                 1 |    3523569.00
    94560 | Rafael Mauricio     | G├│mez Pab├│n           |                 1 |    3522422.77
   127333 | ├ëdgar               | Valencia Cu├®llar      |                 1 |    3520100.95
    27833 | Daniela             | Agudelo Lozano        |                 1 |    3519898.38
   125141 | H├®ctor Emilio       | Sandoval Londo├▒o      |                 1 |    3519620.30
    65561 | Marcela Laura       | Lozano Villamizar     |                 1 |    3517308.90
   113697 | Esteban             | Mart├¡nez Rivera       |                 1 |    3515991.83
    30912 | Erika               | Fl├│rez G├│mez          |                 1 |    3515712.58
    71127 | Felipe              | ├ülvarez Fl├│rez        |                 1 |    3514663.62
   102792 | Isabella            | Barrera Rangel        |                 1 |    3514577.85
   119905 | Nubia               | Duarte Osorio         |                 1 |    3514155.05
    39838 | Rub├®n               | Quintero Mosquera     |                 1 |    3514134.40
   103222 | Marcela             | Guti├®rrez Benavides   |                 1 |    3513600.84
    80531 | Samuel Pedro        | Ni├▒o Ruiz             |                 1 |    3513365.84
    88648 | Manuel Francisco    | Mar├¡n Pab├│n           |                 1 |    3512894.84
    71430 | Natalia Leidy       | Cabrera Zapata        |                 1 |    3511939.73
   144095 | Sandra              | Rojas Restrepo        |                 1 |    3511719.49
    91412 | Yuliana             | Polan├¡a Cardona       |                 1 |    3511626.93
    25322 | Natalia             | Rinc├│n Zuluaga        |                 1 |    3510653.30
   119819 | Manuela             | Correa Ospina         |                 1 |    3509614.86
    23245 | Marleny             | Osorio Villamizar     |                 1 |    3509417.45
    25048 | Miguel H├®ctor       | Uribe Henao           |                 1 |    3509187.60
    47459 | Valentina           | Gonz├ílez Contreras    |                 1 |    3507697.57
    58182 | Antonio             | Gonz├ílez G├│mez        |                 1 |    3507480.90
     4244 | Santiago            | Montoya Moreno        |                 1 |    3506802.25
    37193 | Juliana             | Berm├║dez Jaimes       |                 1 |    3506474.40
    14612 | Roc├¡o               | Arango Cu├®llar        |                 1 |    3506024.47
   108940 | Mar├¡a               | Cabrera Pe├▒a          |                 1 |    3505226.94
    57013 | Jaime               | Jaimes Jaimes         |                 1 |    3504853.32
   103318 | Elsa                | Pab├│n Romero          |                 1 |    3504541.19
    66825 | Hernando ├ôscar      | Trujillo Galvis       |                 1 |    3503516.40
    13901 | Stella              | Zuluaga Villamizar    |                 1 |    3503507.52
    63462 | Diana               | Betancur Tovar        |                 1 |    3503411.24
    46095 | Wilmer              | V├®lez Giraldo         |                 1 |    3503172.97
    36965 | Beatriz             | Barrera Perdomo       |                 1 |    3502148.69
    47118 | Arturo              | Bonilla G├│mez         |                 1 |    3501225.88
    52057 | Roc├¡o Alejandra     | Contreras Uribe       |                 1 |    3500918.88
    73112 | Amparo              | R├¡os P├®rez            |                 1 |    3500237.70
   135540 | Diana               | Delgado Galvis        |                 1 |    3499768.25
   102704 | Cristian            | Londo├▒o Barrera       |                 1 |    3499561.12
    33848 | Sebasti├ín           | Cu├®llar Agudelo       |                 1 |    3499381.86
   112301 | Abelardo            | Fl├│rez Guerrero       |                 1 |    3499183.30
    63875 | Adriana             | Rangel Arango         |                 1 |    3498957.47
    41076 | Patricia            | Pab├│n Lasso           |                 1 |    3498597.89
   115418 | Hugo Francisco      | ├ülvarez D├¡az          |                 1 |    3497712.54
    89159 | Carmen              | D├¡az Rojas            |                 1 |    3496993.50
   110588 | Amparo              | Mu├▒oz Mu├▒oz           |                 1 |    3496718.35
   135201 | Viviana             | Carrillo Fl├│rez       |                 1 |    3496081.89
     7600 | Germ├ín              | Parra C├írdenas        |                 1 |    3495587.55
    18230 | Ruth                | Sandoval Cardona      |                 1 |    3493751.05
    69279 | Erika               | Rangel Zuluaga        |                 1 |    3493739.37
   128099 | Myriam              | Ruiz Carrillo         |                 1 |    3493551.51
    37552 | Edilma Beatriz      | Bastidas Pab├│n        |                 1 |    3492268.32
     7884 | Gladys Isabella     | Duque Erazo           |                 1 |    3491464.36
    22670 | Yuliana             | Vargas Vera           |                 1 |    3491035.20
    57101 | Natalia Juli├ín      | Tovar Polan├¡a         |                 1 |    3489756.80
    14488 | Adriana             | Narv├íez P├®rez         |                 1 |    3489605.18
    36525 | Gloria              | Polan├¡a Hern├índez     |                 1 |    3489305.64
   108747 | Sof├¡a               | Restrepo Pe├▒a         |                 1 |    3488491.44
    61615 | Manuel Juli├ín       | Quintero D├¡az         |                 1 |    3488444.40
    40953 | Natalia Claudia     | Romero Silva          |                 1 |    3488397.72
   143406 | ├ôscar               | Giraldo Quintero      |                 1 |    3488061.42
    31913 | Myriam              | Duque Ram├¡rez         |                 1 |    3488059.34
   118976 | Mariana             | Mora Ni├▒o             |                 1 |    3488049.54
    90541 | Cristian ├ôscar      | Delgado Parra         |                 1 |    3487668.45
   140881 | Fanny               | Valencia Cardona      |                 1 |    3487200.62
   131133 | Rafael Santiago     | Pinz├│n Guti├®rrez      |                 1 |    3486473.43
    76453 | Hugo                | L├│pez Losada          |                 1 |    3485809.71
    88008 | Mercedes            | Agudelo Vera          |                 1 |    3485803.50
    35693 | Ruth                | ├ülvarez Restrepo      |                 1 |    3484791.53
   132273 | An├¡bal              | Torres Duarte         |                 1 |    3482991.05
    58578 | Abelardo            | Pinz├│n Jim├®nez        |                 1 |    3481899.96
   104222 | Blanca              | Salazar Bonilla       |                 1 |    3480487.40
    91644 | Isabella            | Pe├▒a Galvis           |                 1 |    3480011.08
    64034 | Felipe              | Arias Arias           |                 1 |    3479954.31
    44526 | Guillermo           | Hern├índez Parra       |                 1 |    3479376.09
    84423 | Carmen              | Delgado Mej├¡a         |                 1 |    3479291.40
    79034 | Hernando            | Jaimes Barrera        |                 1 |    3478940.16
    60688 | Nelson Heriberto    | Montoya Rojas         |                 1 |    3478077.78
     5281 | Leidy Alejandra     | G├│mez Arango          |                 1 |    3477649.84
   115037 | Javier Jorge        | G├│mez Moreno          |                 1 |    3477633.58
   103949 | Rodrigo             | Herrera Castillo      |                 1 |    3477216.82
    85380 | Andr├®s              | Montoya Osorio        |                 1 |    3476975.87
    76898 | Leidy Luz           | Arango Calder├│n       |                 1 |    3476710.55
     2311 | Luisa               | Serrano Moreno        |                 1 |    3476127.96
   110022 | Libardo Miguel      | Acevedo Agudelo       |                 1 |    3475620.80
    26739 | ├ülvaro              | Medina Molina         |                 1 |    3475035.10
    82480 | Liliana             | Quintero Pe├▒a         |                 1 |    3474737.92
    12729 | Sara                | Quintero L├│pez        |                 1 |    3474661.01
   113418 | Claudia             | Caicedo Medina        |                 1 |    3474451.40
     2241 | Carmen              | Medina Caicedo        |                 1 |    3474276.60
    67113 | Alba                | Duarte Ramos          |                 1 |    3473773.12
   111321 | Wilson              | Castro ├ülvarez        |                 1 |    3471818.02
    61679 | Mauricio            | Molina S├ínchez        |                 1 |    3471167.40
   128337 | Yesenia             | D├¡az Ramos            |                 1 |    3470740.30
    30963 | Cristian            | Medina Duque          |                 1 |    3470126.87
   132101 | H├®ctor              | Narv├íez Pab├│n         |                 1 |    3469814.23
   102802 | Natalia             | Osorio Cardona        |                 1 |    3468680.42
    19871 | Alberto             | Burbano Mart├¡nez      |                 1 |    3468094.77
    54724 | Andrea              | Betancur Ortega       |                 1 |    3467529.00
    66661 | Brayan              | Ortega Guerrero       |                 1 |    3466223.94
    15455 | In├®s                | Rinc├│n Valencia       |                 1 |    3465760.56
   133492 | Mercedes            | Molina Correa         |                 1 |    3464500.92
    28795 | Leidy               | Acevedo Bonilla       |                 1 |    3464239.80
   132954 | Fabio               | Mora Londo├▒o          |                 1 |    3463861.01
   136996 | Mariana             | Carrillo Pab├│n        |                 1 |    3461966.44
    77308 | Felipe              | Mar├¡n Rangel          |                 1 |    3461042.80
    69357 | Antonio Fabio       | Hern├índez Vargas      |                 1 |    3460418.37
   122540 | Ricardo Rub├®n       | Mar├¡n Losada          |                 1 |    3460397.16
    70253 | Marleny Adriana     | Molina Castro         |                 1 |    3459418.32
    72930 | Yeison              | Castillo Ortega       |                 1 |    3457433.75
    16422 | Mario               | Arango Montoya        |                 1 |    3457066.68
    91163 | Alba                | Restrepo Bedoya       |                 1 |    3456845.80
    91781 | Amparo              | Serrano C├írdenas      |                 1 |    3455804.54
    62977 | Luisa               | Rodr├¡guez Agudelo     |                 1 |    3453968.84
    32528 | Diana               | Guerrero Pinz├│n       |                 1 |    3453760.66
   137960 | Carolina            | Burbano Ruiz          |                 1 |    3453516.62
    62328 | Luc├¡a               | Cabrera Montoya       |                 1 |    3452953.91
    71576 | Antonio Daniel      | Pinz├│n Agudelo        |                 1 |    3452638.64
   121538 | Efra├¡n              | Restrepo Zuluaga      |                 1 |    3452003.97
    35111 | Marcela Camila      | Villamizar Moreno     |                 1 |    3451678.89
    73640 | Gustavo             | Ruiz Guerrero         |                 1 |    3451404.84
    27750 | Juli├ín Pedro        | Fl├│rez Molina         |                 1 |    3450749.28
   139325 | M├│nica              | Polan├¡a Berm├║dez      |                 1 |    3450370.98
   144234 | Antonio             | Galvis Galvis         |                 1 |    3450031.24
    30509 | Mario               | Betancur Betancur     |                 1 |    3449376.05
    66457 | Reinaldo Samuel     | Torres Losada         |                 1 |    3448288.40
    67313 | Marcela Aura        | Rivera Rodr├¡guez      |                 1 |    3447979.65
    45562 | Natalia Viviana     | Serrano Jaimes        |                 1 |    3447961.56
   127981 | David               | Mej├¡a Garc├¡a          |                 1 |    3447428.32
    63329 | Ricardo             | Calder├│n Moreno       |                 1 |    3445133.34
    52498 | Mar├¡a               | C├íceres Montoya       |                 1 |    3445079.42
   107333 | Jos├® Yeison         | Rinc├│n Vargas         |                 1 |    3443750.43
     3972 | Jairo               | Mej├¡a Perdomo         |                 1 |    3443700.78
    35763 | An├¡bal              | Molina Hern├índez      |                 1 |    3443452.62
    76529 | Erika               | Ramos Berm├║dez        |                 1 |    3442950.53
    50591 | Guillermo           | Mosquera Cardona      |                 1 |    3442143.47
    63623 | Gilberto            | Ibarra Mosquera       |                 1 |    3441530.40
    62808 | Adriana             | Burbano Castillo      |                 1 |    3441275.11
    75861 | Sof├¡a Luisa         | Benavides Galvis      |                 1 |    3440903.04
   110292 | Mariana             | Mar├¡n Hern├índez       |                 1 |    3440803.42
   130453 | Rafael              | Torres Rangel         |                 1 |    3440315.49
   121898 | Reinaldo Francisco  | Gonz├ílez Ortega       |                 1 |    3439508.04
     8108 | Libardo Rub├®n       | Betancur S├ínchez      |                 1 |    3439275.36
    63111 | Mar├¡a               | Ramos Mar├¡n           |                 1 |    3439034.64
   124719 | Gabriela            | Mora Arango           |                 1 |    3438207.51
    18557 | Elsa Beatriz        | Correa Zuluaga        |                 1 |    3437951.33
    66561 | Diana               | Rojas Benavides       |                 1 |    3437857.15
    88884 | In├®s                | Medina Silva          |                 1 |    3437579.17
    29797 | In├®s                | Pinz├│n Cu├®llar        |                 1 |    3436855.00
    74610 | Jazm├¡n              | Pab├│n Delgado         |                 1 |    3436680.56
    43441 | Edilma              | Zuluaga Montoya       |                 1 |    3435860.90
   144419 | ├ëdgar               | Bonilla Arias         |                 1 |    3435859.96
    78782 | Mario               | Chamorro Tovar        |                 1 |    3435353.15
   102783 | Wilson              | Benavides Pinz├│n      |                 1 |    3433294.79
    44277 | ├ôscar               | Correa Castillo       |                 1 |    3433178.64
    35718 | Fernando            | Vargas Losada         |                 1 |    3432690.62
    46272 | ├üngela              | Parra Ram├¡rez         |                 1 |    3432112.50
    25687 | Abelardo            | V├®lez Bedoya          |                 1 |    3431478.60
   116918 | ├ëdgar Miguel        | Uribe Berm├║dez        |                 1 |    3431214.71
    52001 | Daniel              | Bastidas Su├írez       |                 1 |    3430977.84
    74553 | Jorge               | Parra D├¡az            |                 1 |    3430946.74
    44761 | Fanny               | Castillo Benavides    |                 1 |    3430841.92
    42263 | Sof├¡a               | Duarte Benavides      |                 1 |    3430449.08
    61836 | Adriana             | Cabrera Tovar         |                 1 |    3430096.89
    35885 | Nelson              | Silva Lozano          |                 1 |    3428352.08
    92797 | Jorge Iv├ín          | Contreras Caicedo     |                 1 |    3428319.15
    67939 | Carolina            | Osorio Lasso          |                 1 |    3426987.69
   107493 | Orlando             | Villamizar Lozano     |                 1 |    3425875.59
    25604 | Manuel              | Tovar Rinc├│n          |                 1 |    3425863.49
   116334 | Manuel              | Rinc├│n Chamorro       |                 1 |    3425722.60
    61125 | Andr├®s              | Sandoval Valencia     |                 1 |    3425491.25
    93391 | Jorge Orlando       | Ram├¡rez Arias         |                 1 |    3425207.24
    92787 | In├®s                | Lasso Delgado         |                 1 |    3424640.60
   143459 | Jaime               | Gonz├ílez Barrera      |                 1 |    3422477.40
   134700 | Marleny Valentina   | Mar├¡n Guerrero        |                 1 |    3421142.61
    21665 | Blanca Daniela      | C├íceres Arango        |                 1 |    3419486.00
    70061 | Carmen              | Villamizar Torres     |                 1 |    3417967.80
    88414 | Manuel              | Restrepo Zuluaga      |                 1 |    3417622.99
    66540 | Mario Hernando      | Benavides Restrepo    |                 1 |    3416956.81
   120365 | ├ülvaro              | Duque Jaimes          |                 1 |    3416321.26
   109907 | Juan Abelardo       | Lasso Sandoval        |                 1 |    3416304.54
    49448 | Daniel Wilmer       | Bastidas Restrepo     |                 1 |    3414585.73
    91589 | Anc├¡zar Esteban     | Zuluaga Zuluaga       |                 1 |    3414490.08
    57299 | Leidy Yolanda       | Bedoya Ni├▒o           |                 1 |    3414012.60
   123150 | Efra├¡n              | Cabrera Uribe         |                 1 |    3413193.97
    37353 | Daniela             | Rinc├│n ├ülvarez        |                 1 |    3410962.75
    70616 | Gloria Patricia     | Ni├▒o Giraldo          |                 1 |    3410949.96
   134719 | Fernando            | Arango Ortega         |                 1 |    3410258.01
   148843 | Luis                | Cabrera Zapata        |                 1 |    3409294.30
   111227 | Carlos              | Trujillo Rodr├¡guez    |                 1 |    3409289.89
    91802 | Sof├¡a Edilma        | Betancur V├®lez        |                 1 |    3409265.70
    87682 | Gladys              | P├®rez Castillo        |                 1 |    3407915.42
    74298 | Daniel              | Rinc├│n Londo├▒o        |                 1 |    3407836.41
   119979 | Liliana             | Barrera Burbano       |                 1 |    3407704.41
   132391 | Diana               | R├¡os Sandoval         |                 1 |    3407202.93
    55153 | Mario               | Rodr├¡guez Uribe       |                 1 |    3405796.26
    99085 | Daniela Sara        | Medina D├¡az           |                 1 |    3405761.06
    65117 | Camilo Rafael       | Montoya Mart├¡nez      |                 1 |    3405557.48
    19204 | Pedro               | Torres Mej├¡a          |                 1 |    3405153.05
   138283 | Hernando            | Rodr├¡guez Pe├▒a        |                 1 |    3404166.08
   131769 | Juan                | Arango Bastidas       |                 1 |    3403215.41
   102112 | Wilson              | Osorio Uribe          |                 1 |    3402832.28
    18033 | Gustavo             | Mej├¡a Romero          |                 1 |    3402181.25
    54669 | Alejandro           | Uribe Arango          |                 1 |    3402034.93
     4522 | Hernando ├ëdgar      | C├írdenas Londo├▒o      |                 1 |    3401032.80
   111076 | Ruth                | Barrera Restrepo      |                 1 |    3399090.80
   126887 | Abelardo            | C├íceres Berm├║dez      |                 1 |    3399090.28
   114109 | Gustavo             | Montoya Mora          |                 1 |    3398888.13
   118972 | Luc├¡a               | Zuluaga Rinc├│n        |                 1 |    3398120.00
     6797 | Ramiro              | L├│pez D├¡az            |                 1 |    3397708.86
    15623 | Camilo              | Montoya Ruiz          |                 1 |    3396958.70
    25542 | ├ülvaro Miguel       | Pab├│n Narv├íez         |                 1 |    3394422.49
    52908 | Arturo              | Lozano Galvis         |                 1 |    3392576.07
    64698 | Nelson              | Lasso Londo├▒o         |                 1 |    3391739.44
    90550 | Yolanda Martha      | Romero Calder├│n       |                 1 |    3391670.63
    34363 | Gustavo             | Mu├▒oz Cabrera         |                 1 |    3391553.34
    28840 | Wilson              | Sandoval Betancur     |                 1 |    3390166.57
    19425 | Marcela             | Parra Giraldo         |                 1 |    3390159.04
    63405 | Felipe Antonio      | Rangel Bonilla        |                 1 |    3389961.29
   112837 | Fanny               | Mar├¡n Torres          |                 1 |    3388366.44
     5836 | Guillermo           | Castillo Arias        |                 1 |    3386827.60
   119232 | Valentina Camila    | Delgado Moreno        |                 1 |    3384929.73
    25706 | Hugo                | C├íceres Serrano       |                 1 |    3384379.71
    51122 | Daniela             | Mu├▒oz Moreno          |                 1 |    3384094.80
    58187 | Mercedes            | Hern├índez D├¡az        |                 1 |    3383862.29
    75988 | Luisa               | Valencia Serrano      |                 1 |    3383766.06
   104044 | Natalia             | Pab├│n Moreno          |                 1 |    3383453.50
    34722 | Carmen              | R├¡os Quintero         |                 1 |    3383391.00
   108192 | Liliana             | Garc├¡a Mart├¡nez       |                 2 |    3381756.04
   107921 | Isabella Myriam     | Arias Londo├▒o         |                 1 |    3378910.86
    18634 | Fanny               | Cu├®llar Bastidas      |                 1 |    3377558.88
    96752 | In├®s                | Rangel Zapata         |                 1 |    3377021.10
    26212 | Lorena              | Benavides Rinc├│n      |                 1 |    3376083.34
   135358 | ├üngela              | Jim├®nez Torres        |                 1 |    3376033.59
   110963 | Alberto             | Rodr├¡guez Mu├▒oz       |                 1 |    3374937.27
   103704 | Juliana             | Ram├¡rez Bastidas      |                 1 |    3372660.15
    62746 | Mauricio            | Valencia Chamorro     |                 1 |    3372448.80
   142632 | Emilio              | V├®lez Rodr├¡guez       |                 1 |    3371737.10
    29199 | Hugo                | Lozano Herrera        |                 1 |    3371328.50
    23978 | Daniel              | Pinz├│n V├®lez          |                 1 |    3371247.31
    22038 | ├ülvaro              | Rojas Londo├▒o         |                 1 |    3369316.75
    42126 | ├üngela Carolina     | V├®lez Duque           |                 1 |    3368027.52
    13710 | Abelardo            | Ospina Rodr├¡guez      |                 1 |    3367957.21
    65430 | Sebasti├ín           | Romero Betancur       |                 1 |    3367946.40
    71245 | ├ëdgar               | Molina Mart├¡nez       |                 1 |    3367155.00
   104580 | M├│nica Mar├¡a        | C├íceres Fl├│rez        |                 1 |    3366039.20
   110553 | Leidy               | Prada Agudelo         |                 1 |    3365528.15
   116921 | Manuela             | Restrepo Chamorro     |                 1 |    3364831.43
    34739 | Gloria              | Molina Fl├│rez         |                 1 |    3363762.79
   105065 | Juli├ín              | Jaimes Prada          |                 1 |    3362487.01
     4018 | Dora                | Castro Valencia       |                 1 |    3361744.30
    33145 | Rub├®n               | Rojas Castillo        |                 1 |    3361475.55
    99043 | Arturo Abelardo     | Castro Rodr├¡guez      |                 1 |    3361344.45
   138382 | Gustavo             | Acevedo Parra         |                 1 |    3360693.78
    15338 | Rafael              | Polan├¡a Ram├¡rez       |                 1 |    3359575.02
    15428 | Daniel              | Galvis Acevedo        |                 1 |    3359469.01
    26552 | David               | Rangel G├│mez          |                 1 |    3359413.38
    85257 | Arturo              | V├®lez Medina          |                 1 |    3359342.79
    64595 | Daniel              | Betancur Polan├¡a      |                 1 |    3356603.08
   103676 | Reinaldo Germ├ín     | Barrera Ortega        |                 1 |    3355969.77
    73165 | Teresa Luc├¡a        | Lozano Salazar        |                 1 |    3355794.16
   148403 | Yeison              | Delgado Moreno        |                 1 |    3355466.52
   141538 | Francisco Javier    | Pinz├│n C├íceres        |                 1 |    3355251.04
   125159 | Camilo              | Bonilla Perdomo       |                 1 |    3354391.63
   121576 | Sof├¡a               | Galvis Narv├íez        |                 1 |    3353344.71
   141522 | Jairo               | Mosquera Rojas        |                 1 |    3352860.55
   142452 | Myriam              | Duque Torres          |                 1 |    3352140.00
    53832 | Lorena Laura        | Jaimes Lasso          |                 1 |    3351509.28
   135079 | Javier              | Lasso Jim├®nez         |                 1 |    3351465.33
    71359 | Erika               | Restrepo Rojas        |                 1 |    3350854.52
    42444 | Amparo              | Cu├®llar Chamorro      |                 1 |    3350621.77
   103320 | Lorena Elsa         | ├ülvarez Osorio        |                 1 |    3350616.44
     4910 | Lorena              | Ortega G├│mez          |                 1 |    3349785.32
    14440 | Arturo              | Berm├║dez Arango       |                 1 |    3349617.33
    40382 | Antonio Yeison      | Contreras Pinz├│n      |                 1 |    3349159.12
   130057 | Guillermo           | Mart├¡nez Carrillo     |                 1 |    3348704.70
   149599 | Martha              | Pe├▒a Pe├▒a             |                 1 |    3346917.37
   126614 | Ramiro              | Ortiz Ortega          |                 1 |    3346581.42
    44411 | Carmen              | Pab├│n Arias           |                 1 |    3346155.00
   145149 | Ricardo Anc├¡zar     | Losada Medina         |                 1 |    3345928.17
   128043 | Sandra              | Acevedo Zuluaga       |                 1 |    3345312.60
    73542 | Brayan              | Castro Londo├▒o        |                 1 |    3344590.80
    98105 | Sara Claudia        | Delgado Lozano        |                 1 |    3344452.26
   114015 | Daniela             | Ram├¡rez Jaimes        |                 1 |    3344302.06
    87210 | Ruth                | D├¡az Herrera          |                 1 |    3343412.05
   122841 | Fernando            | Bastidas Prada        |                 1 |    3340169.85
    22332 | Santiago            | C├írdenas Galvis       |                 1 |    3340120.75
     3302 | Leidy M├│nica        | Ortiz Narv├íez         |                 1 |    3338307.00
   131394 | Jaime               | Duque R├¡os            |                 1 |    3337134.17
    16136 | Jairo               | Ram├¡rez Berm├║dez      |                 1 |    3336863.69
    63148 | Edilma In├®s         | Ruiz C├írdenas         |                 1 |    3336785.68
    15277 | Diego               | Carrillo Ruiz         |                 1 |    3335476.44
    78088 | Santiago Arturo     | Berm├║dez Cu├®llar      |                 1 |    3334281.39
    93886 | Manuela             | Jaimes Silva          |                 1 |    3334164.96
    59510 | Iv├ín Andr├®s         | Mart├¡nez Mej├¡a        |                 1 |    3334129.06
   104785 | In├®s                | Ortiz Correa          |                 1 |    3332043.89
   145528 | Alberto             | Garc├¡a Serrano        |                 1 |    3331509.53
   136929 | Leidy               | Delgado Barrera       |                 1 |    3331443.85
   110109 | Gladys Teresa       | Ortiz Ospina          |                 1 |    3330128.58
    51333 | Hugo                | Quintero Bastidas     |                 1 |    3329466.58
   109927 | Emilio              | Guti├®rrez Bonilla     |                 1 |    3326949.52
   130729 | Libardo David       | Salazar Mej├¡a         |                 1 |    3326697.36
   111888 | Stella Nubia        | Serrano Duque         |                 1 |    3326083.04
    55214 | Nicol├ís             | Narv├íez Ortiz         |                 1 |    3325360.00
   100768 | Manuel              | ├ülvarez Mu├▒oz         |                 1 |    3325195.57
    26878 | Yesenia             | Betancur Cardona      |                 1 |    3324535.42
   115919 | Alberto Yeison      | Gonz├ílez Barrera      |                 1 |    3324315.24
   131349 | Alba Manuela        | Cu├®llar Zapata        |                 1 |    3324309.18
    89681 | Jazm├¡n              | Erazo Quintero        |                 1 |    3324029.00
   148093 | Efra├¡n Francisco    | Perdomo Rangel        |                 1 |    3323001.05
   129061 | Alba                | P├®rez Medina          |                 1 |    3321662.75
     7122 | An├¡bal              | Montoya Mej├¡a         |                 1 |    3321146.60
    66234 | Esperanza           | Ortiz ├ülvarez         |                 2 |    3320890.47
   145870 | Olga Edilma         | Ibarra Prada          |                 1 |    3320490.09
   146779 | Claudia Luz         | Ortega Molina         |                 1 |    3320428.02
    14755 | Hernando            | Erazo Ibarra          |                 1 |    3320161.79
    40282 | Jos├®                | Pab├│n Osorio          |                 1 |    3319118.04
   116329 | Felipe              | Berm├║dez L├│pez        |                 1 |    3318577.76
   101875 | Cristian Javier     | Uribe Pab├│n           |                 1 |    3317851.50
     8302 | Sandra Esteban      | Lasso Mart├¡nez        |                 1 |    3317526.26
   125481 | Jaime Iv├ín          | Delgado Serrano       |                 1 |    3317152.76
    52599 | Reinaldo            | Bonilla Rivera        |                 1 |    3316920.75
    67672 | ├ülvaro              | Rangel Bedoya         |                 1 |    3314996.64
    80927 | Rub├®n               | Serrano Salazar       |                 1 |    3314965.09
    74752 | Erika Ruth          | Arias Mart├¡nez        |                 1 |    3314616.14
     3958 | Arturo Rafael       | P├®rez Romero          |                 1 |    3314235.42
    58365 | Claudia             | Garc├¡a Lozano         |                 1 |    3313043.47
    61893 | Javier              | Bedoya Silva          |                 1 |    3311978.85
   115827 | Luisa               | Pinz├│n Contreras      |                 1 |    3311963.20
    85739 | Luis                | Ortega Pe├▒a           |                 1 |    3311822.01
    46316 | Viviana Mariana     | Castro Jaimes         |                 1 |    3310678.56
    18394 | Roc├¡o               | Mar├¡n Molina          |                 1 |    3310277.95
    92729 | Hernando            | Bastidas R├¡os         |                 1 |    3310099.74
   140943 | Gustavo             | Guti├®rrez Parra       |                 1 |    3308906.63
    80386 | Andr├®s              | Romero Torres         |                 1 |    3308336.72
    12213 | M├│nica Rosa         | Bedoya Lozano         |                 1 |    3307850.48
    54832 | Jairo               | Galvis Sandoval       |                 1 |    3307688.79
   121901 | Sebasti├ín           | C├íceres Sandoval      |                 1 |    3307026.78
    46430 | Jairo Sebasti├ín     | Carrillo Villamizar   |                 1 |    3306499.02
    68997 | Felipe              | Castro Duque          |                 1 |    3306114.37
     5430 | Gloria Carmen       | Duque Arias           |                 1 |    3305483.88
    76648 | Laura               | Barrera Mosquera      |                 1 |    3305317.29
   149865 | Andrea              | Serrano D├¡az          |                 1 |    3304965.13
    77233 | Fanny Amparo        | Ruiz Montoya          |                 1 |    3304304.70
   139280 | Claudia             | Mu├▒oz Mora            |                 1 |    3302556.52
   139079 | Carmen              | Uribe Duque           |                 1 |    3301719.68
    40905 | Ruth Cecilia        | Prada Arias           |                 1 |    3301647.67
   113195 | Javier              | Villamizar Mu├▒oz      |                 1 |    3300547.50
    60472 | Daniel Efra├¡n       | Garc├¡a Salazar        |                 1 |    3298588.07
    66386 | Nicol├ís             | Chamorro Caicedo      |                 1 |    3297928.32
    29281 | Sebasti├ín           | Zuluaga Cu├®llar       |                 1 |    3297836.08
   102226 | Luisa               | Lasso Torres          |                 1 |    3296811.87
    95509 | Valentina           | R├¡os Calder├│n         |                 1 |    3296640.72
      860 | Diego ├ëdgar         | C├íceres L├│pez         |                 1 |    3296566.35
    42046 | Santiago            | Delgado Lozano        |                 1 |    3296075.19
   115585 | Camilo              | Parra Acevedo         |                 1 |    3295907.16
   107576 | Luis                | Rangel Ibarra         |                 1 |    3295835.76
    62852 | Diana M├│nica        | ├ülvarez Rodr├¡guez     |                 1 |    3294031.18
   134674 | Gabriela            | Arango Valencia       |                 1 |    3293035.94
    89137 | Fanny               | Mu├▒oz Mar├¡n           |                 1 |    3292707.24
   128259 | Cecilia             | Tovar Hern├índez       |                 1 |    3292075.29
    60144 | Luis Germ├ín         | Caicedo Parra         |                 1 |    3290858.66
    47734 | Carmen Luz          | Chamorro Benavides    |                 1 |    3290717.91
    76514 | Ricardo             | Bonilla Losada        |                 1 |    3289908.96
   114458 | Dora                | Cu├®llar Mart├¡nez      |                 1 |    3289653.42
   134409 | Gabriela Alba       | Cu├®llar Rojas         |                 1 |    3289616.85
   113738 | Fernando            | Molina Giraldo        |                 1 |    3289582.52
   142305 | Liliana             | Trujillo Mar├¡n        |                 1 |    3288965.04
   146164 | Anc├¡zar             | Salazar Serrano       |                 1 |    3287767.27
   116462 | Cecilia Yesenia     | Fl├│rez Sandoval       |                 2 |    3286742.09
    50737 | Martha              | C├íceres Garc├¡a        |                 1 |    3285275.38
    90229 | Manuela             | Herrera Su├írez        |                 1 |    3284910.32
   125725 | Mateo               | Moreno C├írdenas       |                 1 |    3284390.10
    61445 | Samuel              | Jim├®nez Ni├▒o          |                 1 |    3284137.12
   106645 | Jorge               | D├¡az Valencia         |                 1 |    3282952.75
   117766 | Rosa                | Contreras Mej├¡a       |                 1 |    3282468.77
    90513 | Arturo              | Guti├®rrez Rojas       |                 1 |    3281876.19
    76873 | Reinaldo            | Mart├¡nez Jaimes       |                 1 |    3281085.93
    11176 | Amparo Beatriz      | Silva Restrepo        |                 1 |    3280881.24
   141187 | Pedro               | G├│mez Chamorro        |                 1 |    3280717.16
    63455 | Marcela             | Parra Bastidas        |                 1 |    3280569.11
    42359 | Liliana             | Tovar Ortega          |                 1 |    3280103.76
    78840 | Mario               | D├¡az Montoya          |                 1 |    3278569.61
    33780 | Paola Carolina      | Galvis Zuluaga        |                 1 |    3277629.85
   114638 | Santiago            | Parra R├¡os            |                 1 |    3276299.68
    26645 | Yesenia Yuliana     | Osorio Narv├íez        |                 1 |    3274802.08
   110188 | Teresa              | S├ínchez Pinz├│n        |                 1 |    3274765.01
    87530 | Yuliana             | Sandoval Contreras    |                 1 |    3274468.60
    18024 | Mar├¡a               | Rodr├¡guez Castillo    |                 1 |    3273741.90
    99632 | In├®s                | Acevedo Erazo         |                 1 |    3273224.54
    23745 | Stella              | Berm├║dez Valencia     |                 1 |    3272723.91
   112630 | Heriberto Yeison    | Jaimes R├¡os           |                 1 |    3272469.02
   115284 | Mariana Erika       | V├®lez Narv├íez         |                 1 |    3272323.62
   118240 | Daniela             | C├íceres Ram├¡rez       |                 1 |    3272222.10
    26794 | Jaime               | Calder├│n Calder├│n     |                 1 |    3272202.72
    63750 | Pedro               | S├ínchez C├írdenas      |                 1 |    3271199.55
   126952 | ├ôscar               | Quintero Henao        |                 1 |    3270929.84
    99361 | M├│nica              | Berm├║dez Mej├¡a        |                 1 |    3270610.67
     5066 | Santiago            | Cu├®llar Ospina        |                 1 |    3270196.20
   116004 | Daniel              | Lozano Acevedo        |                 1 |    3268180.29
    14144 | Mario               | Silva Berm├║dez        |                 1 |    3267662.58
   102309 | Esteban             | Perdomo Prada         |                 1 |    3265576.70
    12222 | Emilio              | Lasso Mar├¡n           |                 1 |    3265570.97
    12336 | Wilmer              | Acevedo Valencia      |                 1 |    3263968.96
   131901 | Daniel Javier       | V├®lez Castro          |                 1 |    3262932.31
    32763 | Patricia            | Vargas Cabrera        |                 1 |    3261170.19
   116009 | Ramiro              | Berm├║dez Contreras    |                 1 |    3261090.42
   122494 | Miguel              | Gonz├ílez Ortega       |                 1 |    3260029.13
   141873 | Miguel              | Ospina Zuluaga        |                 1 |    3259114.06
     8002 | Mauricio            | Vargas Garc├¡a         |                 1 |    3259071.55
    63823 | Myriam              | Torres Ospina         |                 1 |    3258880.00
    82142 | Jos├®                | Caicedo Su├írez        |                 1 |    3258070.93
   127973 | Nubia               | Mu├▒oz Delgado         |                 1 |    3256443.35
   104118 | Juliana             | Serrano Vera          |                 1 |    3256229.90
     9703 | Adriana             | Henao Mosquera        |                 1 |    3256007.30
    35240 | Erika               | Pab├│n Rinc├│n          |                 1 |    3254119.76
    48624 | Manuel Ramiro       | Ruiz Restrepo         |                 1 |    3251870.56
    66407 | Rub├®n               | Moreno Castro         |                 1 |    3251215.95
    14767 | Gabriela Marleny    | Cu├®llar V├®lez         |                 1 |    3250995.75
   105860 | Laura               | Carrillo Guerrero     |                 1 |    3250877.30
   103201 | Fernando            | Pinz├│n Agudelo        |                 1 |    3250465.08
   133863 | Felipe              | Narv├íez Contreras     |                 1 |    3249086.23
    41836 | Fanny               | Mej├¡a Cardona         |                 1 |    3247827.28
    20268 | Daniel              | Mora Pab├│n            |                 1 |    3247636.42
    91241 | Leidy Adriana       | Contreras Su├írez      |                 1 |    3247477.64
    75325 | H├®ctor              | Cabrera Sandoval      |                 1 |    3247294.10
     9902 | Luis                | Mu├▒oz Contreras       |                 1 |    3245826.39
    36997 | Felipe Orlando      | Rivera Ortega         |                 1 |    3245616.62
    37219 | Valentina Manuela   | Ram├¡rez Lasso         |                 1 |    3245383.38
    11106 | Carolina            | Henao Moreno          |                 1 |    3244720.61
    78848 | Mauricio            | Carrillo Barrera      |                 1 |    3243898.53
   108063 | Carlos              | Zuluaga Villamizar    |                 1 |    3243460.08
   124455 | Yuliana Marleny     | G├│mez Rinc├│n          |                 1 |    3243381.60
    21100 | Mario               | L├│pez Mosquera        |                 1 |    3241820.36
    55790 | Nelson              | Lasso Guerrero        |                 1 |    3241323.52
    13083 | ├ülvaro              | Bedoya S├ínchez        |                 1 |    3240171.76
    22609 | Wilmer              | Benavides Cardona     |                 1 |    3238078.81
   119577 | Marleny             | S├ínchez Pab├│n         |                 1 |    3238011.88
    13801 | Wilson              | Pe├▒a Arias            |                 1 |    3235992.00
    49200 | Nelson              | Pe├▒a V├®lez            |                 1 |    3234453.76
    73464 | Rodrigo             | Mar├¡n Jim├®nez         |                 1 |    3233935.73
    11891 | Yeison              | Mar├¡n Guerrero        |                 1 |    3233720.07
   129105 | Germ├ín              | Losada Vera           |                 1 |    3233448.57
   105377 | Diana Yuliana       | Garc├¡a Erazo          |                 1 |    3231124.39
   117493 | Fanny Ana           | Benavides G├│mez       |                 1 |    3229601.76
   115847 | Wilson              | Henao Cabrera         |                 1 |    3229300.96
    59775 | Fernando            | Mu├▒oz Torres          |                 1 |    3228830.32
    73406 | H├®ctor              | Cardona Ortega        |                 1 |    3227697.92
   140166 | Jairo               | Narv├íez S├ínchez       |                 1 |    3227408.40
   128221 | Alejandra           | Guti├®rrez Mar├¡n       |                 1 |    3226978.13
    23740 | Camilo Germ├ín       | Duarte Pinz├│n         |                 1 |    3226328.01
    99977 | Ricardo             | Guerrero Losada       |                 1 |    3225655.51
    19582 | Alberto             | Mora Lozano           |                 1 |    3225629.62
    70267 | Carlos              | Rojas Rivera          |                 1 |    3225288.26
    73754 | Jairo               | Pe├▒a C├írdenas         |                 1 |    3225153.75
   149726 | Jorge               | Contreras Quintero    |                 1 |    3224658.32
    88544 | Germ├ín              | Mart├¡nez Ramos        |                 1 |    3223901.27
    33921 | Yuliana             | Restrepo Vera         |                 1 |    3223694.28
   113190 | Rub├®n               | Ortega V├®lez          |                 1 |    3223509.21
   148698 | Esteban Mateo       | Restrepo Fl├│rez       |                 1 |    3223062.57
   136236 | Aura Natalia        | Restrepo Garc├¡a       |                 1 |    3222264.15
    78494 | David               | Su├írez Calder├│n       |                 1 |    3221954.91
    36747 | Rodrigo             | Delgado Delgado       |                 1 |    3220158.83
   108577 | Santiago            | Serrano Parra         |                 1 |    3219358.76
     7937 | Marleny             | Vera Cu├®llar          |                 1 |    3219281.96
   113435 | Jazm├¡n Gloria       | Guti├®rrez C├írdenas    |                 1 |    3219170.93
    14360 | Mario               | V├®lez Correa          |                 1 |    3217626.36
   118398 | Diego               | Mora Acevedo          |                 1 |    3217567.49
   111991 | Gustavo             | Medina Carrillo       |                 1 |    3217468.32
    89491 | Yuliana             | Correa Barrera        |                 1 |    3217018.40
   135032 | ├ëdgar               | Montoya Galvis        |                 1 |    3216588.64
    23665 | Camilo              | Ramos Henao           |                 1 |    3216384.87
   141710 | Manuel              | Zapata Carrillo       |                 1 |    3214000.56
    31277 | Sof├¡a               | Garc├¡a Bedoya         |                 1 |    3213851.54
    98769 | Felipe Wilmer       | G├│mez Osorio          |                 1 |    3211033.44
    81634 | Alejandro           | Polan├¡a Losada        |                 1 |    3210913.76
    83067 | Santiago            | Duque Fl├│rez          |                 1 |    3210754.14
   111969 | Elsa                | Restrepo Cabrera      |                 1 |    3210457.32
    88106 | Carlos Gilberto     | Valencia Mu├▒oz        |                 1 |    3209689.55
    44891 | ├ülvaro              | C├írdenas Vargas       |                 1 |    3208151.55
    87614 | Diana               | Lozano Rinc├│n         |                 1 |    3208054.00
   100991 | Cristian Wilmer     | Guti├®rrez Cu├®llar     |                 1 |    3206273.56
    62364 | Blanca              | Ortiz Lozano          |                 1 |    3206084.75
   126400 | ├ôscar               | Silva Benavides       |                 1 |    3205516.44
   125815 | Sof├¡a               | L├│pez Montoya         |                 1 |    3205136.66
    36446 | Samuel Mario        | ├ülvarez Torres        |                 1 |    3205047.00
   149288 | Blanca Edilma       | Uribe Valencia        |                 1 |    3204789.84
    50967 | Laura               | Guerrero Chamorro     |                 1 |    3204361.22
    99738 | Rodrigo             | Restrepo Ramos        |                 1 |    3204339.14
    17790 | Gustavo             | Arias C├írdenas        |                 1 |    3203641.33
   117397 | Camilo Abelardo     | Giraldo Salazar       |                 1 |    3203448.00
   133803 | ├ôscar Hernando      | Duarte Su├írez         |                 1 |    3202762.50
   139458 | Laura               | V├®lez Ruiz            |                 1 |    3202731.07
   134609 | Juan Rafael         | Cabrera Ortega        |                 1 |    3202299.92
    84808 | Andrea Samuel       | Mej├¡a Erazo           |                 1 |    3200849.46
    51134 | Diego Samuel        | Zapata Castro         |                 1 |    3200674.03
   103128 | Anc├¡zar             | Vera Uribe            |                 1 |    3200462.19
   110282 | Yesenia             | R├¡os Ni├▒o             |                 1 |    3200307.84
   139156 | In├®s                | Castillo Rodr├¡guez    |                 1 |    3199444.54
   136874 | Camilo              | Betancur Villamizar   |                 1 |    3198406.49
   104039 | Orlando             | R├¡os Berm├║dez         |                 1 |    3198383.69
   120368 | Roc├¡o               | Ni├▒o Carrillo         |                 1 |    3198121.77
    13436 | Sebasti├ín           | Pinz├│n Ospina         |                 1 |    3197792.79
   112351 | Luz                 | Jim├®nez Benavides     |                 1 |    3197782.87
    82060 | Miguel Anc├¡zar      | Fl├│rez Contreras      |                 1 |    3196914.84
   122567 | Alberto             | Mar├¡n Pab├│n           |                 1 |    3196360.98
   144604 | Carolina            | Contreras Ni├▒o        |                 1 |    3195620.91
    39819 | ├ëdgar               | Serrano Londo├▒o       |                 1 |    3194530.68
   143067 | Juan                | Londo├▒o Mosquera      |                 1 |    3193263.25
    28725 | Daniel              | Vargas Calder├│n       |                 1 |    3192440.82
   120769 | Miguel Rafael       | Ortiz Lasso           |                 1 |    3192420.00
    57261 | Samuel              | Mosquera Hern├índez    |                 1 |    3192231.00
    84477 | Juliana Mercedes    | Mej├¡a Giraldo         |                 1 |    3191477.52
   124622 | Laura               | Mu├▒oz Carrillo        |                 1 |    3191239.17
   109809 | Carolina            | L├│pez Agudelo         |                 1 |    3190550.74
    62174 | Samuel              | Sandoval Lasso        |                 1 |    3190499.82
    99480 | Nelson              | Ni├▒o Silva            |                 1 |    3190404.60
    93196 | Yesenia Patricia    | Giraldo Torres        |                 1 |    3190349.50
    26647 | Nicol├ís             | Rangel Villamizar     |                 1 |    3188987.01
    71809 | Hernando Rafael     | Cu├®llar Quintero      |                 1 |    3188605.14
   117380 | Roc├¡o               | Londo├▒o Serrano       |                 1 |    3188441.12
   141699 | Jos├® Andr├®s         | Caicedo Berm├║dez      |                 1 |    3187180.17
     1677 | Sof├¡a               | Berm├║dez Rinc├│n       |                 1 |    3186457.10
    30534 | Adriana             | Cabrera Caicedo       |                 1 |    3186097.74
   109475 | Efra├¡n              | Garc├¡a Bonilla        |                 1 |    3183630.56
   142775 | Myriam Alejandra    | Giraldo Pe├▒a          |                 1 |    3183290.66
   143596 | Yuliana             | Prada Ram├¡rez         |                 1 |    3183111.45
    35499 | Miguel              | Correa Jim├®nez        |                 1 |    3182306.40
     5098 | Sof├¡a Viviana       | L├│pez Calder├│n        |                 1 |    3180397.92
    57745 | Heriberto           | Su├írez Contreras      |                 1 |    3179850.06
    48396 | Dora                | Cabrera Serrano       |                 1 |    3179755.14
    83103 | Pedro Efra├¡n        | Jaimes Su├írez         |                 1 |    3179163.26
   144904 | Ramiro              | Mart├¡nez Burbano      |                 1 |    3179039.71
   140174 | Roc├¡o               | Moreno Ramos          |                 1 |    3178491.88
   103050 | Jorge               | Narv├íez Castro        |                 1 |    3175154.76
   113245 | Marleny             | Galvis Mosquera       |                 1 |    3174273.18
   133079 | Alejandra Juliana   | Mej├¡a Pinz├│n          |                 1 |    3174186.97
    74261 | Elsa                | C├írdenas Vera         |                 1 |    3174152.65
    11334 | Diana               | Delgado Berm├║dez      |                 1 |    3174086.70
    90576 | Felipe              | Villamizar Lasso      |                 1 |    3173335.68
    65290 | ├üngela Yesenia      | L├│pez Chamorro        |                 1 |    3173222.11
   146035 | Nelson              | Barrera Cu├®llar       |                 1 |    3172675.68
   130571 | Camila              | Henao Rangel          |                 1 |    3170672.37
   118126 | Cristian            | Valencia Perdomo      |                 1 |    3170255.35
    83489 | Fabio Ricardo       | Acevedo Ibarra        |                 1 |    3169276.95
   141531 | Santiago            | Rinc├│n Medina         |                 1 |    3167299.09
   114616 | Jos├®                | Carrillo Zapata       |                 1 |    3167080.17
    53364 | Rafael              | Arias Benavides       |                 1 |    3165764.77
    72498 | Esteban             | Rangel Bastidas       |                 1 |    3162984.70
    82278 | Stella              | D├¡az Ospina           |                 1 |    3162030.80
    63421 | Alba Elsa           | Duarte Cabrera        |                 1 |    3161664.60
   123266 | ├ülvaro              | Rivera C├írdenas       |                 1 |    3161497.98
   126454 | Javier              | Quintero Narv├íez      |                 1 |    3158197.02
    64682 | Sara                | Calder├│n V├®lez        |                 1 |    3157090.23
     5659 | Cristian            | Rojas Bedoya          |                 1 |    3156585.63
   117535 | Alejandro           | Montoya Arias         |                 1 |    3156506.08
    19483 | Nubia               | Cu├®llar Lasso         |                 1 |    3156430.56
    93612 | In├®s                | Galvis Betancur       |                 1 |    3156146.00
   140438 | Viviana             | Villamizar Moreno     |                 1 |    3154873.85
   122941 | Jaime ├ôscar         | Ibarra Galvis         |                 1 |    3154835.52
    12048 | Erika Sandra        | C├íceres Narv├íez       |                 1 |    3154251.31
   104996 | Andr├®s              | Delgado Rivera        |                 1 |    3153396.01
    17934 | Gloria Manuela      | Contreras Trujillo    |                 1 |    3153367.44
    96961 | Brayan Samuel       | Giraldo Gonz├ílez      |                 1 |    3152949.20
   107611 | Camilo              | ├ülvarez Sandoval      |                 2 |    3151465.15
   126408 | Nicol├ís             | Arango R├¡os           |                 1 |    3150837.90
   135784 | Camila              | Lasso Mej├¡a           |                 1 |    3150309.17
     3051 | David               | Rangel Castro         |                 2 |    3149285.31
    60511 | Wilmer              | Rodr├¡guez Jaimes      |                 1 |    3148300.76
    61729 | Diego               | Pe├▒a Mosquera         |                 1 |    3147776.76
    43887 | Yesenia             | Ortiz Hern├índez       |                 1 |    3147155.19
   146825 | H├®ctor Nicol├ís      | Fl├│rez Delgado        |                 1 |    3146612.69
    84293 | Leidy               | Torres Losada         |                 1 |    3146388.10
    94531 | Ricardo             | R├¡os Medina           |                 1 |    3146124.18
   143013 | Orlando             | Giraldo Garc├¡a        |                 1 |    3144892.36
     1896 | Fernando            | Ortiz Cabrera         |                 1 |    3144859.05
    27128 | Antonio Fabio       | Jaimes Rodr├¡guez      |                 1 |    3144473.70
   142556 | ├üngela Edilma       | Prada Rivera          |                 1 |    3144467.70
      290 | Wilson Pedro        | Osorio Perdomo        |                 1 |    3142458.60
    55850 | Liliana Nubia       | Galvis Narv├íez        |                 1 |    3142181.90
    56846 | Fernando            | Bastidas Su├írez       |                 1 |    3141631.96
    81434 | Juli├ín              | Mora Correa           |                 1 |    3141482.86
    43057 | Javier              | Ibarra Jim├®nez        |                 1 |    3140144.28
    26230 | Yolanda Gabriela    | Carrillo Vargas       |                 1 |    3139517.90
    92978 | Wilmer              | Lozano Gonz├ílez       |                 1 |    3139430.43
    77928 | An├¡bal Anc├¡zar      | Correa Bonilla        |                 1 |    3139324.49
    32899 | Gustavo             | Trujillo V├®lez        |                 1 |    3139114.98
   131535 | Pedro               | Hern├índez Calder├│n    |                 1 |    3139064.28
    29476 | Paola               | Cu├®llar Mej├¡a         |                 1 |    3138521.10
     2424 | Jorge               | Acevedo Parra         |                 1 |    3138033.36
    38035 | Rub├®n               | ├ülvarez Berm├║dez      |                 1 |    3137532.39
   135043 | Jairo               | S├ínchez Mosquera      |                 1 |    3137487.15
    18878 | Miguel              | Silva Prada           |                 1 |    3136586.21
   111198 | Diana               | Garc├¡a R├¡os           |                 1 |    3136305.65
    81874 | Manuel              | Lasso Carrillo        |                 1 |    3135283.01
    93596 | Jairo Javier        | Londo├▒o Caicedo       |                 1 |    3135152.38
   127257 | Blanca              | R├¡os Erazo            |                 1 |    3135045.48
     2381 | H├®ctor              | Molina Trujillo       |                 1 |    3134924.65
    14734 | Yolanda             | Arango Cu├®llar        |                 1 |    3134913.76
    26559 | Sara Leidy          | Villamizar Burbano    |                 1 |    3134378.13
    75904 | Rodrigo             | Medina Uribe          |                 1 |    3133770.22
    30706 | Camilo              | G├│mez Garc├¡a          |                 1 |    3133158.15
    53297 | Rafael Gustavo      | Molina Correa         |                 1 |    3132920.00
    62755 | Andrea              | Salazar Gonz├ílez      |                 1 |    3132833.05
    90272 | H├®ctor Jairo        | Medina Erazo          |                 1 |    3131775.49
   105921 | Abelardo            | Bedoya Cabrera        |                 1 |    3131663.11
    37605 | Germ├ín              | Parra Bonilla         |                 1 |    3131554.37
    75604 | Camila              | Ortiz Montoya         |                 1 |    3131419.74
    52670 | Germ├ín              | C├írdenas Jim├®nez      |                 1 |    3130305.07
    15924 | Diego               | Tovar Perdomo         |                 1 |    3129709.99
   108893 | Claudia             | Uribe Romero          |                 1 |    3129374.00
    19960 | Carlos              | Cabrera Ortega        |                 1 |    3129211.07
    88103 | Alejandra           | Pab├│n Salazar         |                 1 |    3129199.75
    42153 | Mariana             | Osorio Ibarra         |                 1 |    3127432.88
    26545 | Paola               | Castillo Fl├│rez       |                 1 |    3127194.29
    51147 | Beatriz Isabella    | Salazar Medina        |                 1 |    3126604.52
    45084 | ├ôscar Alberto       | Ospina Erazo          |                 1 |    3126135.82
    90031 | In├®s                | Ospina Hern├índez      |                 1 |    3124873.64
   114498 | Alejandro           | Villamizar Rodr├¡guez  |                 1 |    3124433.10
      639 | Ruth                | Ni├▒o Ortega           |                 1 |    3124359.96
    34213 | Rodrigo ├ülvaro      | Perdomo Ortiz         |                 1 |    3124326.63
   128952 | Diego               | Bedoya Mej├¡a          |                 1 |    3122834.55
     1486 | Mateo               | Castillo Moreno       |                 1 |    3122163.24
   134363 | Fanny               | Arango Delgado        |                 1 |    3120640.88
    99434 | Nelson Alberto      | Quintero Rinc├│n       |                 1 |    3120525.54
    85962 | Edilma              | Medina R├¡os           |                 1 |    3119986.86
    82420 | Erika               | V├®lez Benavides       |                 1 |    3119746.73
   141706 | Andr├®s Santiago     | Moreno Agudelo        |                 1 |    3119657.43
   109489 | Rodrigo             | Jaimes Benavides      |                 1 |    3118883.40
   108916 | Fabio               | Villamizar Delgado    |                 1 |    3118453.58
    42122 | Santiago Miguel     | Gonz├ílez Lozano       |                 1 |    3115991.02
    84140 | Lorena              | Osorio Mosquera       |                 1 |    3115818.90
    94227 | Ricardo             | Hern├índez Su├írez      |                 1 |    3115686.88
   144644 | Ramiro Rafael       | Burbano Giraldo       |                 1 |    3114443.53
   145812 | Rafael              | Losada Mosquera       |                 1 |    3114102.50
   114328 | Samuel              | Contreras ├ülvarez     |                 1 |    3114051.60
     4335 | Paola               | Parra Ortega          |                 1 |    3113823.42
    38419 | In├®s                | Pab├│n Medina          |                 1 |    3112727.54
   139884 | Stella              | Tovar L├│pez           |                 1 |    3112289.18
    57753 | Abelardo            | Correa Rojas          |                 1 |    3111454.80
    62818 | Nicol├ís             | Fl├│rez Moreno         |                 1 |    3110928.04
     3442 | Carlos              | Cabrera Ramos         |                 1 |    3110882.88
     4999 | Natalia             | Delgado Uribe         |                 1 |    3110604.93
   112299 | Jorge Gilberto      | Jaimes Giraldo        |                 1 |    3110384.64
   136269 | Cristian            | Mora Pe├▒a             |                 1 |    3109527.30
    17095 | Blanca              | D├¡az Mart├¡nez         |                 1 |    3108111.78
   105324 | Sof├¡a               | Ruiz Bedoya           |                 1 |    3107659.51
    71210 | Sandra              | Delgado Gonz├ílez      |                 1 |    3107607.83
    36650 | Adriana             | Losada Polan├¡a        |                 1 |    3107118.43
   137651 | Natalia             | Guerrero Pab├│n        |                 1 |    3106834.47
    57600 | Reinaldo            | Cabrera Losada        |                 1 |    3106376.54
    26633 | Martha              | Losada ├ülvarez        |                 1 |    3105349.68
   106514 | Germ├ín H├®ctor       | Calder├│n Prada        |                 1 |    3104544.79
    41417 | Myriam Roc├¡o        | Su├írez Lozano         |                 1 |    3103744.63
    23779 | Gustavo Miguel      | R├¡os Villamizar       |                 1 |    3102998.13
    64759 | Nicol├ís             | Uribe Rojas           |                 1 |    3102145.24
   130466 | Reinaldo            | C├írdenas Lozano       |                 1 |    3102097.85
   120939 | Olga                | Gonz├ílez Ortega       |                 1 |    3101204.29
   136290 | Antonio             | Herrera Giraldo       |                 1 |    3100978.00
    29217 | Daniel Heriberto    | D├¡az Montoya          |                 1 |    3100448.00
   109549 | Fabio               | Rodr├¡guez P├®rez       |                 1 |    3100207.45
   104952 | ├ülvaro              | Villamizar Correa     |                 1 |    3099286.08
   113882 | Carmen              | Restrepo Medina       |                 1 |    3099264.98
     5726 | H├®ctor              | Garc├¡a Prada          |                 1 |    3099257.89
    64125 | Adriana             | Guti├®rrez Bedoya      |                 1 |    3098910.92
    97433 | Valentina           | Mar├¡n Benavides       |                 1 |    3098494.32
   106932 | Leidy Gladys        | Lasso Carrillo        |                 1 |    3097974.60
    73617 | Marcela             | Pe├▒a Zuluaga          |                 1 |    3096292.44
   118973 | Heriberto Anc├¡zar   | Mej├¡a Ruiz            |                 1 |    3095188.69
   124549 | Diego               | C├íceres Losada        |                 1 |    3094841.68
    53102 | Pedro               | Mej├¡a Mej├¡a           |                 1 |    3094540.68
   135831 | Efra├¡n              | Cu├®llar Moreno        |                 1 |    3094122.40
    90529 | Fanny               | Pinz├│n Perdomo        |                 1 |    3094020.28
    37403 | Olga                | Mej├¡a Mej├¡a           |                 1 |    3092313.80
    96671 | Gustavo             | Narv├íez Arango        |                 1 |    3091716.36
    52817 | Nicol├ís             | Ortega Lasso          |                 1 |    3091421.34
   146000 | Rub├®n               | Tovar Moreno          |                 1 |    3089663.40
   111797 | Laura Erika         | Rivera Vargas         |                 1 |    3089214.11
    55322 | Nicol├ís Brayan      | Arias Osorio          |                 1 |    3089211.84
   149550 | Arturo              | Su├írez Tovar          |                 1 |    3088811.70
    29390 | Marleny             | Parra Agudelo         |                 1 |    3087994.00
    60071 | Jairo Alberto       | Calder├│n Mej├¡a        |                 1 |    3087693.18
    87701 | Wilson              | Uribe Sandoval        |                 1 |    3087457.41
    23959 | Diego               | Montoya Rojas         |                 1 |    3086967.35
   148173 | Myriam              | Rangel P├®rez          |                 1 |    3086778.80
   120197 | Santiago            | Tovar Rangel          |                 1 |    3086022.72
    74029 | H├®ctor              | Torres Ortiz          |                 1 |    3085589.43
    94835 | Gabriela Nelson     | Molina Correa         |                 1 |    3084003.52
    43691 | Jaime               | Ortega Narv├íez        |                 1 |    3083382.45
    58248 | Fabio               | C├írdenas Bonilla      |                 1 |    3082648.80
   112611 | Abelardo Mauricio   | Torres Bedoya         |                 1 |    3079972.50
   142557 | Rodrigo             | C├íceres Jim├®nez       |                 1 |    3079887.65
   110529 | Reinaldo Mateo      | Quintero Zapata       |                 1 |    3079871.50
    22330 | Arturo              | G├│mez Agudelo         |                 1 |    3079606.95
    61602 | Sandra              | Vera Arango           |                 1 |    3079359.36
    16038 | Francisco Emilio    | Osorio Hern├índez      |                 1 |    3079261.08
    52428 | Heriberto           | Londo├▒o Herrera       |                 1 |    3078977.65
     4430 | Wilson Carlos       | Henao Zuluaga         |                 1 |    3078102.70
   120006 | Adriana             | Jim├®nez Correa        |                 1 |    3077664.02
    23533 | Yolanda Manuela     | Bastidas Bastidas     |                 1 |    3077062.56
    62289 | Orlando             | Fl├│rez Barrera        |                 1 |    3076416.12
    54975 | Jazm├¡n              | Barrera ├ülvarez       |                 1 |    3075649.92
   115515 | Heriberto           | Castro P├®rez          |                 1 |    3074560.55
    39949 | Nelson Camilo       | Osorio Pe├▒a           |                 1 |    3073079.14
    62984 | Libardo             | Giraldo Uribe         |                 1 |    3072885.49
     3839 | Samuel              | Henao Betancur        |                 1 |    3072707.30
    84809 | Yeison              | Rodr├¡guez S├ínchez     |                 1 |    3072268.69
    15957 | Libardo             | R├¡os Molina           |                 1 |    3071231.08
   128528 | Leidy               | Giraldo Vera          |                 1 |    3069276.99
    99574 | Carolina            | Duarte Mora           |                 1 |    3069023.79
   114126 | Miguel Wilson       | Lasso Bedoya          |                 1 |    3067192.09
    20195 | Martha              | Giraldo Arango        |                 1 |    3062789.00
     7445 | Esteban             | Ibarra Pab├│n          |                 1 |    3062643.10
   132280 | Emilio              | ├ülvarez Barrera       |                 1 |    3062509.76
     1479 | ├ëdgar Fabio         | Romero Valencia       |                 1 |    3062126.34
    59239 | Camila              | L├│pez Correa          |                 1 |    3061798.76
   121212 | Mario               | Duarte Bedoya         |                 1 |    3061063.58
   110250 | Rafael              | Prada Silva           |                 1 |    3060720.42
    48044 | Emilio              | Trujillo Vera         |                 1 |    3060681.73
    16934 | Natalia Lorena      | Cu├®llar P├®rez         |                 1 |    3059850.70
    28722 | Roc├¡o               | Berm├║dez Uribe        |                 1 |    3059693.20
    51232 | Yeison              | Moreno Jaimes         |                 1 |    3059272.21
    34848 | H├®ctor              | Uribe Burbano         |                 1 |    3058880.02
   124143 | ├üngela              | Guti├®rrez Zuluaga     |                 1 |    3058403.10
   144312 | Carolina            | Delgado Bonilla       |                 1 |    3057090.15
    41620 | Blanca              | Perdomo Rinc├│n        |                 1 |    3057048.89
    25062 | Myriam              | Jim├®nez Montoya       |                 1 |    3054824.77
     3045 | Gloria              | S├ínchez Quintero      |                 1 |    3053324.16
   131928 | Jairo               | Lasso Medina          |                 1 |    3053223.95
    34894 | Juan                | Pab├│n Fl├│rez          |                 1 |    3053044.53
    93501 | Cristian            | Berm├║dez Rangel       |                 1 |    3052811.51
   117179 | Luis Ramiro         | Quintero Garc├¡a       |                 1 |    3052761.89
    50479 | Mateo               | Polan├¡a Molina        |                 1 |    3052664.62
   138019 | Guillermo           | Henao Pab├│n           |                 1 |    3052375.40
    29587 | Stella              | Villamizar Restrepo   |                 1 |    3052001.76
    74478 | Gabriela Camila     | Osorio Trujillo       |                 1 |    3049841.62
    71069 | Hernando Germ├ín     | Chamorro Fl├│rez       |                 1 |    3048376.80
   142004 | Luz                 | Serrano Rivera        |                 1 |    3047733.13
    35611 | Elsa                | Agudelo Polan├¡a       |                 1 |    3047532.44
   116062 | Hugo                | P├®rez Bastidas        |                 1 |    3046533.99
   100106 | Sara                | Cardona Correa        |                 1 |    3046514.92
     7670 | Erika               | Ospina Bedoya         |                 1 |    3045980.10
    98763 | Fabio               | Burbano Medina        |                 1 |    3045238.46
    25671 | Gilberto            | Bastidas Ortega       |                 1 |    3044809.92
     4429 | Santiago            | S├ínchez Ortiz         |                 1 |    3044327.10
    27188 | Gilberto            | Jaimes Rojas          |                 1 |    3039745.01
    19549 | Luis                | Zuluaga Guti├®rrez     |                 1 |    3038898.63
   130508 | H├®ctor              | Osorio Trujillo       |                 1 |    3038651.11
   116673 | Fabio Juli├ín        | Rivera D├¡az           |                 1 |    3038265.36
    61215 | Fanny               | Bonilla Giraldo       |                 1 |    3038071.05
    71639 | Arturo Santiago     | Villamizar Ortiz      |                 1 |    3038049.37
   112533 | Ricardo             | Chamorro Erazo        |                 1 |    3036952.51
    78566 | H├®ctor              | Vargas Herrera        |                 1 |    3034624.58
   106795 | Cristian            | Caicedo Mart├¡nez      |                 1 |    3033974.40
    48870 | Rodrigo             | Valencia Benavides    |                 1 |    3032390.67
    35527 | An├¡bal              | Bedoya Polan├¡a        |                 1 |    3032175.60
    78302 | Amparo              | Gonz├ílez Prada        |                 1 |    3031815.70
    83387 | Paola               | Jim├®nez Guerrero      |                 1 |    3031617.00
    39882 | Miguel              | Burbano Romero        |                 1 |    3030937.56
   119292 | Andr├®s Fernando     | Rojas Agudelo         |                 1 |    3030788.83
     4161 | Juan                | Molina R├¡os           |                 1 |    3030250.72
     3256 | Jos├®                | Ramos Mora            |                 1 |    3029428.29
    12200 | Carlos              | Lozano Ortega         |                 1 |    3029328.00
    91835 | Patricia            | Acevedo Vera          |                 1 |    3029116.00
    41162 | Libardo             | Carrillo C├íceres      |                 1 |    3028073.40
   146797 | Gilberto Nelson     | ├ülvarez Betancur      |                 1 |    3027035.04
    25238 | Samuel              | Mora ├ülvarez          |                 1 |    3026421.27
    51202 | Yeison Rafael       | Delgado Perdomo       |                 1 |    3026309.22
    56002 | Francisco           | Medina R├¡os           |                 1 |    3024589.47
     2916 | Heriberto           | Bedoya Gonz├ílez       |                 1 |    3022668.75
   109535 | Sandra              | Cardona P├®rez         |                 1 |    3021297.73
   147876 | Mariana Laura       | Mosquera Mar├¡n        |                 1 |    3021203.70
    16524 | Rodrigo             | Duarte Zuluaga        |                 1 |    3020573.60
    27989 | Miguel              | Zuluaga Bastidas      |                 1 |    3020243.26
     9226 | Javier              | Contreras Calder├│n    |                 1 |    3018597.30
    70567 | Manuela Mercedes    | Quintero Prada        |                 1 |    3017853.52
    94952 | H├®ctor              | Mar├¡n Rivera          |                 1 |    3017839.48
   147377 | Pedro               | R├¡os Serrano          |                 1 |    3017634.90
    62884 | Patricia            | Galvis Galvis         |                 1 |    3017345.22
    76120 | Francisco           | Carrillo Restrepo     |                 1 |    3017006.45
   149424 | David               | Correa P├®rez          |                 1 |    3016062.42
    79818 | David               | Mej├¡a Ramos           |                 1 |    3015891.09
   115060 | Esperanza           | Trujillo Hern├índez    |                 1 |    3015804.00
    52184 | Daniel              | Caicedo P├®rez         |                 1 |    3015394.14
    75540 | Reinaldo            | R├¡os Ibarra           |                 1 |    3014608.64
    23255 | Wilmer Ramiro       | S├ínchez Ram├¡rez       |                 1 |    3014363.96
    95413 | Mariana             | Galvis Arias          |                 1 |    3014075.87
    29292 | Emilio Rafael       | Rivera Mosquera       |                 1 |    3013644.82
   106964 | Iv├ín Ricardo        | Bastidas Losada       |                 1 |    3013594.37
   148268 | Fernando            | Garc├¡a Prada          |                 1 |    3012878.18
    27983 | ├ôscar               | Uribe Caicedo         |                 1 |    3010853.92
    24604 | Fernando            | Garc├¡a Narv├íez        |                 1 |    3010281.93
   142530 | Luc├¡a Martha        | Bedoya Silva          |                 1 |    3010263.75
   127897 | Olga                | Cabrera Guerrero      |                 1 |    3008276.34
    93765 | Carmen              | Bonilla G├│mez         |                 1 |    3007840.31
     1980 | Ramiro              | Rodr├¡guez Fl├│rez      |                 1 |    3006705.54
    44109 | Sandra              | Duarte Prada          |                 1 |    3006014.96
   104965 | Anc├¡zar             | Medina Quintero       |                 1 |    3005337.62
   110115 | Camilo              | Rodr├¡guez Tovar       |                 1 |    3005337.34
    69615 | Yolanda Sara        | Lasso Jaimes          |                 1 |    3005316.11
    83205 | Fernando Mateo      | Zapata Rivera         |                 1 |    3004556.60
    17985 | Mar├¡a M├│nica        | Correa Vera           |                 1 |    3004022.86
    20133 | Fernando            | Montoya Cabrera       |                 1 |    3003169.33
    77926 | Manuel              | G├│mez V├®lez           |                 1 |    3003132.03
    16872 | Gabriela ├üngela     | Cardona Trujillo      |                 1 |    3002993.56
   124312 | Blanca              | Betancur Pab├│n        |                 1 |    3002004.60
    42595 | Jos├®                | Arango Lasso          |                 1 |    2999993.58
   105930 | Paola               | Carrillo Bastidas     |                 1 |    2999302.95
     4323 | Gilberto            | Rojas R├¡os            |                 1 |    2999114.16
    92750 | Francisco           | Rinc├│n Romero         |                 1 |    2998214.81
    42616 | Francisco           | Ruiz Silva            |                 1 |    2997957.03
    76312 | Emilio              | Erazo Contreras       |                 1 |    2997869.14
   125325 | Aura Gabriela       | Caicedo Guti├®rrez     |                 1 |    2996600.56
    79558 | Nicol├ís             | C├írdenas Garc├¡a       |                 1 |    2995384.15
   144505 | Javier Wilson       | Vargas Arias          |                 1 |    2994987.04
    47035 | Jorge               | Medina Parra          |                 1 |    2994664.27
   120236 | Efra├¡n Ramiro       | Pe├▒a Zuluaga          |                 1 |    2993197.56
   122432 | Samuel              | Duarte Bastidas       |                 1 |    2992698.25
   145113 | Nicol├ís             | Castillo C├írdenas     |                 1 |    2992542.22
    12620 | Ruth                | Mora Mar├¡n            |                 1 |    2992221.68
   124855 | Yuliana             | Tovar C├írdenas        |                 1 |    2992207.53
     7842 | Heriberto           | Bedoya Lozano         |                 1 |    2991745.07
   139671 | Jaime               | Agudelo Rinc├│n        |                 1 |    2991110.25
   126751 | Santiago            | Lozano Berm├║dez       |                 1 |    2990894.88
    39441 | Juliana Ruth        | Lozano Bonilla        |                 1 |    2990365.43
    86312 | Mariana             | Vargas Henao          |                 1 |    2989830.20
     1359 | Arturo Alberto      | Ruiz Cardona          |                 1 |    2989807.00
     7542 | Nelson              | Herrera G├│mez         |                 1 |    2988808.84
    94137 | Alejandro           | Barrera Castro        |                 1 |    2988472.16
      924 | Mauricio            | Calder├│n R├¡os         |                 1 |    2988272.11
   106222 | Miguel Esteban      | Rinc├│n Ospina         |                 1 |    2988031.08
    83213 | Pedro               | Garc├¡a Valencia       |                 1 |    2986798.75
    85364 | Martha              | C├írdenas Delgado      |                 1 |    2986688.08
    55622 | Manuel              | Rangel Chamorro       |                 1 |    2984773.74
    83314 | Luc├¡a               | Uribe Moreno          |                 1 |    2984472.96
    17606 | Ana Jazm├¡n          | P├®rez Jim├®nez         |                 1 |    2983718.42
   138461 | Francisco           | Duarte Delgado        |                 1 |    2983206.51
    51164 | Jairo               | Medina Silva          |                 1 |    2982048.23
   121421 | Gabriela Jazm├¡n     | Correa ├ülvarez        |                 1 |    2980235.19
   135226 | Rosa                | Henao Guti├®rrez       |                 1 |    2980202.39
    81645 | ├ôscar               | Garc├¡a Molina         |                 1 |    2979339.39
   126833 | Gladys              | Vera Ospina           |                 1 |    2978878.14
    20825 | Germ├ín Abelardo     | Polan├¡a Cabrera       |                 1 |    2976610.42
    67253 | Ana Gladys          | Tovar Sandoval        |                 1 |    2976000.30
    59172 | Nelson An├¡bal       | Burbano Perdomo       |                 1 |    2975830.64
    56040 | Viviana             | Osorio Caicedo        |                 1 |    2975616.00
   101870 | Laura               | Delgado V├®lez         |                 1 |    2975441.99
    39655 | Andr├®s              | Ortiz Vargas          |                 1 |    2974705.92
     6662 | Nicol├ís David       | Mar├¡n Ni├▒o            |                 1 |    2972349.99
    90638 | Ramiro              | Mora Montoya          |                 1 |    2971549.00
   140996 | Yolanda             | Medina Zapata         |                 1 |    2970632.34
    74243 | Ricardo Juan        | S├ínchez Castillo      |                 1 |    2970313.28
    14883 | Isabella            | S├ínchez Bonilla       |                 1 |    2968387.48
    55283 | Amparo              | Delgado Serrano       |                 1 |    2968342.40
    17384 | Jorge Antonio       | Calder├│n Quintero     |                 1 |    2967902.48
   121512 | Francisco           | Zapata Castro         |                 1 |    2963457.23
    30743 | Claudia             | Henao Ramos           |                 1 |    2963099.70
    68607 | Natalia Leidy       | Mu├▒oz Hern├índez       |                 1 |    2963030.22
   149299 | Heriberto           | S├ínchez Restrepo      |                 1 |    2962892.92
    55809 | Emilio              | Chamorro Narv├íez      |                 1 |    2961209.37
   140194 | Sof├¡a               | Ibarra Vargas         |                 1 |    2960286.66
    84225 | Esperanza Myriam    | S├ínchez Fl├│rez        |                 1 |    2960101.61
     4154 | Nelson              | G├│mez Salazar         |                 1 |    2956204.02
    94665 | ├ülvaro Samuel       | Vargas V├®lez          |                 1 |    2956052.85
    87659 | H├®ctor              | Silva Pinz├│n          |                 1 |    2955426.28
    42445 | Gabriela            | Perdomo R├¡os          |                 1 |    2955395.15
    26717 | Ricardo             | Cu├®llar Rangel        |                 1 |    2954640.05
    32291 | M├│nica              | Ortega Bonilla        |                 1 |    2954055.78
   138069 | Ana                 | Cabrera Silva         |                 1 |    2953956.00
    66889 | Carlos              | Perdomo Zuluaga       |                 1 |    2953828.33
    78531 | Rodrigo             | Jaimes Molina         |                 1 |    2953316.69
   131953 | Sebasti├ín Gustavo   | Trujillo Silva        |                 1 |    2952585.98
    19674 | Santiago Samuel     | Bastidas Salazar      |                 1 |    2951643.72
    75138 | Efra├¡n              | Agudelo P├®rez         |                 1 |    2950484.39
   126735 | Hugo                | Lozano S├ínchez        |                 1 |    2948672.37
   142690 | Jairo Nicol├ís       | Vargas Pab├│n          |                 1 |    2948426.98
   149487 | Gustavo             | Prada Pe├▒a            |                 1 |    2947783.17
   139996 | Aura                | Medina Londo├▒o        |                 1 |    2947164.27
    10049 | Arturo Hernando     | Molina Benavides      |                 1 |    2946777.96
    56793 | Juan                | Henao Vargas          |                 1 |    2946016.70
    80247 | Juli├ín Javier       | Molina Caicedo        |                 1 |    2945972.07
    34642 | Efra├¡n              | Calder├│n Uribe        |                 1 |    2945795.07
   138000 | Fabio               | Arango Chamorro       |                 1 |    2944975.76
    94661 | Alberto Fernando    | Ram├¡rez Arango        |                 1 |    2943267.48
   139122 | Isabella            | Acevedo Gonz├ílez      |                 1 |    2941101.72
    37936 | Pedro               | Uribe Zuluaga         |                 1 |    2940785.68
   107975 | An├¡bal ├ôscar        | Ram├¡rez Correa        |                 1 |    2940636.21
     4316 | Ana M├│nica          | Arias Cabrera         |                 1 |    2939926.36
   132608 | Wilson              | Moreno Su├írez         |                 1 |    2939089.59
     6130 | Alberto             | C├íceres Benavides     |                 1 |    2938250.23
    50668 | Gabriela            | Garc├¡a Medina         |                 1 |    2937047.04
    90218 | Nelson              | Rojas Cabrera         |                 1 |    2936917.80
    33641 | Mateo H├®ctor        | Ortiz Prada           |                 1 |    2936646.16
    91299 | Diego               | Ruiz Herrera          |                 1 |    2935895.43
    68322 | Jorge Rodrigo       | G├│mez Restrepo        |                 1 |    2934482.41
   101385 | Erika               | Vargas Parra          |                 1 |    2933879.10
   136554 | Olga                | Zuluaga V├®lez         |                 1 |    2932487.87
    26614 | Pedro Santiago      | Moreno Losada         |                 1 |    2932277.81
    80238 | Samuel              | Su├írez Guerrero       |                 1 |    2932122.86
    30271 | Claudia Olga        | Vera Rojas            |                 1 |    2931716.48
   124933 | Gustavo             | C├írdenas Ni├▒o         |                 1 |    2931217.12
    62681 | Jairo               | Ramos Herrera         |                 1 |    2931201.48
    16845 | Alberto             | Agudelo Bedoya        |                 1 |    2930972.04
    56348 | Sebasti├ín           | Giraldo Pinz├│n        |                 1 |    2930539.92
   122644 | ├ëdgar               | Bonilla Bedoya        |                 1 |    2930385.43
    80846 | Fabio               | Castro Guerrero       |                 1 |    2930246.89
    52201 | Sebasti├ín           | Rangel Vera           |                 1 |    2930131.20
    60982 | Mariana             | Parra Carrillo        |                 1 |    2928876.52
   142148 | Sebasti├ín           | Chamorro Moreno       |                 1 |    2927889.60
   103558 | Felipe              | Guti├®rrez Pe├▒a        |                 1 |    2926879.85
    76105 | Antonio             | Ram├¡rez Giraldo       |                 1 |    2925364.64
    72209 | Jaime               | Hern├índez ├ülvarez     |                 1 |    2924996.94
   149935 | Jazm├¡n              | Erazo Betancur        |                 1 |    2924952.16
    27307 | Nelson              | Polan├¡a Serrano       |                 1 |    2924193.00
    41240 | Teresa              | Contreras Arias       |                 1 |    2923593.68
    74685 | Jaime               | Berm├║dez Correa       |                 1 |    2922681.55
    95835 | Emilio              | Sandoval Uribe        |                 1 |    2922480.00
    27501 | Yolanda             | Sandoval Londo├▒o      |                 1 |    2920941.52
    38287 | Jos├® Guillermo      | Mosquera Lasso        |                 1 |    2920340.65
    33988 | Efra├¡n              | Hern├índez Jim├®nez     |                 1 |    2919970.80
    93006 | Olga                | Ospina Londo├▒o        |                 1 |    2919677.45
    88853 | Jazm├¡n              | Cardona Betancur      |                 1 |    2918908.21
   118142 | Adriana             | Castro Correa         |                 1 |    2918826.06
   136908 | Libardo             | Zuluaga Tovar         |                 1 |    2918543.67
    38497 | Yuliana             | Calder├│n Ortiz        |                 1 |    2918515.30
    48835 | Fernando            | Serrano Torres        |                 1 |    2916867.00
    33367 | M├│nica              | V├®lez Rivera          |                 1 |    2914963.13
    47099 | Sebasti├ín           | Mosquera Uribe        |                 1 |    2911714.90
   120144 | Leidy               | Osorio Bastidas       |                 1 |    2911509.90
    24109 | Santiago            | Henao Montoya         |                 1 |    2908575.87
    44104 | Miguel              | Losada Molina         |                 1 |    2908341.96
   116332 | Mar├¡a               | Ortiz Acevedo         |                 1 |    2907838.44
    85757 | Efra├¡n ├ôscar        | Perdomo Fl├│rez        |                 1 |    2907448.91
     1650 | Manuela             | Cardona Erazo         |                 1 |    2905599.60
    92673 | Laura Amparo        | Ibarra Trujillo       |                 1 |    2904966.12
    94416 | Fanny               | Caicedo Mora          |                 1 |    2904008.90
   142701 | Heriberto Guillermo | D├¡az R├¡os             |                 1 |    2903825.60
   115524 | Alejandro           | Losada Mej├¡a          |                 1 |    2903394.65
    25735 | Gustavo             | Perdomo Losada        |                 1 |    2902691.13
    68619 | Daniel              | Rivera Carrillo       |                 1 |    2901868.34
   137851 | Daniela             | Montoya Narv├íez       |                 1 |    2901045.78
    25799 | Felipe              | Sandoval Mar├¡n        |                 1 |    2900463.16
    19175 | Stella              | P├®rez Fl├│rez          |                 1 |    2899859.81
   117459 | Hernando Miguel     | Pinz├│n Delgado        |                 1 |    2899482.63
    60137 | Beatriz             | Molina Ruiz           |                 1 |    2899412.60
   144185 | Javier              | Arango Zapata         |                 1 |    2898956.20
     2429 | Javier              | Mu├▒oz Jaimes          |                 1 |    2898747.35
    77728 | Yeison              | Jaimes Ibarra         |                 1 |    2898516.15
    17714 | Rafael              | Jim├®nez Mosquera      |                 1 |    2895886.98
    84511 | Mario               | Duque Contreras       |                 1 |    2895302.96
    88959 | Stella Isabella     | Sandoval Castillo     |                 1 |    2894031.63
    34541 | ├ôscar               | Molina Parra          |                 1 |    2893549.82
   120285 | Carmen Sof├¡a        | Guti├®rrez Ortega      |                 1 |    2892630.23
   134936 | Samuel              | Carrillo Mej├¡a        |                 1 |    2892627.92
    77226 | ├ëdgar               | Mosquera Rangel       |                 1 |    2892605.60
   110946 | Iv├ín An├¡bal         | Tovar Correa          |                 1 |    2891917.45
    64982 | Francisco Wilson    | Chamorro Arango       |                 1 |    2891602.74
   131667 | Olga Martha         | Carrillo Perdomo      |                 1 |    2890758.75
    42228 | Juli├ín              | R├¡os Barrera          |                 1 |    2890155.63
    71514 | Nelson Carlos       | Duque Pinz├│n          |                 1 |    2888563.16
    72458 | ├ôscar               | Fl├│rez Hern├índez      |                 1 |    2885563.42
    72511 | Juli├ín              | Prada Romero          |                 1 |    2884859.95
    62973 | Marleny             | Montoya Ortega        |                 1 |    2882371.13
     2913 | Camilo              | Tovar Jaimes          |                 1 |    2882072.14
    91211 | Mauricio            | Ni├▒o Benavides        |                 1 |    2881706.86
   134662 | Gladys              | Narv├íez Galvis        |                 1 |    2881047.72
    60834 | Nicol├ís             | Vargas Duarte         |                 1 |    2879476.08
    60883 | Reinaldo            | Delgado Rinc├│n        |                 1 |    2879262.64
   105847 | Nelson              | Restrepo Vera         |                 1 |    2879155.28
    65068 | Rafael              | Polan├¡a Correa        |                 1 |    2878723.97
    20472 | Mateo               | Delgado Lasso         |                 1 |    2877234.71
    52176 | Alejandro Fabio     | Gonz├ílez ├ülvarez      |                 1 |    2873429.12
    79107 | Gladys Edilma       | Mart├¡nez Prada        |                 1 |    2872594.04
    53823 | Rub├®n               | Ramos Chamorro        |                 1 |    2868749.43
    57801 | Cecilia             | Vera Jim├®nez          |                 1 |    2866029.36
   130533 | Camila Rosa         | Giraldo Betancur      |                 1 |    2865545.82
     3539 | Antonio             | Castro ├ülvarez        |                 1 |    2865466.09
   136148 | Ana                 | Mart├¡nez Mosquera     |                 1 |    2865397.50
    94886 | Mercedes            | Bastidas Rivera       |                 1 |    2865396.24
       58 | Gilberto            | ├ülvarez Gonz├ílez      |                 1 |    2863909.69
   111286 | Germ├ín Alberto      | Jim├®nez Ram├¡rez       |                 1 |    2862534.44
   133919 | Diana Stella        | Acevedo Salazar       |                 1 |    2862028.92
   106549 | Yolanda             | Ruiz Caicedo          |                 1 |    2861017.89
    56947 | Juan Mateo          | Lozano Gonz├ílez       |                 1 |    2860395.47
   103685 | Arturo              | Arango Jim├®nez        |                 1 |    2859562.80
    58652 | Rub├®n               | Pinz├│n Perdomo        |                 1 |    2859273.48
   134678 | Hugo                | Losada Berm├║dez       |                 1 |    2858639.16
   144827 | Ana                 | Villamizar Cabrera    |                 1 |    2858131.98
    74616 | Blanca Yolanda      | Villamizar Fl├│rez     |                 1 |    2858026.69
    19562 | Martha              | Erazo Agudelo         |                 1 |    2857980.49
   129857 | In├®s                | D├¡az Contreras        |                 1 |    2857920.78
    89770 | Reinaldo            | Salazar Chamorro      |                 1 |    2857050.64
     3277 | Patricia            | Hern├índez Medina      |                 1 |    2855300.77
    66440 | Paola Myriam        | Restrepo Burbano      |                 1 |    2853839.25
    61734 | Jos├®                | Jaimes Polan├¡a        |                 1 |    2852986.24
   133060 | Juli├ín              | Erazo Agudelo         |                 1 |    2851143.75
    26664 | Yuliana Viviana     | Benavides Mu├▒oz       |                 1 |    2848935.10
   144598 | Elsa                | Guti├®rrez Duarte      |                 1 |    2847713.85
   101671 | H├®ctor Hugo         | Serrano Carrillo      |                 1 |    2847232.37
    76133 | Carlos H├®ctor       | L├│pez Serrano         |                 1 |    2846375.80
    97120 | Daniel              | Londo├▒o C├írdenas      |                 1 |    2845926.24
    78104 | Laura Teresa        | Torres Carrillo       |                 1 |    2845203.67
   148986 | Diego               | Arango Ortiz          |                 1 |    2844693.90
    53085 | Pedro               | S├ínchez Calder├│n      |                 1 |    2843565.66
    16623 | Olga                | Pe├▒a Carrillo         |                 1 |    2843308.65
    65154 | Alejandro           | Ni├▒o Ni├▒o             |                 1 |    2841894.03
   138913 | Samuel              | Burbano Galvis        |                 1 |    2840255.87
    40641 | Yolanda             | Restrepo Arias        |                 1 |    2840252.50
   102266 | Nicol├ís             | L├│pez Pe├▒a            |                 1 |    2839930.16
    42303 | Ricardo             | Pe├▒a ├ülvarez          |                 1 |    2839903.36
    37516 | Esperanza           | Lasso L├│pez           |                 1 |    2839684.75
   120466 | Germ├ín Jairo        | Jaimes Lasso          |                 1 |    2839095.22
    93557 | Antonio Manuel      | C├írdenas Fl├│rez       |                 1 |    2838280.96
   110734 | Gloria Luc├¡a        | Romero Calder├│n       |                 1 |    2836398.13
    72895 | Nicol├ís             | Restrepo Tovar        |                 1 |    2836396.01
    44525 | Efra├¡n              | Rojas Acevedo         |                 1 |    2836377.66
     9811 | Camilo              | Mora Ni├▒o             |                 1 |    2834785.44
    55183 | Camilo Fabio        | Herrera Vera          |                 1 |    2833387.14
    89684 | Carolina            | Caicedo Delgado       |                 1 |    2833257.61
   107918 | Nicol├ís Ricardo     | Ortega Silva          |                 1 |    2833210.35
     3471 | Rub├®n               | Moreno Ospina         |                 1 |    2830574.11
    34828 | Gilberto Ricardo    | Quintero R├¡os         |                 1 |    2830143.62
   126077 | Santiago            | Berm├║dez Rinc├│n       |                 1 |    2829298.16
    42591 | Jairo               | Moreno Ram├¡rez        |                 1 |    2829203.72
   117256 | Wilmer              | Cabrera Delgado       |                 1 |    2829012.78
     7601 | Rafael Ramiro       | Mosquera C├írdenas     |                 1 |    2828788.38
   132056 | Isabella            | Cardona Ruiz          |                 1 |    2828370.16
   146471 | Dora                | Vargas Garc├¡a         |                 1 |    2827724.15
    39848 | Jairo ├ülvaro        | Herrera Prada         |                 1 |    2827536.56
    86003 | Blanca Luz          | Ram├¡rez Burbano       |                 1 |    2824428.51
     9544 | Juliana             | P├®rez Fl├│rez          |                 1 |    2822785.74
    68332 | Sof├¡a               | Molina Ruiz           |                 1 |    2822731.38
    71959 | Leidy               | Ospina Ramos          |                 1 |    2822406.00
    89048 | Arturo              | Moreno Garc├¡a         |                 1 |    2820935.85
    32409 | Brayan              | Moreno Prada          |                 1 |    2819732.03
   135360 | Myriam              | Trujillo Restrepo     |                 1 |    2818714.98
   100155 | Andrea Luz          | Mora Bonilla          |                 1 |    2818004.16
    47141 | Juan                | G├│mez Mu├▒oz           |                 1 |    2817076.72
     6823 | Andrea              | Duque Vargas          |                 1 |    2816954.14
    31997 | Brayan              | Mora V├®lez            |                 1 |    2816644.50
    40944 | Paola               | Sandoval Betancur     |                 2 |    2813020.18
    32823 | Gabriela            | Quintero Ospina       |                 1 |    2812425.28
    24198 | Luis                | Cardona Barrera       |                 1 |    2811388.14
    93025 | Liliana             | R├¡os Mu├▒oz            |                 1 |    2811279.39
    67183 | Santiago            | Torres Betancur       |                 1 |    2811230.28
   143943 | Wilson              | Cabrera Ospina        |                 1 |    2810965.40
    24610 | An├¡bal Diego        | Salazar Guerrero      |                 1 |    2809767.30
   104443 | Pedro               | Pinz├│n Ram├¡rez        |                 1 |    2807425.95
    22445 | Samuel              | Arango Mosquera       |                 1 |    2806409.08
    17235 | Rodrigo             | Mu├▒oz Betancur        |                 1 |    2805442.78
    89705 | Dora                | Vera Guti├®rrez        |                 1 |    2800960.56
   101732 | Jaime               | Narv├íez Henao         |                 1 |    2800509.26
    63371 | Orlando David       | R├¡os Osorio           |                 1 |    2798514.00
    49842 | Ruth                | ├ülvarez Arango        |                 1 |    2796898.65
    11800 | Lorena              | Mu├▒oz Valencia        |                 1 |    2795984.52
   106830 | Ricardo Reinaldo    | Trujillo Quintero     |                 1 |    2795545.46
    21564 | Laura               | Mora Henao            |                 1 |    2795282.28
    26610 | Alejandro           | Montoya Garc├¡a        |                 1 |    2794908.91
    74682 | Mateo               | Villamizar Vargas     |                 1 |    2794170.50
   115955 | Diego               | Ortega Mar├¡n          |                 1 |    2790248.23
    62778 | Pedro               | Vargas Torres         |                 1 |    2789884.20
    99686 | Rosa Andrea         | Fl├│rez Benavides      |                 1 |    2789126.47
   101950 | Fernando Juli├ín     | D├¡az ├ülvarez          |                 1 |    2788607.28
   134622 | Wilson Esteban      | Sandoval Bedoya       |                 1 |    2788128.18
   130840 | Dora                | Giraldo Delgado       |                 1 |    2786843.84
   130262 | Ramiro              | P├®rez Ortiz           |                 1 |    2786791.68
    11440 | Luz                 | Pab├│n Benavides       |                 1 |    2785801.22
    97095 | Daniel              | Giraldo R├¡os          |                 1 |    2785637.05
      437 | Anc├¡zar             | Villamizar Mart├¡nez   |                 1 |    2785595.73
    22699 | Francisco Carlos    | Salazar Acevedo       |                 1 |    2785259.38
    78338 | Sara                | Ortiz Castillo        |                 1 |    2784399.81
    74304 | Abelardo            | D├¡az P├®rez            |                 1 |    2783033.71
   120843 | ├üngela              | Henao Betancur        |                 1 |    2782684.41
    98317 | Paola               | Ortiz Berm├║dez        |                 1 |    2781474.10
    72366 | Mariana             | Bastidas Quintero     |                 1 |    2780727.60
    52297 | Mauricio            | Zuluaga Londo├▒o       |                 1 |    2779324.80
    61147 | Iv├ín                | Ramos Montoya         |                 1 |    2778314.84
   140626 | Reinaldo            | Ram├¡rez Bedoya        |                 1 |    2777813.45
   136786 | Alejandro           | Hern├índez Narv├íez     |                 1 |    2777083.03
    57662 | Martha              | Arias Ramos           |                 1 |    2776163.41
   109958 | Sara                | Rangel Calder├│n       |                 1 |    2775777.12
   105846 | Camila              | Perdomo Pe├▒a          |                 1 |    2774862.24
    36693 | Samuel              | Bonilla Ruiz          |                 1 |    2774439.40
    85854 | ├ëdgar               | Cabrera ├ülvarez       |                 1 |    2773306.69
   126536 | Francisco           | Quintero Arias        |                 1 |    2772292.35
   112756 | Diana               | Zuluaga Quintero      |                 1 |    2772009.68
    83415 | Jorge               | Narv├íez Ni├▒o          |                 1 |    2770556.77
    85631 | Samuel Rafael       | Perdomo Londo├▒o       |                 1 |    2770413.82
   120165 | Javier              | L├│pez Montoya         |                 1 |    2769466.52
   107426 | Erika Ana           | Cabrera Fl├│rez        |                 1 |    2769429.01
    23042 | Mario               | Cabrera C├íceres       |                 1 |    2768426.10
   120570 | Efra├¡n              | Prada Rodr├¡guez       |                 2 |    2766998.63
    99560 | ├ôscar               | Montoya Ospina        |                 1 |    2766171.30
   104831 | Marleny             | Caicedo Prada         |                 1 |    2766164.91
    41642 | Mercedes            | Caicedo Valencia      |                 1 |    2765828.39
   121869 | Ana                 | Su├írez Montoya        |                 1 |    2765703.82
     2086 | Isabella            | Cardona Vera          |                 1 |    2764864.71
   133087 | H├®ctor              | Rivera Mar├¡n          |                 1 |    2764089.09
    62875 | Yeison              | Acevedo Castillo      |                 1 |    2763276.60
    24209 | Alejandra ├üngela    | Rojas Osorio          |                 1 |    2762754.28
   117950 | Guillermo           | Ibarra Contreras      |                 1 |    2762018.71
    89606 | Yesenia             | Erazo Gonz├ílez        |                 1 |    2760752.61
    83877 | Miguel              | D├¡az Jaimes           |                 2 |    2759279.06
    36793 | Sebasti├ín           | Mar├¡n Rojas           |                 1 |    2757962.35
   145483 | Aura                | Sandoval Trujillo     |                 1 |    2757834.30
   102980 | Rafael              | Gonz├ílez Castro       |                 1 |    2756757.55
    15342 | Fanny               | S├ínchez Rangel        |                 1 |    2755234.10
    85317 | Ramiro Pedro        | Ramos Guti├®rrez       |                 1 |    2755145.35
   136581 | Rafael              | Benavides P├®rez       |                 1 |    2754364.14
    69291 | Yesenia Rosa        | Betancur Herrera      |                 1 |    2754151.60
   149822 | Esteban Antonio     | Villamizar Garc├¡a     |                 1 |    2754076.97
    39070 | Lorena              | Burbano Agudelo       |                 1 |    2753287.12
   135965 | Teresa              | Guti├®rrez Narv├íez     |                 1 |    2752319.40
    79278 | ├üngela              | Arias Polan├¡a         |                 1 |    2750235.71
    30972 | Santiago Carlos     | Ibarra Chamorro       |                 1 |    2744645.14
   127603 | Luisa               | Betancur Duque        |                 1 |    2744589.11
    84839 | Mariana Esperanza   | Rangel Rinc├│n         |                 1 |    2744494.08
   113649 | Gladys              | Betancur Losada       |                 1 |    2743964.58
    53136 | Jairo               | Torres Zuluaga        |                 1 |    2742289.00
   126172 | Javier Diego        | Trujillo Duque        |                 1 |    2741888.18
    90902 | Heriberto Iv├ín      | Rojas Bedoya          |                 1 |    2740349.10
    31470 | Cristian            | Guti├®rrez Pab├│n       |                 1 |    2739447.65
    57540 | Dora                | Fl├│rez Valencia       |                 1 |    2738956.35
   108592 | Camilo              | Valencia Gonz├ílez     |                 1 |    2738772.00
   119015 | Liliana             | Castillo Garc├¡a       |                 1 |    2738370.40
   124812 | Anc├¡zar             | Benavides Cardona     |                 1 |    2738157.62
    33340 | Mateo               | Barrera Sandoval      |                 1 |    2736044.60
     2717 | Samuel Anc├¡zar      | Ni├▒o Giraldo          |                 1 |    2735145.10
     2473 | Libardo             | Moreno Arias          |                 1 |    2733303.48
   110559 | Santiago            | Henao Betancur        |                 1 |    2733198.70
    44766 | Gilberto            | Narv├íez Castro        |                 1 |    2732470.20
    34806 | Natalia Lorena      | Cu├®llar Parra         |                 1 |    2731962.86
    50056 | Leidy               | Serrano Castro        |                 1 |    2731438.31
     3223 | Pedro               | Rangel C├íceres        |                 1 |    2730750.90
   102963 | Juli├ín              | Delgado Correa        |                 1 |    2730682.81
    31970 | Libardo             | Pab├│n Bonilla         |                 1 |    2730027.49
    80134 | Ricardo             | Caicedo Mart├¡nez      |                 1 |    2729852.53
    63272 | Yesenia             | Jaimes Mosquera       |                 1 |    2728998.46
   131852 | Natalia Laura       | R├¡os Mar├¡n            |                 1 |    2727895.17
    77294 | Rosa                | Osorio Duarte         |                 1 |    2727668.58
     1062 | Sof├¡a               | ├ülvarez Bedoya        |                 1 |    2727507.29
     4479 | Sandra              | D├¡az Mart├¡nez         |                 1 |    2727116.55
    84724 | Diego               | Bedoya Tovar          |                 1 |    2725740.90
   143415 | Orlando             | Chamorro Lozano       |                 1 |    2723514.07
   113672 | Cristian            | Jim├®nez Jaimes        |                 1 |    2722899.84
    26417 | Roc├¡o Claudia       | Salazar Jim├®nez       |                 1 |    2722714.86
    93800 | Luz                 | Bonilla Salazar       |                 1 |    2722464.00
   124231 | Iv├ín                | Quintero Medina       |                 1 |    2721440.89
    58194 | Rafael Sebasti├ín    | Mej├¡a Silva           |                 1 |    2721352.47
   149921 | Juan                | Berm├║dez Quintero     |                 1 |    2719797.51
    22325 | Mar├¡a               | Vargas Henao          |                 1 |    2719402.56
    69289 | Manuel              | Mar├¡n Pinz├│n          |                 1 |    2716438.36
    71902 | Gustavo Reinaldo    | Ortiz Delgado         |                 1 |    2712962.11
   107190 | Wilson Emilio       | Molina Calder├│n       |                 1 |    2712919.19
    59252 | Alejandra           | Zapata Caicedo        |                 2 |    2712900.27
    46268 | Reinaldo            | Castillo Betancur     |                 1 |    2711906.30
   115627 | Antonio             | Romero Zuluaga        |                 1 |    2710808.64
    87673 | Antonio             | Vera Cu├®llar          |                 1 |    2710687.65
    95125 | H├®ctor              | Duque Valencia        |                 1 |    2710620.46
    37636 | Mercedes            | Mar├¡n Lozano          |                 1 |    2710097.54
     2939 | Gilberto Gustavo    | D├¡az Mu├▒oz            |                 1 |    2709518.96
     6590 | Esteban Orlando     | Contreras Ortiz       |                 1 |    2705673.76
    18857 | Rosa                | Valencia Bastidas     |                 1 |    2705606.38
    12185 | Sandra              | Ram├¡rez Bastidas      |                 1 |    2705332.23
    71197 | Ricardo             | Mora C├íceres          |                 1 |    2704190.55
   141848 | Mercedes            | Ospina Pinz├│n         |                 1 |    2703049.20
     8052 | Ricardo             | Valencia Berm├║dez     |                 1 |    2702935.14
   149377 | Jairo               | Fl├│rez Parra          |                 1 |    2702908.27
    64019 | ├üngela              | Zuluaga Mora          |                 1 |    2702580.22
     9692 | Roc├¡o Blanca        | Ortiz Silva           |                 1 |    2701327.85
   149900 | Ana Gabriela        | Arango Pe├▒a           |                 1 |    2700653.37
    37449 | Sandra              | Narv├íez Uribe         |                 1 |    2698422.00
    82593 | Jaime ├ôscar         | Restrepo Bastidas     |                 1 |    2697004.49
    20976 | Dora                | Duarte Barrera        |                 1 |    2696311.80
    26747 | Daniela             | Cabrera Uribe         |                 1 |    2695529.20
    61427 | Jorge               | G├│mez P├®rez           |                 1 |    2694260.06
    80507 | ├ëdgar               | D├¡az Ram├¡rez          |                 1 |    2694189.96
    11215 | Andrea              | Restrepo Ibarra       |                 1 |    2693999.97
     6110 | Cecilia             | Acevedo Pinz├│n        |                 1 |    2693140.36
     7010 | Leidy               | Arango D├¡az           |                 1 |    2692872.65
    49116 | Beatriz             | Perdomo Berm├║dez      |                 1 |    2691579.90
     5785 | Esperanza Teresa    | Osorio Guti├®rrez      |                 1 |    2690836.02
    84530 | Alba                | Ospina Polan├¡a        |                 1 |    2690573.74
    96921 | Amparo              | C├íceres S├ínchez       |                 1 |    2689993.02
   143042 | Abelardo            | Gonz├ílez Cardona      |                 1 |    2689942.28
    73564 | Ramiro              | Correa Rangel         |                 1 |    2689707.74
    26675 | Carlos Santiago     | Lozano Contreras      |                 1 |    2689511.40
    58216 | Liliana             | Tovar Ortiz           |                 1 |    2689441.69
   136170 | Gilberto            | Torres Barrera        |                 1 |    2688167.61
     4064 | Stella Marcela      | Lasso Caicedo         |                 1 |    2687585.34
    72127 | Mercedes            | Salazar Prada         |                 1 |    2687399.10
    47745 | Ramiro              | Jaimes Henao          |                 1 |    2687386.27
    81505 | Sof├¡a               | Tovar Gonz├ílez        |                 1 |    2686679.21
    20792 | Manuel              | Polan├¡a Ortega        |                 1 |    2685457.53
    34531 | ├ülvaro              | Mosquera Barrera      |                 1 |    2682634.56
    51613 | Jos├®                | Contreras Arango      |                 1 |    2681957.25
    33669 | Dora                | D├¡az Valencia         |                 1 |    2681486.10
    14752 | Diego               | C├írdenas Berm├║dez     |                 1 |    2680591.20
   131150 | Manuel              | Correa Gonz├ílez       |                 1 |    2680568.84
    15288 | Viviana In├®s        | Bastidas D├¡az         |                 1 |    2679866.80
   142928 | Isabella            | Cabrera Delgado       |                 1 |    2678981.58
    71034 | Santiago            | Bedoya Perdomo        |                 1 |    2678271.02
     9953 | Martha              | C├íceres Cu├®llar       |                 1 |    2678112.32
    92851 | ├ülvaro Mario        | Su├írez Vargas         |                 1 |    2676872.55
    81176 | Carmen              | Prada Rivera          |                 1 |    2675534.71
    21084 | Gloria Gladys       | Rodr├¡guez Carrillo    |                 1 |    2675019.96
    23041 | Yeison Andr├®s       | Castro Chamorro       |                 1 |    2674546.42
   107104 | Mauricio            | Guti├®rrez Mej├¡a       |                 1 |    2674518.44
    28366 | Liliana             | Jim├®nez Castro        |                 1 |    2674480.02
    74044 | Patricia Erika      | Vargas Arango         |                 1 |    2672681.22
    13772 | M├│nica In├®s         | Narv├íez Vera          |                 1 |    2672610.26
    43990 | Gloria              | Chamorro Parra        |                 1 |    2671564.16
    53504 | Alba H├®ctor         | Lozano Uribe          |                 1 |    2671428.16
   141835 | Gabriela            | Vargas L├│pez          |                 1 |    2671225.86
   127216 | Heriberto           | Osorio Salazar        |                 1 |    2670787.14
    26200 | Alberto             | Ortiz Ortega          |                 1 |    2669223.13
    74269 | Samuel Francisco    | Guerrero Parra        |                 1 |    2669087.75
    47119 | Yeison              | Arias Restrepo        |                 1 |    2669051.15
   118101 | Hugo                | Lasso Romero          |                 1 |    2668499.10
    16618 | Olga                | V├®lez Rojas           |                 1 |    2667847.64
    25220 | Gloria M├│nica       | Ram├¡rez Serrano       |                 1 |    2664668.52
   111516 | Luisa M├│nica        | Calder├│n Rangel       |                 1 |    2664150.21
    69471 | Wilson              | Jim├®nez C├íceres       |                 1 |    2662205.74
   117241 | An├¡bal              | Benavides R├¡os        |                 1 |    2661545.33
    73441 | David               | G├│mez P├®rez           |                 1 |    2659938.79
    19980 | Gustavo             | Duarte Ramos          |                 1 |    2659569.30
   115761 | Jaime Santiago      | Giraldo Mu├▒oz         |                 1 |    2658229.25
    81047 | Heriberto           | Calder├│n Rinc├│n       |                 1 |    2656742.35
   145168 | H├®ctor ├ülvaro       | Silva ├ülvarez         |                 1 |    2656476.78
   134494 | Andr├®s              | Betancur Hern├índez    |                 1 |    2654953.12
   119323 | Viviana             | Ram├¡rez Vera          |                 1 |    2654494.44
    46302 | ├ülvaro              | Hern├índez Ruiz        |                 1 |    2653648.10
     6957 | Marleny             | Rivera Prada          |                 1 |    2652689.83
     6550 | Sandra              | Mosquera Ni├▒o         |                 1 |    2652556.94
    27719 | Diego               | Agudelo Pinz├│n        |                 1 |    2652344.44
   113330 | Amparo              | Duque Castillo        |                 1 |    2650212.16
   134819 | Cristian            | Caicedo Arias         |                 1 |    2649697.10
    86483 | Lorena              | Polan├¡a Giraldo       |                 1 |    2649584.44
    54227 | Patricia            | Mart├¡nez Londo├▒o      |                 1 |    2648766.66
    57119 | Edilma              | Valencia Duque        |                 1 |    2648619.90
    14040 | Myriam Leidy        | Berm├║dez Rinc├│n       |                 1 |    2648460.60
     9277 | Sebasti├ín Emilio    | Jaimes Rodr├¡guez      |                 1 |    2648244.08
    20057 | Patricia            | ├ülvarez Quintero      |                 1 |    2647187.55
    48082 | Jaime               | Acevedo Fl├│rez        |                 1 |    2645964.72
   127085 | Alba                | Mu├▒oz Torres          |                 1 |    2645789.34
   111130 | Mar├¡a Javier        | C├írdenas Garc├¡a       |                 1 |    2645618.62
    96501 | Manuela Lorena      | Tovar D├¡az            |                 1 |    2645215.68
      516 | Guillermo Juli├ín    | Castro Mosquera       |                 1 |    2641211.70
   112282 | Diana               | Rojas Osorio          |                 1 |    2641129.92
   130767 | Leidy               | Castillo Ni├▒o         |                 1 |    2640991.82
   102899 | Manuel              | Acevedo Cardona       |                 1 |    2640026.09
    42229 | Jorge               | Benavides Mu├▒oz       |                 1 |    2639751.94
    66007 | Fabio               | Agudelo Tovar         |                 1 |    2639447.16
    71177 | Amparo              | Delgado Bonilla       |                 1 |    2637561.28
    57506 | Carlos              | Pinz├│n Giraldo        |                 1 |    2637302.05
    75211 | Luis                | Duarte R├¡os           |                 1 |    2634058.94
    43434 | Yuliana             | Barrera Valencia      |                 1 |    2634008.30
    45110 | Ana ├üngela          | Contreras P├®rez       |                 1 |    2632525.98
    70279 | ├ôscar Samuel        | Caicedo Quintero      |                 1 |    2632093.75
    64794 | Manuela             | Lozano Garc├¡a         |                 1 |    2631156.88
   106883 | Carmen              | Mosquera Cardona      |                 1 |    2631099.75
    63434 | Gustavo             | Bastidas Pab├│n        |                 1 |    2630113.63
    10516 | Jazm├¡n Sof├¡a        | Vera V├®lez            |                 1 |    2628873.78
    22450 | Libardo             | Bastidas Guti├®rrez    |                 1 |    2627566.92
   145439 | Jos├®                | Giraldo ├ülvarez       |                 1 |    2625590.79
    71226 | Carmen              | Arango Berm├║dez       |                 1 |    2624538.88
    88057 | Jairo               | Mej├¡a Erazo           |                 1 |    2624438.46
   128564 | Miguel              | Tovar P├®rez           |                 1 |    2623503.70
    45147 | Fanny               | Rangel Erazo          |                 1 |    2622375.89
    79114 | Marcela             | Bedoya Pab├│n          |                 1 |    2621914.97
    43254 | Arturo Miguel       | Ospina Guti├®rrez      |                 1 |    2621582.88
    92047 | Efra├¡n              | Fl├│rez Caicedo        |                 1 |    2621384.85
    53413 | Mauricio            | Ramos Polan├¡a         |                 1 |    2621347.92
   135767 | Alberto             | Londo├▒o Hern├índez     |                 1 |    2621088.10
    23586 | Stella              | Mar├¡n Mart├¡nez        |                 1 |    2619785.36
    20313 | Guillermo           | Berm├║dez D├¡az         |                 1 |    2617783.73
    88869 | Daniel              | Henao Zapata          |                 1 |    2616912.32
   117302 | Luisa               | Bedoya Guti├®rrez      |                 1 |    2616687.86
     1853 | Aura                | Valencia Bastidas     |                 1 |    2616402.34
    22357 | Rub├®n               | Giraldo Polan├¡a       |                 1 |    2616244.58
   145622 | Fernando            | Mosquera Uribe        |                 1 |    2615929.47
   109424 | Daniela             | Ibarra Calder├│n       |                 1 |    2615626.67
    99594 | David               | Agudelo Restrepo      |                 1 |    2615503.65
    68909 | Daniel              | Ospina Ram├¡rez        |                 1 |    2615219.75
     6084 | Sof├¡a               | Parra Pe├▒a            |                 1 |    2614713.42
    56718 | ├üngela              | Silva Pe├▒a            |                 1 |    2613832.07
    80686 | Sandra              | Giraldo Arias         |                 1 |    2613369.36
    61682 | Miguel              | Serrano Sandoval      |                 1 |    2613203.18
   134812 | Nelson              | Henao Prada           |                 1 |    2612170.22
    80603 | ├ôscar               | Garc├¡a Valencia       |                 1 |    2611933.72
    42412 | Mar├¡a               | Quintero Agudelo      |                 1 |    2611309.03
   149877 | Heriberto           | Prada V├®lez           |                 1 |    2610366.46
    39747 | Anc├¡zar             | Rojas R├¡os            |                 1 |    2610198.01
    70370 | Jaime               | D├¡az Rinc├│n           |                 1 |    2608411.83
    30303 | Wilmer              | Torres Acevedo        |                 1 |    2607816.70
    32944 | Luisa               | Vera Calder├│n         |                 1 |    2606717.76
    42685 | Antonio             | Rinc├│n C├íceres        |                 1 |    2606081.52
   119924 | Rub├®n               | Jim├®nez Chamorro      |                 1 |    2605915.00
   141576 | Dora                | Benavides L├│pez       |                 1 |    2604117.76
   138607 | Mauricio            | Castillo D├¡az         |                 1 |    2602652.68
    63997 | Wilson              | Chamorro Molina       |                 1 |    2602020.41
    60183 | Alberto             | Bastidas C├íceres      |                 1 |    2601029.75
   128471 | Juli├ín Guillermo    | Mart├¡nez Giraldo      |                 1 |    2599872.12
    70424 | Anc├¡zar Libardo     | Betancur Serrano      |                 1 |    2599821.69
    17974 | Fabio               | Su├írez Tovar          |                 1 |    2599333.22
   112238 | Manuela Camila      | Molina Duarte         |                 1 |    2596707.41
    81630 | Emilio              | Jaimes Pab├│n          |                 1 |    2596041.22
    82062 | Juli├ín Orlando      | Arango Guerrero       |                 1 |    2595446.52
   130939 | Felipe Ricardo      | Perdomo Losada        |                 1 |    2594802.31
   131798 | Fabio Rafael        | Burbano Jim├®nez       |                 1 |    2593064.16
   136626 | Rub├®n               | Mosquera Mart├¡nez     |                 1 |    2590372.40
    42731 | Orlando Cristian    | Arias Rodr├¡guez       |                 1 |    2589799.88
    26078 | Alejandra Erika     | R├¡os Contreras        |                 1 |    2588184.52
   141563 | Mateo               | Losada Arango         |                 1 |    2587774.72
   147572 | Cecilia             | Ortiz Uribe           |                 1 |    2586293.60
   126783 | Alejandra           | Lasso Acevedo         |                 1 |    2585285.64
    54722 | Gustavo             | ├ülvarez Lasso         |                 1 |    2583681.63
    83733 | Nicol├ís             | Castillo Herrera      |                 1 |    2582918.59
    48347 | ├üngela              | Quintero Galvis       |                 1 |    2580558.14
   143429 | Diana               | Silva C├íceres         |                 1 |    2579587.20
   114089 | Abelardo            | C├íceres Hern├índez     |                 1 |    2579414.93
     4516 | Elsa                | Guerrero D├¡az         |                 1 |    2578670.94
   124426 | Alberto             | Rinc├│n Rangel         |                 1 |    2578583.50
    94502 | Pedro Mauricio      | Mart├¡nez Ortega       |                 1 |    2577616.40
   124787 | H├®ctor              | Carrillo R├¡os         |                 1 |    2577454.08
    92112 | ├ôscar               | Contreras Uribe       |                 1 |    2576402.80
    93710 | Jorge               | ├ülvarez Bonilla       |                 1 |    2575557.47
    65590 | Cecilia             | Vera Rivera           |                 1 |    2575336.60
   116239 | Viviana             | D├¡az Perdomo          |                 1 |    2574780.84
    10552 | Edilma              | Henao Barrera         |                 1 |    2574555.04
   117100 | Cristian            | Arango Parra          |                 1 |    2572875.74
    71635 | Libardo Wilmer      | Salazar Gonz├ílez      |                 1 |    2572869.20
   137513 | Liliana Yesenia     | Vera Guti├®rrez        |                 1 |    2572596.36
    71713 | Samuel Juan         | S├ínchez Su├írez        |                 1 |    2571350.05
    95504 | Juli├ín              | Tovar Duarte          |                 1 |    2570652.40
    87520 | Javier              | Caicedo Guti├®rrez     |                 1 |    2569110.60
    22825 | Pedro               | Ram├¡rez Mej├¡a         |                 1 |    2568575.14
   147147 | Rosa                | Galvis Carrillo       |                 1 |    2568050.01
    19059 | Stella              | Uribe Ospina          |                 1 |    2567645.70
    95470 | Juli├ín Nelson       | S├ínchez Cardona       |                 1 |    2567616.26
    12607 | Andr├®s Sebasti├ín    | Ortiz Salazar         |                 1 |    2567025.60
    80241 | Isabella            | Mar├¡n Salazar         |                 1 |    2565739.50
    49258 | Marleny             | Barrera Erazo         |                 1 |    2565218.00
   106423 | Mar├¡a               | Moreno Mosquera       |                 1 |    2563764.76
   146792 | Gilberto            | Garc├¡a Bastidas       |                 1 |    2562913.18
    29972 | Rafael              | Rivera Arias          |                 1 |    2562452.07
    39440 | Abelardo            | Perdomo Galvis        |                 1 |    2562413.92
     4839 | Cristian            | Londo├▒o Mosquera      |                 1 |    2561523.80
   108287 | Abelardo            | Ram├¡rez Correa        |                 1 |    2560539.24
    17579 | Teresa              | Jim├®nez Acevedo       |                 1 |    2560204.80
     2601 | Yolanda             | Montoya Silva         |                 1 |    2559693.62
   142284 | M├│nica              | Tovar L├│pez           |                 1 |    2559098.50
   137669 | Pedro               | Mu├▒oz Mu├▒oz           |                 1 |    2559078.01
    44536 | Mercedes            | Moreno Duarte         |                 1 |    2557975.07
    14808 | An├¡bal              | Romero Fl├│rez         |                 1 |    2557671.80
   131244 | Abelardo            | Ospina Polan├¡a        |                 1 |    2556878.45
    28086 | In├®s                | Parra Salazar         |                 1 |    2556550.38
    64026 | Marcela             | Bastidas Sandoval     |                 1 |    2555511.24
    91178 | An├¡bal              | Losada Mar├¡n          |                 1 |    2555504.56
    22259 | Arturo              | Contreras Hern├índez   |                 1 |    2554305.36
    22854 | Ruth                | Perdomo Calder├│n      |                 1 |    2554279.49
      513 | Fabio               | Mu├▒oz Zapata          |                 1 |    2553456.24
   149650 | Mario               | Zapata Henao          |                 1 |    2553104.35
     7991 | Rafael              | R├¡os Lasso            |                 1 |    2552717.64
    60484 | Wilmer              | Quintero Cabrera      |                 1 |    2552496.43
    50183 | ├ülvaro Pedro        | Gonz├ílez Restrepo     |                 1 |    2552462.38
    49789 | Cecilia             | Pe├▒a Mart├¡nez         |                 1 |    2551575.51
   118638 | Pedro               | Serrano Erazo         |                 1 |    2550986.48
    75882 | Anc├¡zar             | Hern├índez Erazo       |                 1 |    2550953.04
    88001 | Elsa                | Jim├®nez Losada        |                 1 |    2549011.81
    56925 | Elsa                | Vargas Benavides      |                 1 |    2548882.50
     3744 | Daniel              | Bastidas Mosquera     |                 1 |    2548360.08
    58568 | Diana               | Mej├¡a Contreras       |                 1 |    2547804.38
    11838 | Fanny               | Serrano Guerrero      |                 1 |    2547524.88
    51245 | Hernando            | Narv├íez Hern├índez     |                 1 |    2546917.41
   124367 | Andr├®s              | Osorio Torres         |                 1 |    2544686.65
   148596 | Juliana             | Betancur Bedoya       |                 1 |    2543976.75
     6303 | Camila              | Berm├║dez V├®lez        |                 1 |    2543912.35
   134849 | Andr├®s Yeison       | Parra Mar├¡n           |                 1 |    2543700.89
    44917 | Carlos Nicol├ís      | P├®rez Uribe           |                 1 |    2543270.40
    61906 | Wilson              | Cardona R├¡os          |                 1 |    2541795.28
    69161 | Jazm├¡n              | Serrano P├®rez         |                 1 |    2541566.30
   134117 | Andrea              | Medina Agudelo        |                 1 |    2536740.90
    30008 | Daniela             | Carrillo S├ínchez      |                 1 |    2536436.87
   135428 | Felipe              | Benavides Losada      |                 1 |    2536126.00
   142705 | Erika               | Berm├║dez Molina       |                 1 |    2535412.35
   138205 | Abelardo            | Duarte Carrillo       |                 1 |    2535408.85
    80881 | Blanca              | Pinz├│n Osorio         |                 1 |    2534269.98
    87646 | Olga                | Barrera Correa        |                 1 |    2533804.32
    53623 | Elsa                | Calder├│n Mej├¡a        |                 1 |    2532669.29
   102878 | Jaime Miguel        | Parra Moreno          |                 1 |    2532468.68
   143718 | Luisa               | Trujillo ├ülvarez      |                 1 |    2529829.18
    31851 | Hugo Brayan         | L├│pez Castro          |                 1 |    2529676.44
    46021 | Fernando Arturo     | Ram├¡rez Parra         |                 1 |    2527581.98
    82526 | Felipe Rafael       | Erazo Hern├índez       |                 1 |    2527236.46
    76702 | Gabriela Aura       | D├¡az L├│pez            |                 1 |    2526472.26
    82388 | Claudia Manuela     | Pab├│n Zuluaga         |                 1 |    2526399.12
   109888 | Fabio               | Molina Ramos          |                 1 |    2525792.61
   148055 | Natalia             | Salazar Erazo         |                 1 |    2525543.46
    19642 | Andrea              | Fl├│rez Ram├¡rez        |                 1 |    2525366.40
    92646 | Daniel              | Ortiz Torres          |                 1 |    2524309.82
    59253 | Rosa Gabriela       | Jaimes Trujillo       |                 1 |    2523506.04
    32923 | Abelardo            | Salazar Gonz├ílez      |                 1 |    2523143.62
    58267 | Edilma              | Sandoval Rinc├│n       |                 1 |    2522084.04
   125271 | Ricardo             | Rinc├│n Jaimes         |                 1 |    2522032.52
    97420 | Paola               | Herrera Erazo         |                 1 |    2521790.28
    23481 | Sebasti├ín           | Guerrero Benavides    |                 1 |    2521615.93
   102643 | Nubia Erika         | S├ínchez Narv├íez       |                 1 |    2520511.26
   148848 | Alejandro           | Torres Burbano        |                 1 |    2518548.16
   135307 | Paola               | Mu├▒oz Ortega          |                 1 |    2518520.62
    16512 | Juli├ín              | Ibarra Narv├íez        |                 1 |    2518222.96
   124264 | Mercedes            | Romero Serrano        |                 1 |    2517860.31
     2122 | Yesenia             | Osorio L├│pez          |                 1 |    2516961.92
    47317 | Dora                | Ramos Delgado         |                 1 |    2516208.00
   112123 | Myriam M├│nica       | Barrera Polan├¡a       |                 1 |    2515994.77
   129698 | Manuel              | Ospina Quintero       |                 1 |    2515269.70
    81014 | Antonio             | Cabrera Jaimes        |                 1 |    2514802.68
    49692 | Mercedes            | Osorio Rodr├¡guez      |                 1 |    2514204.60
    66926 | Amparo Juliana      | Romero Tovar          |                 1 |    2513341.05
    72893 | Liliana             | Su├írez L├│pez          |                 1 |    2513263.55
    61062 | Heriberto Fernando  | Salazar Jaimes        |                 1 |    2513152.16
    55952 | Rafael              | Zuluaga Ortiz         |                 1 |    2512427.28
   110279 | Yeison              | Villamizar Carrillo   |                 1 |    2512274.28
    36075 | Manuel              | Losada Tovar          |                 1 |    2511932.29
    32723 | Samuel              | Losada Vargas         |                 1 |    2511607.10
    29656 | Esperanza In├®s      | Correa Mosquera       |                 1 |    2509309.62
   124667 | Teresa Sof├¡a        | Villamizar Garc├¡a     |                 1 |    2509058.83
    66126 | Antonio             | Ortiz Garc├¡a          |                 1 |    2508982.15
    86984 | Luisa               | Zuluaga Barrera       |                 1 |    2508695.01
    98387 | Yuliana             | Torres Mosquera       |                 1 |    2508629.92
    18182 | Mar├¡a               | Ibarra Torres         |                 1 |    2507698.80
    60226 | Esteban             | Quintero Rinc├│n       |                 1 |    2505942.90
    25371 | Nelson              | Londo├▒o C├íceres       |                 1 |    2505902.40
   117988 | Myriam              | Burbano Erazo         |                 1 |    2501741.97
   143555 | Mercedes            | Zapata Caicedo        |                 1 |    2501522.96
   112150 | Wilson              | Benavides S├ínchez     |                 1 |    2501311.68
    74733 | Marcela             | Quintero Carrillo     |                 1 |    2501276.58
   100493 | Daniela             | Serrano Rodr├¡guez     |                 1 |    2500532.32
   126801 | Myriam              | Rodr├¡guez Jaimes      |                 1 |    2499284.00
   109449 | Cristian            | C├íceres Pab├│n         |                 1 |    2499212.40
    88762 | Isabella            | Bastidas Mar├¡n        |                 1 |    2498370.34
    92218 | Amparo              | Arias Trujillo        |                 1 |    2497514.08
    94164 | Alberto             | Pinz├│n Rojas          |                 1 |    2497153.85
    64246 | Sandra              | Galvis Chamorro       |                 1 |    2496752.46
    52805 | Samuel              | Benavides Correa      |                 1 |    2496045.86
    16139 | Pedro               | Salazar Duque         |                 1 |    2495823.80
     8005 | Esperanza           | Ram├¡rez Vera          |                 1 |    2495328.00
   123653 | Carolina Aura       | Arango S├ínchez        |                 1 |    2493239.66
    11884 | Esperanza           | Vargas C├íceres        |                 1 |    2491441.80
    95120 | An├¡bal              | Herrera Betancur      |                 1 |    2490515.72
    45395 | Hernando Rodrigo    | Galvis Mora           |                 1 |    2490393.60
    25740 | Juliana             | Caicedo Villamizar    |                 1 |    2490196.41
    37902 | Marcela             | Ramos Castillo        |                 1 |    2489919.96
     6553 | Alejandro           | Mosquera Jaimes       |                 1 |    2489224.43
     6301 | Diego Rafael        | Ortega Narv├íez        |                 1 |    2488573.63
    51772 | Jairo               | Hern├índez Torres      |                 1 |    2488418.01
    59701 | Luis                | Narv├íez Giraldo       |                 1 |    2487757.03
   134172 | Gilberto Carlos     | Polan├¡a Molina        |                 1 |    2487527.25
    75287 | An├¡bal              | Bonilla D├¡az          |                 1 |    2486962.35
    16202 | Beatriz Cecilia     | Fl├│rez Agudelo        |                 1 |    2486707.08
   132463 | Gabriela            | Bastidas Bedoya       |                 1 |    2485824.39
   113480 | Sara                | Ruiz Lasso            |                 1 |    2484560.57
    67545 | Ramiro              | Vargas Burbano        |                 1 |    2484493.57
   107049 | Luis                | Guerrero Ram├¡rez      |                 1 |    2484178.62
    65645 | Myriam              | Ruiz Henao            |                 1 |    2484013.98
    90372 | Germ├ín              | Prada Gonz├ílez        |                 1 |    2483577.60
   149522 | Juliana Viviana     | Mu├▒oz Ni├▒o            |                 1 |    2483444.80
    98817 | Daniela             | Castillo Bastidas     |                 1 |    2483424.28
    24369 | Marleny Daniela     | Osorio Villamizar     |                 1 |    2483169.08
    55410 | Mauricio            | L├│pez Trujillo        |                 1 |    2482303.26
     7561 | Anc├¡zar             | Jaimes Ramos          |                 1 |    2482099.32
    39660 | Yuliana             | Medina Agudelo        |                 1 |    2482068.05
   102119 | Samuel              | Ramos Parra           |                 1 |    2481782.90
   146699 | Roc├¡o               | Benavides Pab├│n       |                 1 |    2479601.41
   133617 | Fernando Gustavo    | Parra Moreno          |                 1 |    2478863.45
   113576 | Paola               | G├│mez Zuluaga         |                 1 |    2477041.92
    42668 | Fernando            | R├¡os Polan├¡a          |                 1 |    2476998.00
    73195 | Javier              | Parra Barrera         |                 1 |    2475512.96
    38052 | Gilberto ├ëdgar      | Serrano Restrepo      |                 1 |    2475241.00
   134950 | Yeison Camilo       | Lasso Serrano         |                 1 |    2474741.16
   103076 | Manuela             | Rodr├¡guez Parra       |                 1 |    2471931.84
    84518 | Samuel              | Narv├íez Mosquera      |                 1 |    2471657.97
   130771 | Santiago Rodrigo    | Henao S├ínchez         |                 1 |    2471477.20
   136678 | Rafael Gustavo      | Calder├│n Agudelo      |                 1 |    2470991.77
   121827 | Yeison              | Ruiz Acevedo          |                 1 |    2470850.08
    22194 | Samuel Guillermo    | Uribe Prada           |                 1 |    2470772.50
    47001 | Nicol├ís             | L├│pez Cu├®llar         |                 1 |    2470693.31
   138754 | David               | Rangel Caicedo        |                 1 |    2470663.21
    98364 | Pedro               | Mej├¡a Jaimes          |                 1 |    2470436.58
    42878 | Carolina            | Mar├¡n Lozano          |                 1 |    2470080.04
   101313 | Diego Gustavo       | Rivera Carrillo       |                 1 |    2469461.17
    59242 | Carolina Diana      | C├íceres Chamorro      |                 1 |    2468896.20
   117410 | Rodrigo Sebasti├ín   | Mosquera Sandoval     |                 1 |    2468826.10
   122827 | Sof├¡a               | Pab├│n Castillo        |                 1 |    2468076.80
     8946 | Mar├¡a               | L├│pez Ortega          |                 1 |    2466849.49
   138582 | Mauricio An├¡bal     | Caicedo Parra         |                 1 |    2465308.56
   126040 | Samuel              | Gonz├ílez Ni├▒o         |                 1 |    2465195.88
    41917 | Samuel              | Guti├®rrez Benavides   |                 1 |    2464105.44
    53921 | Manuela             | Molina Correa         |                 1 |    2463866.24
    75779 | Esteban             | Silva V├®lez           |                 1 |    2463781.37
    43707 | Luisa               | Giraldo Mosquera      |                 1 |    2463678.80
   145737 | Pedro Samuel        | Contreras Correa      |                 1 |    2463453.62
    73336 | Olga                | Ibarra Arango         |                 1 |    2463078.75
   140164 | Mariana             | Henao Molina          |                 1 |    2462596.00
   114205 | Gustavo             | Barrera Ortiz         |                 1 |    2462543.67
    32235 | Juliana             | Agudelo Narv├íez       |                 1 |    2462503.88
      780 | Alejandra Roc├¡o     | Parra Bonilla         |                 1 |    2462093.01
   129367 | Samuel              | Prada Romero          |                 1 |    2461200.00
    60632 | Ricardo             | Villamizar Polan├¡a    |                 1 |    2460883.60
     5068 | Adriana Myriam      | Delgado Garc├¡a        |                 1 |    2460744.15
   114977 | Mercedes            | S├ínchez Castro        |                 1 |    2460288.29
    56647 | Ruth                | Cu├®llar Losada        |                 1 |    2460267.27
   126343 | Santiago            | V├®lez Herrera         |                 1 |    2456888.99
    77212 | Abelardo            | Rojas Losada          |                 1 |    2456284.63
    28291 | Rafael              | Osorio Zapata         |                 1 |    2455876.39
   116947 | In├®s                | Vargas P├®rez          |                 1 |    2455536.22
    29708 | Luz                 | Pab├│n Caicedo         |                 1 |    2455502.40
   147400 | Libardo Jos├®        | Guti├®rrez Polan├¡a     |                 1 |    2455073.24
    94744 | Rodrigo             | Romero Osorio         |                 1 |    2454715.50
     1970 | Jairo               | P├®rez Rojas           |                 1 |    2453348.61
    70891 | Esteban             | Burbano Tovar         |                 1 |    2452545.00
   105328 | Manuel              | Lozano Rodr├¡guez      |                 1 |    2451764.70
    50388 | Nelson              | V├®lez Cabrera         |                 1 |    2450854.41
   103041 | Brayan              | Hern├índez Romero      |                 1 |    2450661.55
    64065 | Reinaldo            | Serrano Burbano       |                 1 |    2448644.06
    67747 | Alba                | Narv├íez Bedoya        |                 1 |    2448636.00
   120871 | Marleny             | Losada Contreras      |                 1 |    2447770.12
    71589 | Hugo                | Ospina Erazo          |                 1 |    2447642.19
    91513 | Sebasti├ín Emilio    | Arango Mora           |                 1 |    2446389.24
   146834 | Jorge               | Zapata C├írdenas       |                 1 |    2446055.68
    77894 | Reinaldo Heriberto  | Mar├¡n Bonilla         |                 1 |    2445397.17
    18274 | Esteban             | Benavides Fl├│rez      |                 1 |    2445128.16
      222 | Stella              | ├ülvarez Parra         |                 1 |    2444854.42
   141724 | Alberto             | Osorio Ramos          |                 1 |    2443884.38
   118573 | Iv├ín                | Galvis Cardona        |                 1 |    2442981.10
    31353 | Rosa                | Serrano Rinc├│n        |                 1 |    2442085.78
    47917 | Liliana             | Erazo Ram├¡rez         |                 1 |    2441886.50
    36936 | Juliana             | D├¡az Caicedo          |                 1 |    2441865.02
   130142 | Jorge               | Cu├®llar Erazo         |                 1 |    2441189.16
    82288 | Mar├¡a               | Barrera C├írdenas      |                 1 |    2439621.26
    40170 | In├®s                | S├ínchez Su├írez        |                 1 |    2439024.44
    58306 | Jazm├¡n              | Cardona Montoya       |                 1 |    2439017.62
    89725 | Orlando             | Herrera Moreno        |                 1 |    2438688.70
   142935 | Fabio               | Londo├▒o Giraldo       |                 1 |    2437959.04
    39593 | Diego Iv├ín          | Montoya Benavides     |                 1 |    2437818.42
   128385 | Diego               | Trujillo Arias        |                 1 |    2436002.52
    83983 | Amparo              | Osorio Betancur       |                 1 |    2435723.52
    78053 | Samuel              | Pe├▒a Pab├│n            |                 1 |    2435275.86
   109819 | Felipe              | C├íceres Jim├®nez       |                 1 |    2435274.85
   110522 | Blanca M├│nica       | S├ínchez Hern├índez     |                 1 |    2434972.71
    45699 | Jazm├¡n Marcela      | Rinc├│n Su├írez         |                 1 |    2434860.00
    97988 | Beatriz             | Herrera Mar├¡n         |                 1 |    2434777.68
    62744 | Rub├®n Cristian      | ├ülvarez ├ülvarez       |                 1 |    2434456.92
    28440 | Manuela             | Berm├║dez Pinz├│n       |                 1 |    2434345.60
   134595 | Esperanza           | Benavides Sandoval    |                 1 |    2434156.76
    62592 | Javier              | Parra Molina          |                 1 |    2433962.04
    89764 | Viviana             | Ruiz Romero           |                 1 |    2433021.76
   149636 | Hernando            | Betancur Mart├¡nez     |                 1 |    2432887.35
    92784 | Fabio               | Pab├│n Hern├índez       |                 1 |    2432533.16
    59995 | Hernando            | Calder├│n Henao        |                 1 |    2432082.32
   119541 | ├ülvaro              | Pinz├│n Ortiz          |                 1 |    2431516.21
    48616 | Natalia             | Moreno Contreras      |                 1 |    2431156.88
    64075 | Ramiro              | Vargas Trujillo       |                 1 |    2430960.64
    27577 | Rosa Isabella       | Rodr├¡guez Pab├│n       |                 1 |    2430947.36
    72080 | Myriam              | Herrera Mar├¡n         |                 1 |    2430641.16
   141858 | Mar├¡a               | Sandoval Chamorro     |                 1 |    2430412.92
     5812 | An├¡bal              | Quintero Duque        |                 1 |    2429116.56
    30028 | Libardo             | Mar├¡n Pab├│n           |                 1 |    2429050.14
    86870 | Francisco           | R├¡os ├ülvarez          |                 1 |    2429016.84
    29102 | Nelson Gilberto     | C├írdenas Ospina       |                 1 |    2428805.68
    46623 | ├üngela              | D├¡az Pab├│n            |                 1 |    2427821.50
   137648 | Efra├¡n              | Osorio Calder├│n       |                 1 |    2427543.25
    52543 | Blanca              | Jaimes G├│mez          |                 1 |    2426785.92
   137539 | Efra├¡n              | S├ínchez Giraldo       |                 1 |    2425698.00
    62670 | Jazm├¡n Luz          | Barrera Ramos         |                 1 |    2425662.36
   102250 | Carolina            | Romero Torres         |                 1 |    2425135.68
   117353 | Germ├ín              | Pab├│n Losada          |                 1 |    2423404.32
   123543 | Natalia Isabella    | ├ülvarez Medina        |                 1 |    2423283.05
    40375 | ├ôscar               | Chamorro Medina       |                 1 |    2423169.05
    99527 | Camila              | Arias Medina          |                 1 |    2422958.49
   112151 | Mario               | Ram├¡rez Sandoval      |                 1 |    2422946.90
    90796 | Antonio             | Rangel Pab├│n          |                 1 |    2422834.85
    94597 | Luc├¡a               | Ibarra Guerrero       |                 1 |    2422815.52
   107460 | Yeison Alejandro    | Mart├¡nez Prada        |                 1 |    2422815.36
    93073 | Blanca              | Vera L├│pez            |                 1 |    2422203.52
    69435 | Esperanza           | Mosquera Salazar      |                 1 |    2422056.43
    89496 | Jos├®                | Mar├¡n C├íceres         |                 1 |    2420562.85
    32826 | Pedro               | Ruiz Caicedo          |                 1 |    2420005.43
    57868 | Aura                | Quintero Lozano       |                 1 |    2419819.59
   125877 | Stella              | L├│pez D├¡az            |                 1 |    2419560.00
    29138 | Mauricio Reinaldo   | Acevedo Salazar       |                 1 |    2418271.98
   111056 | Ana                 | Guerrero Vargas       |                 1 |    2417709.72
    76250 | Emilio              | Jaimes Berm├║dez       |                 1 |    2416556.11
    35037 | Francisco           | Garc├¡a Bedoya         |                 1 |    2416075.54
    91154 | Leidy               | Ortiz Herrera         |                 1 |    2416007.94
     1110 | Erika               | Duarte Fl├│rez         |                 1 |    2415852.84
    24855 | Isabella            | Ibarra Su├írez         |                 1 |    2414254.50
    37483 | Fabio               | Serrano Galvis        |                 1 |    2412720.54
   140986 | Libardo             | Hern├índez Bastidas    |                 1 |    2412598.71
    33457 | Jairo               | Mej├¡a Uribe           |                 1 |    2411958.96
     5637 | Diego               | Cardona Tovar         |                 1 |    2410603.20
   107071 | Diana               | Ni├▒o Gonz├ílez         |                 1 |    2410553.84
    20767 | Wilson              | Pe├▒a Montoya          |                 1 |    2410403.58
     6085 | Reinaldo            | Duarte Mej├¡a          |                 1 |    2409958.46
   129541 | Luisa               | Villamizar D├¡az       |                 1 |    2409825.96
   125124 | Esteban Camilo      | Ortiz Zapata          |                 1 |    2409636.00
    81110 | Claudia             | Restrepo V├®lez        |                 1 |    2409331.57
    75895 | Carlos Alberto      | Villamizar Bedoya     |                 1 |    2409254.53
    55991 | Erika               | Agudelo Bastidas      |                 1 |    2408400.50
    65453 | Alejandro Wilson    | Mosquera Tovar        |                 1 |    2408173.74
    20489 | Santiago Efra├¡n     | Bonilla G├│mez         |                 1 |    2407522.45
   111630 | Yolanda             | Delgado Polan├¡a       |                 1 |    2407231.98
   100373 | Esteban             | Sandoval Acevedo      |                 1 |    2407023.54
    53472 | Carolina            | Londo├▒o Garc├¡a        |                 1 |    2406496.55
    87411 | Germ├ín              | Pinz├│n Cabrera        |                 1 |    2406023.28
   148992 | M├│nica              | Mart├¡nez Lasso        |                 1 |    2405395.01
   124352 | Andr├®s H├®ctor       | Rangel Pe├▒a           |                 1 |    2405000.37
   130417 | Martha              | Delgado Ni├▒o          |                 1 |    2404664.84
   142999 | Mauricio            | Erazo Medina          |                 1 |    2404323.54
    61280 | Fernando            | Osorio Parra          |                 1 |    2404012.88
   134985 | Antonio             | Jaimes Rinc├│n         |                 1 |    2403970.59
    99609 | Abelardo Arturo     | Burbano Lozano        |                 1 |    2403925.38
    84847 | Heriberto           | Arias Montoya         |                 1 |    2403560.92
     5971 | Esteban             | Ram├¡rez D├¡az          |                 1 |    2403405.06
   148035 | Hugo                | Jim├®nez Arias         |                 1 |    2402618.40
   143727 | Manuela             | Jaimes C├írdenas       |                 1 |    2401663.38
    36672 | Javier              | Acevedo Guti├®rrez     |                 1 |    2400912.50
    32851 | Sara                | Fl├│rez Ibarra         |                 1 |    2400754.91
    40848 | Carmen              | Ospina Ospina         |                 1 |    2400421.00
    11187 | Alejandro           | Tovar Serrano         |                 1 |    2399699.41
    30964 | Manuela             | Chamorro Montoya      |                 1 |    2398972.07
    92363 | Brayan Rodrigo      | C├íceres Sandoval      |                 1 |    2398353.64
   133947 | Germ├ín              | Castillo Fl├│rez       |                 1 |    2398242.84
   111335 | Diego               | Hern├índez S├ínchez     |                 1 |    2393322.36
   136780 | Efra├¡n              | Ram├¡rez Montoya       |                 1 |    2392981.15
   129115 | Liliana             | Castro Cardona        |                 1 |    2392333.48
   101943 | Rafael Germ├ín       | Tovar P├®rez           |                 1 |    2392272.91
    86613 | Beatriz             | Montoya Rojas         |                 1 |    2392232.72
   145291 | An├¡bal              | Correa Guerrero       |                 1 |    2392104.15
    18113 | Iv├ín                | Lasso Bedoya          |                 1 |    2391962.12
    54304 | ├ëdgar               | Losada Vargas         |                 1 |    2391692.03
   134071 | ├ôscar               | G├│mez Torres          |                 1 |    2391291.50
    30848 | Gabriela            | Pe├▒a D├¡az             |                 1 |    2390828.68
   115207 | Jaime               | Carrillo Villamizar   |                 1 |    2390543.32
    32852 | Javier              | Lozano Burbano        |                 1 |    2389899.62
   131331 | Esteban             | Londo├▒o Mar├¡n         |                 1 |    2389641.59
    79730 | Sof├¡a               | Herrera Delgado       |                 1 |    2389585.27
   149199 | Camilo              | Duque Medina          |                 1 |    2389561.95
   117121 | Marcela Marleny     | Quintero G├│mez        |                 1 |    2389551.32
    93826 | Libardo Javier      | Rinc├│n Bonilla        |                 1 |    2389482.82
    22205 | Elsa                | Agudelo Zapata        |                 1 |    2389093.33
    76217 | Olga                | Herrera Erazo         |                 1 |    2388671.85
    66450 | Ruth Mercedes       | Rivera Ortega         |                 1 |    2388502.13
     9223 | Luis                | Guerrero Ram├¡rez      |                 1 |    2388211.25
    64192 | Gloria              | Agudelo Osorio        |                 1 |    2388153.50
   141915 | Hernando Francisco  | Valencia Arango       |                 1 |    2386228.00
   119016 | Edilma              | C├íceres Valencia      |                 1 |    2386030.24
    96905 | Alberto             | Vargas Agudelo        |                 1 |    2385997.14
   145047 | Efra├¡n Fabio        | Delgado Garc├¡a        |                 1 |    2385787.10
   105199 | Juan                | Vargas Losada         |                 1 |    2385775.77
    29672 | Sandra              | Ibarra Agudelo        |                 1 |    2385111.61
    19979 | Felipe              | Pinz├│n Sandoval       |                 1 |    2384611.99
   119893 | Alberto             | Vargas L├│pez          |                 1 |    2383476.71
    45860 | Jazm├¡n              | Villamizar L├│pez      |                 1 |    2383333.52
   116055 | Cristian            | Jaimes Calder├│n       |                 1 |    2383069.09
    50553 | Gladys M├│nica       | Rivera Moreno         |                 1 |    2382944.90
    99489 | Orlando Luis        | Trujillo G├│mez        |                 1 |    2382239.28
   143430 | Luz                 | Perdomo Zuluaga       |                 1 |    2381911.77
    22223 | Dora                | Fl├│rez Cardona        |                 1 |    2381634.19
    53790 | Elsa                | Villamizar Duque      |                 1 |    2381473.08
    21045 | Antonio Arturo      | Rinc├│n Acevedo        |                 1 |    2381451.05
    45121 | Valentina           | Mart├¡nez Valencia     |                 1 |    2381336.11
    42017 | Beatriz             | Lozano Ortiz          |                 1 |    2381183.22
    89740 | Abelardo Gilberto   | Ram├¡rez Narv├íez       |                 1 |    2380687.68
     9655 | Fernando            | Arias Ospina          |                 1 |    2379767.27
    92938 | Felipe              | Mosquera Jim├®nez      |                 1 |    2379080.01
   131507 | Francisco           | Pab├│n Lasso           |                 1 |    2378544.65
    93579 | Rub├®n               | Carrillo Delgado      |                 1 |    2377608.48
   140227 | Yolanda             | Pab├│n Rivera          |                 1 |    2377271.75
    23374 | Gustavo             | Correa Gonz├ílez       |                 1 |    2376773.76
    33644 | Manuel              | Cu├®llar Galvis        |                 1 |    2376519.80
   102584 | Teresa Yolanda      | P├®rez Duarte          |                 1 |    2374368.56
    70182 | Sof├¡a In├®s          | Contreras Arias       |                 1 |    2373759.85
   147504 | H├®ctor              | Narv├íez Ortiz         |                 1 |    2372395.60
    47904 | ├ëdgar               | Benavides Losada      |                 1 |    2372004.42
    31800 | Germ├ín Luis         | Su├írez Restrepo       |                 1 |    2371998.18
      865 | Gloria              | Castro Berm├║dez       |                 1 |    2371427.89
   105345 | Antonio             | Silva Villamizar      |                 1 |    2369052.69
    49217 | Emilio              | Arango Perdomo        |                 1 |    2366870.46
    69818 | Andr├®s              | Delgado Ortiz         |                 1 |    2366455.95
    16110 | Cristian Mateo      | Ram├¡rez Castillo      |                 1 |    2366325.90
    18077 | Miguel              | Ortega Henao          |                 1 |    2366025.22
    64666 | Yolanda             | Vargas Benavides      |                 1 |    2365016.94
    54247 | Yeison              | Ramos V├®lez           |                 1 |    2364762.96
    99435 | Mercedes            | Benavides Bastidas    |                 1 |    2364225.49
    59687 | Adriana             | Arango Ortega         |                 1 |    2364027.39
    16589 | Yesenia             | Castro Galvis         |                 1 |    2363560.32
    17870 | Orlando Miguel      | Jim├®nez Bastidas      |                 1 |    2363328.00
   129279 | Pedro Efra├¡n        | Duarte S├ínchez        |                 1 |    2362786.92
    76651 | Amparo              | Trujillo Ortega       |                 1 |    2362763.32
    55275 | Yesenia             | Berm├║dez Rivera       |                 1 |    2362287.84
    56319 | Rodrigo             | Narv├íez Caicedo       |                 1 |    2362002.37
    88444 | Carolina            | Restrepo Duarte       |                 1 |    2361755.00
    45601 | Gloria              | Barrera Giraldo       |                 1 |    2361290.46
    40649 | Rub├®n Esteban       | Bedoya Pab├│n          |                 1 |    2360881.13
   148767 | Reinaldo            | L├│pez Galvis          |                 1 |    2359662.80
   112232 | Rub├®n               | Jim├®nez Arias         |                 1 |    2359495.69
    24935 | ├üngela              | Ni├▒o Lozano           |                 1 |    2359347.05
   144522 | Pedro Javier        | Rinc├│n Delgado        |                 1 |    2359046.02
    49745 | Patricia            | Caicedo Londo├▒o       |                 1 |    2358236.27
    82381 | Manuela             | Arias S├ínchez         |                 1 |    2358205.20
   148916 | Mauricio            | Vargas Ibarra         |                 1 |    2358093.29
   146301 | Viviana             | Tovar Ortiz           |                 1 |    2357754.86
    71166 | Sandra Teresa       | Losada Calder├│n       |                 1 |    2357719.65
   141233 | Wilmer              | Villamizar Cabrera    |                 1 |    2357235.30
   135751 | Daniel              | Gonz├ílez Benavides    |                 1 |    2356280.16
   147109 | Germ├ín              | Castillo Ibarra       |                 1 |    2355439.80
    58715 | Juliana             | Medina Silva          |                 1 |    2354666.60
    44148 | Luz                 | Rinc├│n Losada         |                 1 |    2354154.92
   140730 | Iv├ín                | C├írdenas Galvis       |                 1 |    2353777.45
    71943 | ├ülvaro              | Lasso Guerrero        |                 1 |    2352249.89
   114643 | Guillermo           | Mosquera Bastidas     |                 1 |    2352134.40
    93431 | Heriberto           | Pe├▒a Parra            |                 1 |    2351806.70
    87753 | Gilberto            | Castro Galvis         |                 1 |    2351195.33
    16247 | Elsa Marleny        | Sandoval Contreras    |                 1 |    2351184.51
    30456 | Daniela             | Ni├▒o Rojas            |                 1 |    2350795.65
    39465 | Juan                | Cardona Zapata        |                 1 |    2350726.55
    57913 | Edilma Marcela      | Zuluaga Ortiz         |                 1 |    2350210.46
   110002 | Brayan Santiago     | Hern├índez Losada      |                 1 |    2350084.61
   107267 | Fernando            | Perdomo Gonz├ílez      |                 1 |    2350059.24
    24688 | Stella              | G├│mez ├ülvarez         |                 1 |    2349438.21
   128644 | Felipe Arturo       | Delgado Losada        |                 1 |    2349369.48
    40369 | Mauricio Mateo      | Serrano Henao         |                 1 |    2349353.44
   129185 | Reinaldo Antonio    | Cardona Pinz├│n        |                 1 |    2349316.94
   125880 | Isabella            | Henao Parra           |                 1 |    2348871.48
    50562 | M├│nica Alejandra    | Duque Mej├¡a           |                 1 |    2347677.60
    67647 | Libardo Camilo      | Rinc├│n Prada          |                 1 |    2346971.28
    78270 | Nelson              | Rangel Lozano         |                 1 |    2346752.98
    12586 | Carlos Juli├ín       | Pe├▒a Betancur         |                 1 |    2346407.42
    99824 | Yolanda Gloria      | Pe├▒a Mart├¡nez         |                 1 |    2346151.29
     9179 | Mar├¡a Lorena        | Uribe Ortiz           |                 1 |    2344454.22
     7867 | Mercedes            | Agudelo Perdomo       |                 1 |    2344401.34
   104135 | Rub├®n               | Osorio Calder├│n       |                 1 |    2343501.93
     5263 | Elsa                | Molina Pe├▒a           |                 1 |    2342880.37
    31905 | Fabio               | Mart├¡nez Rinc├│n       |                 1 |    2341501.19
     2917 | Alberto             | Castillo Salazar      |                 1 |    2341435.00
   128948 | Javier              | Salazar Jaimes        |                 1 |    2341237.30
     5147 | Hugo                | Ortega Erazo          |                 1 |    2340947.77
    83575 | Ricardo             | Contreras Ortega      |                 1 |    2340382.91
    70635 | Jairo               | Zuluaga Mej├¡a         |                 1 |    2340215.13
    85879 | ├ôscar Juli├ín        | Castro D├¡az           |                 1 |    2340032.08
    84560 | Nubia               | Vera Molina           |                 1 |    2339617.20
    75664 | Dora                | Ni├▒o Delgado          |                 1 |    2339416.77
    31036 | Alejandro           | Ram├¡rez Mu├▒oz         |                 1 |    2339173.19
   138188 | Cecilia             | Mu├▒oz Castro          |                 1 |    2339029.16
    79400 | An├¡bal              | ├ülvarez Berm├║dez      |                 1 |    2338497.39
    41725 | Camila              | Correa Moreno         |                 1 |    2338349.40
   115330 | Amparo Luisa        | Mu├▒oz Rojas           |                 1 |    2337263.13
    23513 | Reinaldo            | Villamizar Garc├¡a     |                 1 |    2337252.96
    64143 | Fernando            | Delgado Trujillo      |                 1 |    2337175.77
   105323 | Nicol├ís             | Arias Berm├║dez        |                 1 |    2337172.20
   104236 | David               | Su├írez Galvis         |                 1 |    2336246.01
    80637 | Heriberto           | Arias Rinc├│n          |                 1 |    2335689.43
    48801 | ├üngela              | Arias Sandoval        |                 1 |    2335659.98
    92782 | Alejandra           | Ramos Arango          |                 1 |    2334436.66
    76010 | Jairo               | Ni├▒o R├¡os             |                 1 |    2332517.88
    99210 | Yesenia             | Jaimes Hern├índez      |                 1 |    2332262.13
    89772 | Stella              | S├ínchez Acevedo       |                 1 |    2332107.40
    57100 | Adriana             | Giraldo Cabrera       |                 1 |    2331723.66
    66559 | Natalia             | Mu├▒oz Ruiz            |                 1 |    2331209.82
     7717 | Alejandra           | Mu├▒oz Caicedo         |                 1 |    2330530.20
    72476 | Brayan              | ├ülvarez Rivera        |                 1 |    2330519.62
   109772 | Javier              | P├®rez Rinc├│n          |                 1 |    2329873.11
    59311 | Marcela             | Rodr├¡guez Ruiz        |                 1 |    2329773.58
   116648 | Laura               | Ibarra Arango         |                 1 |    2329739.10
    51908 | Luc├¡a               | Torres Jim├®nez        |                 1 |    2328413.33
    86700 | Cristian            | Quintero Ruiz         |                 1 |    2328276.87
    16701 | Martha              | L├│pez Losada          |                 1 |    2327964.76
    60882 | Efra├¡n              | Rojas Salazar         |                 1 |    2327718.69
    29569 | Adriana Ruth        | Lasso Agudelo         |                 1 |    2327300.76
   138559 | Jos├®                | Jaimes Silva          |                 1 |    2326584.35
   113085 | Fabio Jaime         | Valencia Ibarra       |                 1 |    2326322.18
    97729 | Marleny Myriam      | Pab├│n Bedoya          |                 1 |    2325230.32
    34525 | Adriana             | G├│mez Ospina          |                 1 |    2324270.52
   135478 | Ramiro              | Guti├®rrez R├¡os        |                 1 |    2324070.15
    22125 | Sof├¡a               | Romero Moreno         |                 1 |    2323927.63
    94470 | Juan                | Restrepo Pe├▒a         |                 1 |    2323903.20
    65877 | Gloria              | Carrillo Uribe        |                 1 |    2323668.32
   100004 | Yeison              | Ram├¡rez Mosquera      |                 1 |    2321838.00
    76446 | Gilberto            | Sandoval Molina       |                 1 |    2321606.43
    25277 | Anc├¡zar             | C├íceres Salazar       |                 1 |    2321562.10
    22255 | Carolina            | Giraldo Zuluaga       |                 1 |    2318644.54
   110907 | Abelardo            | Mu├▒oz Cu├®llar         |                 1 |    2318539.86
   122118 | Mercedes            | Garc├¡a Correa         |                 1 |    2318523.26
   136622 | Yuliana             | ├ülvarez Pe├▒a          |                 1 |    2318475.76
      730 | Diana               | Ruiz P├®rez            |                 1 |    2318463.67
   149191 | Daniel Carlos       | Contreras Lozano      |                 1 |    2318090.25
    16527 | Valentina           | Benavides Restrepo    |                 1 |    2317746.39
    24352 | Iv├ín Abelardo       | Fl├│rez Mu├▒oz          |                 1 |    2317297.12
    10023 | Arturo              | Mart├¡nez R├¡os         |                 1 |    2317276.39
    91345 | Wilson              | G├│mez Ospina          |                 1 |    2316624.57
    17203 | Mario               | C├íceres Rodr├¡guez     |                 1 |    2316383.27
    39480 | Daniel Gilberto     | Ortiz Torres          |                 1 |    2314592.00
    52095 | Germ├ín Yeison       | ├ülvarez Ortiz         |                 1 |    2312192.40
   112021 | Marleny Lorena      | Ramos Duarte          |                 1 |    2309061.97
    38917 | Rafael Juan         | Prada Quintero        |                 1 |    2307741.66
   146864 | Yolanda Marcela     | Su├írez Vera           |                 1 |    2306880.67
   125485 | Alejandra Blanca    | Torres Restrepo       |                 1 |    2306208.52
    63888 | Gabriela            | Salazar Rodr├¡guez     |                 1 |    2305969.15
   124995 | Fernando            | Duarte Betancur       |                 1 |    2304816.45
    22990 | Jairo Diego         | Herrera Gonz├ílez      |                 1 |    2303401.76
    39619 | Fabio               | Calder├│n Ramos        |                 1 |    2303197.47
    20110 | Iv├ín Gilberto       | Pe├▒a Calder├│n         |                 1 |    2301372.71
     2592 | M├│nica              | Valencia Bastidas     |                 1 |    2301052.05
     8926 | Aura                | Valencia Castillo     |                 1 |    2300061.50
   107557 | Luc├¡a               | Lozano Vera           |                 1 |    2299797.46
    82527 | Javier              | Ibarra V├®lez          |                 1 |    2299202.72
     9630 | Guillermo           | Bonilla Garc├¡a        |                 1 |    2298976.45
   143081 | Isabella            | Rangel G├│mez          |                 1 |    2296890.37
    19227 | Cristian            | Pinz├│n Perdomo        |                 1 |    2296512.75
     9781 | Leidy               | Salazar Calder├│n      |                 1 |    2295981.24
   107191 | Abelardo            | Mora Barrera          |                 1 |    2295912.80
    56959 | Erika               | Barrera Ram├¡rez       |                 1 |    2295568.34
   144999 | Camila              | Losada Ospina         |                 1 |    2295301.10
      337 | Ruth Luisa          | S├ínchez Erazo         |                 1 |    2295201.50
    67583 | Luis                | Moreno R├¡os           |                 1 |    2294954.76
    33254 | Antonio             | Chamorro Pab├│n        |                 1 |    2294481.87
    11735 | Laura Manuela       | Mora Arango           |                 1 |    2294236.80
    15586 | In├®s                | Rinc├│n Burbano        |                 1 |    2293372.74
     7672 | Jaime Brayan        | Ram├¡rez Mora          |                 1 |    2293339.37
    18050 | Samuel              | Berm├║dez Contreras    |                 1 |    2293326.24
    87085 | Mauricio Esteban    | Ospina Mart├¡nez       |                 1 |    2292529.50
    35029 | Paola               | Agudelo Uribe         |                 1 |    2292136.51
   135187 | Javier              | Mu├▒oz Ni├▒o            |                 1 |    2291906.75
    58134 | Manuela             | Osorio Guerrero       |                 1 |    2291765.01
    19069 | ├ëdgar ├ôscar         | Su├írez Bonilla        |                 1 |    2290631.67
    10500 | Mauricio            | Silva Calder├│n        |                 1 |    2290281.40
   104013 | Francisco           | Benavides Jim├®nez     |                 1 |    2290262.74
    14694 | Libardo             | L├│pez Tovar           |                 1 |    2290229.44
   144222 | Liliana             | Mej├¡a Arias           |                 1 |    2288614.07
   137471 | Jazm├¡n              | Castillo C├írdenas     |                 1 |    2287082.95
    32283 | Gustavo             | Burbano Gonz├ílez      |                 1 |    2286936.96
    81791 | Libardo             | R├¡os Zapata           |                 1 |    2286735.45
     9959 | Mario               | Trujillo Polan├¡a      |                 1 |    2285830.52
   114419 | Hugo Jos├®           | Berm├║dez Betancur     |                 1 |    2285655.67
    91768 | Mateo               | Henao Castillo        |                 1 |    2284692.84
   113740 | Manuela             | Losada Ruiz           |                 1 |    2284683.57
   119106 | Patricia            | Ortega Guti├®rrez      |                 1 |    2283435.12
   129085 | Stella              | Romero Su├írez         |                 1 |    2283166.73
    36619 | Ramiro ├ülvaro       | Bonilla Rangel        |                 1 |    2283115.59
     2201 | Marleny Sara        | Losada Agudelo        |                 1 |    2283053.24
   103965 | Rafael              | Montoya Erazo         |                 1 |    2283010.60
    59558 | Yuliana             | Arias Ortiz           |                 1 |    2282412.60
    20486 | Jazm├¡n              | Berm├║dez C├íceres      |                 1 |    2282157.77
    76363 | Gladys Isabella     | Giraldo Caicedo       |                 1 |    2281653.74
    21035 | Wilmer              | Galvis Ortiz          |                 1 |    2281391.78
    33537 | Felipe Nelson       | Uribe Galvis          |                 1 |    2281193.42
   105127 | Elsa                | Montoya Arias         |                 1 |    2280932.20
    88795 | Dora                | Trujillo Osorio       |                 1 |    2280612.40
   118784 | Valentina           | Polan├¡a Ospina        |                 1 |    2280238.63
    11645 | Yesenia             | Perdomo Zuluaga       |                 1 |    2280020.52
    92526 | Liliana             | Moreno Ram├¡rez        |                 1 |    2279739.12
    82193 | Fernando            | Villamizar Caicedo    |                 1 |    2279095.05
    33962 | Guillermo           | Mart├¡nez Montoya      |                 1 |    2278956.73
   108467 | Luz                 | Fl├│rez Benavides      |                 1 |    2278324.39
     3007 | Adriana             | Mu├▒oz Arango          |                 1 |    2277900.85
    40423 | Wilmer              | Garc├¡a Ram├¡rez        |                 1 |    2277879.54
    31790 | Diana Andrea        | Correa V├®lez          |                 1 |    2277399.64
    44580 | Myriam              | Torres Arias          |                 1 |    2276437.62
    67269 | Mar├¡a Stella        | Zuluaga Gonz├ílez      |                 1 |    2276434.07
   129752 | Carolina            | L├│pez R├¡os            |                 1 |    2275883.15
   105108 | Rub├®n               | Castro Zapata         |                 1 |    2275572.35
    57335 | Carlos              | Fl├│rez G├│mez          |                 1 |    2275547.56
   145089 | Edilma              | Villamizar Agudelo    |                 1 |    2275396.81
    24287 | Blanca              | Arango Parra          |                 1 |    2274731.82
   103147 | Paola Erika         | Bonilla Fl├│rez        |                 1 |    2274437.50
   117013 | Stella Carolina     | Betancur Arias        |                 1 |    2274221.16
    49753 | Andr├®s              | Ruiz Hern├índez        |                 1 |    2272754.44
    16620 | Marleny             | Serrano Uribe         |                 1 |    2272536.15
   127111 | Guillermo           | Quintero Vera         |                 1 |    2272417.15
    95868 | Samuel Germ├ín       | Perdomo Acevedo       |                 1 |    2272166.82
   128674 | Gustavo Abelardo    | Caicedo Contreras     |                 1 |    2271724.32
   144780 | Gloria              | Bonilla Torres        |                 1 |    2271557.00
    74581 | Rodrigo Alejandro   | Agudelo Villamizar    |                 1 |    2271183.01
    75950 | David               | D├¡az P├®rez            |                 1 |    2271065.56
   132948 | H├®ctor              | Ni├▒o Ospina           |                 1 |    2267691.43
    51614 | Hernando            | Restrepo Trujillo     |                 1 |    2265264.95
    74970 | Luisa               | Mart├¡nez Giraldo      |                 1 |    2264901.06
    44835 | ├ülvaro              | Zuluaga Contreras     |                 1 |    2264884.08
   118589 | Blanca Edilma       | Tovar Mora            |                 1 |    2263446.71
   125992 | Nicol├ís Yeison      | Ni├▒o Acevedo          |                 1 |    2263217.54
   137784 | Mariana             | Londo├▒o Vera          |                 1 |    2263109.74
    28352 | David Wilmer        | Caicedo Zapata        |                 1 |    2263032.75
     6574 | Rosa                | C├írdenas Villamizar   |                 1 |    2262340.96
   142438 | Jaime               | Castillo Cardona      |                 1 |    2262002.49
   102312 | Germ├ín              | Uribe Contreras       |                 1 |    2261308.26
   137646 | Luis Abelardo       | G├│mez Betancur        |                 1 |    2259879.87
    59357 | Anc├¡zar             | D├¡az Su├írez           |                 1 |    2259737.75
    15483 | Orlando             | Tovar Ramos           |                 1 |    2259442.19
    44775 | Efra├¡n              | Hern├índez Acevedo     |                 1 |    2259245.76
    75877 | Nicol├ís             | Narv├íez Acevedo       |                 1 |    2259189.32
   129810 | Jorge ├ôscar         | Narv├íez Bastidas      |                 1 |    2259021.41
   113673 | Andrea Paola        | Perdomo Berm├║dez      |                 1 |    2258068.93
      778 | Wilson Manuel       | Jaimes Losada         |                 1 |    2258067.50
    43989 | M├│nica              | Prada Pab├│n           |                 1 |    2257793.49
   116005 | Andr├®s              | Ruiz Rinc├│n           |                 1 |    2257175.98
    72631 | Javier              | Rinc├│n Gonz├ílez       |                 1 |    2253542.60
    59758 | Sebasti├ín           | C├írdenas Valencia     |                 1 |    2253278.36
    30205 | Sandra              | Erazo Su├írez          |                 1 |    2251605.20
    57652 | Leidy               | Restrepo D├¡az         |                 1 |    2250505.32
    94699 | Viviana             | Pab├│n Lozano          |                 1 |    2250247.73
    82650 | ├üngela Daniela      | Jim├®nez Rodr├¡guez     |                 1 |    2249501.45
    39230 | ├üngela              | Acevedo Bonilla       |                 1 |    2249191.20
    14372 | An├¡bal              | Rangel Gonz├ílez       |                 1 |    2249188.92
    77064 | Jos├®                | Ram├¡rez Pe├▒a          |                 1 |    2248791.62
   106178 | Nelson              | C├íceres Trujillo      |                 1 |    2248546.32
   119464 | Mauricio Heriberto  | D├¡az Correa           |                 1 |    2247815.06
    96740 | Santiago Cristian   | Lasso Moreno          |                 1 |    2247204.47
    58046 | Yolanda Roc├¡o       | Herrera Vargas        |                 1 |    2246981.80
    38086 | Yolanda             | Herrera Ospina        |                 1 |    2246539.24
    93366 | Jorge               | Vargas Ni├▒o           |                 1 |    2246286.16
    10728 | Esperanza           | Trujillo Moreno       |                 1 |    2245294.74
    47936 | Ruth Blanca         | Duque ├ülvarez         |                 1 |    2245070.74
   119266 | Yolanda Sara        | Losada Ni├▒o           |                 1 |    2244484.85
    89955 | Libardo             | Montoya Ospina        |                 1 |    2243975.17
    38976 | Diego               | Prada Arias           |                 1 |    2243202.84
    14577 | Yuliana             | ├ülvarez Serrano       |                 1 |    2242581.12
   110803 | Alejandra           | Moreno Acevedo        |                 1 |    2240832.61
   132249 | Luis                | Ortiz Perdomo         |                 1 |    2239972.89
   120058 | Anc├¡zar Rodrigo     | Zapata Duarte         |                 1 |    2239942.51
   119725 | Manuel              | Betancur Londo├▒o      |                 1 |    2239468.60
    22388 | Ruth                | Arias Ram├¡rez         |                 1 |    2239081.85
    97909 | Juliana Manuela     | Contreras Vera        |                 1 |    2238417.06
   134025 | Luis Andr├®s         | Acevedo Romero        |                 1 |    2236867.71
   125122 | Diana               | Guti├®rrez Chamorro    |                 1 |    2236816.14
   104654 | Yolanda Teresa      | Castillo Sandoval     |                 1 |    2236552.56
    17901 | Diego               | D├¡az Molina           |                 1 |    2236033.06
    42217 | Esperanza           | Parra L├│pez           |                 1 |    2235673.38
   137478 | Nelson              | Correa Parra          |                 1 |    2234573.37
    95962 | ├ülvaro              | R├¡os Chamorro         |                 1 |    2234524.18
   103624 | Anc├¡zar             | Restrepo Ospina       |                 1 |    2233509.59
    48079 | Edilma Alejandra    | Su├írez Perdomo        |                 1 |    2232050.23
    20595 | Rosa                | Medina Tovar          |                 1 |    2230702.50
    55963 | Juliana             | Cardona Pe├▒a          |                 1 |    2230399.65
    32762 | Gloria Cecilia      | Betancur Mej├¡a        |                 1 |    2229641.75
   116719 | Gloria              | Ortiz Tovar           |                 1 |    2229567.46
    17808 | Reinaldo            | Losada Castro         |                 1 |    2229379.27
   121118 | Stella              | Romero Vargas         |                 1 |    2229372.84
     2541 | Juliana Olga        | S├ínchez Prada         |                 1 |    2228307.31
   110177 | Jaime               | Duarte Ortega         |                 1 |    2227556.39
   130832 | Libardo             | Acevedo Salazar       |                 1 |    2227349.87
   102174 | Mario Reinaldo      | Ortega S├ínchez        |                 1 |    2226225.69
    73888 | Gloria              | Zuluaga Molina        |                 1 |    2226182.14
      389 | Gladys              | Agudelo Guti├®rrez     |                 1 |    2224508.02
     7730 | Mario               | Ospina Osorio         |                 1 |    2223201.00
    88936 | Juan                | Vera Gonz├ílez         |                 1 |    2221875.72
      859 | Reinaldo            | Mej├¡a Gonz├ílez        |                 1 |    2220400.82
    41800 | Samuel Sebasti├ín    | Pe├▒a Erazo            |                 1 |    2219728.86
    32375 | Mar├¡a               | Narv├íez Ramos         |                 1 |    2218576.50
   114949 | H├®ctor              | Hern├índez D├¡az        |                 1 |    2216992.80
    77090 | Luisa Luz           | Burbano Ram├¡rez       |                 1 |    2216243.48
    80279 | ├ôscar Esteban       | Burbano Mu├▒oz         |                 1 |    2215554.60
    76625 | Camilo Juan         | Su├írez Rojas          |                 1 |    2214363.89
    30501 | Fernando            | Jaimes Herrera        |                 1 |    2214053.14
    80429 | Esteban             | Serrano Correa        |                 1 |    2213934.59
   104686 | Rafael              | Berm├║dez Serrano      |                 1 |    2211926.10
   109762 | Patricia ├üngela     | Henao Rivera          |                 1 |    2211746.70
    63548 | Gilberto            | Perdomo Montoya       |                 1 |    2211194.18
    15640 | Sandra              | Cabrera Perdomo       |                 1 |    2210318.40
    14443 | Jazm├¡n              | Duque Galvis          |                 1 |    2209092.84
    84991 | Fabio               | Mar├¡n Cardona         |                 1 |    2207677.80
    44088 | Rosa Olga           | C├íceres Garc├¡a        |                 1 |    2207520.31
    99638 | Aura                | Parra Cardona         |                 1 |    2207485.44
    12640 | Manuela             | Restrepo Castro       |                 1 |    2206872.68
    16813 | Juli├ín              | Medina Ortiz          |                 1 |    2206017.84
    67327 | Juliana Carmen      | Restrepo Molina       |                 1 |    2205515.19
    63356 | Patricia Marleny    | Parra Londo├▒o         |                 1 |    2204742.73
     3421 | Alejandra Isabella  | Silva P├®rez           |                 1 |    2203835.54
    77704 | Yeison              | Su├írez Agudelo        |                 1 |    2201696.75
    90348 | Alejandra           | Garc├¡a Molina         |                 1 |    2199147.02
   130290 | Ramiro Fernando     | Berm├║dez ├ülvarez      |                 1 |    2199036.55
   137211 | Juliana             | C├írdenas Tovar        |                 1 |    2197959.58
    17670 | Yeison              | Cardona Bedoya        |                 1 |    2197909.74
   138656 | Miguel              | G├│mez Calder├│n        |                 1 |    2197484.32
   142208 | Jaime               | Ram├¡rez Uribe         |                 1 |    2197455.00
    20378 | Miguel Mateo        | Garc├¡a Benavides      |                 1 |    2195372.17
   108544 | Luisa               | Medina Valencia       |                 1 |    2195349.34
    90830 | Luisa               | G├│mez Rangel          |                 1 |    2194405.92
   109411 | Marleny Natalia     | Silva Moreno          |                 1 |    2193807.03
   144191 | Alejandro           | Osorio Montoya        |                 1 |    2192620.49
    55945 | Abelardo            | Restrepo Serrano      |                 1 |    2191211.75
   130237 | Amparo Beatriz      | Pinz├│n Perdomo        |                 1 |    2190611.10
    38989 | Rafael              | Burbano S├ínchez       |                 1 |    2190061.33
   104261 | Amparo              | S├ínchez Lozano        |                 1 |    2189364.18
    67817 | Germ├ín              | Agudelo Contreras     |                 1 |    2189133.10
    81075 | Rodrigo             | Hern├índez Giraldo     |                 1 |    2188566.75
   126850 | Blanca              | Valencia Jaimes       |                 1 |    2188341.82
    89718 | Erika Laura         | Garc├¡a Bonilla        |                 1 |    2188338.75
   112211 | Luz                 | Rivera Parra          |                 1 |    2188079.30
   121033 | Iv├ín Arturo         | Restrepo Berm├║dez     |                 1 |    2188038.46
    84727 | Gabriela            | G├│mez Acevedo         |                 1 |    2187655.95
   127598 | Luc├¡a               | Rodr├¡guez Restrepo    |                 1 |    2187554.88
    60856 | Claudia             | Mej├¡a Romero          |                 1 |    2186875.38
    64594 | Amparo Ruth         | Giraldo C├írdenas      |                 1 |    2186567.12
    27953 | M├│nica              | Mart├¡nez Castro       |                 1 |    2186471.60
   103865 | Ruth Jazm├¡n         | Guti├®rrez Valencia    |                 1 |    2184556.22
   104992 | Yesenia Mariana     | Ni├▒o Herrera          |                 1 |    2183498.24
    80946 | Rafael              | Cardona C├írdenas      |                 1 |    2183189.69
    91866 | Luz                 | Zuluaga Chamorro      |                 1 |    2182997.64
    73452 | Jos├®                | Jim├®nez Silva         |                 1 |    2181389.76
    34754 | Antonio             | Prada Tovar           |                 1 |    2180286.74
   107227 | Liliana             | D├¡az Benavides        |                 1 |    2180079.36
    41945 | Leidy               | Garc├¡a Berm├║dez       |                 1 |    2179735.12
   115491 | Luisa               | Betancur Montoya      |                 1 |    2179659.82
    49101 | ├ëdgar               | Silva Cabrera         |                 1 |    2179381.49
    44129 | Efra├¡n              | Carrillo Carrillo     |                 1 |    2179050.92
    22191 | Natalia             | Fl├│rez Castro         |                 1 |    2178532.58
   116584 | ├ëdgar               | Ibarra Bedoya         |                 1 |    2178408.00
    17682 | Sebasti├ín Santiago  | Rojas Lasso           |                 1 |    2176618.98
    50248 | Abelardo Emilio     | Arango Salazar        |                 1 |    2175273.76
   129300 | ├üngela              | Losada Delgado        |                 1 |    2173904.11
    60118 | Arturo              | Romero Chamorro       |                 1 |    2173742.00
    70022 | Antonio             | Quintero Castro       |                 1 |    2173373.50
   144187 | Martha              | Henao D├¡az            |                 1 |    2169972.84
    52755 | Alejandra           | Cardona Parra         |                 1 |    2169476.66
    13569 | Luisa               | Giraldo Bonilla       |                 1 |    2168919.65
     7101 | Esteban             | Cardona Duque         |                 1 |    2168586.00
    90032 | Santiago Arturo     | Arias Rodr├¡guez       |                 1 |    2167432.89
    71851 | Ramiro              | Moreno Sandoval       |                 1 |    2166653.50
    58155 | Valentina           | Su├írez L├│pez          |                 1 |    2166591.10
    38022 | Mariana             | Calder├│n Agudelo      |                 1 |    2164808.30
   102411 | Abelardo            | Uribe Agudelo         |                 1 |    2164704.16
   140229 | Rosa                | Jim├®nez Barrera       |                 1 |    2164259.31
   118260 | Heriberto Miguel    | Contreras Londo├▒o     |                 1 |    2164075.65
    23926 | Luis Juan           | Quintero Delgado      |                 1 |    2163878.12
    79383 | Esteban Libardo     | C├írdenas Moreno       |                 1 |    2163692.30
    66617 | Hernando            | L├│pez Medina          |                 1 |    2163551.48
   146888 | ├ôscar               | Guerrero Hern├índez    |                 1 |    2163045.12
   121838 | Wilson              | Duarte Cu├®llar        |                 1 |    2162371.17
    20263 | Jaime               | Herrera Zuluaga       |                 1 |    2161312.16
    93286 | Javier Mateo        | Contreras Correa      |                 1 |    2160195.20
    53328 | Claudia Olga        | Uribe Berm├║dez        |                 1 |    2159543.90
   137666 | Mauricio            | Carrillo Osorio       |                 1 |    2159297.15
    34164 | Mar├¡a               | Chamorro Giraldo      |                 1 |    2158984.78
    41637 | Alba                | Rangel Zapata         |                 1 |    2158206.56
    12979 | Claudia             | Mar├¡n Arias           |                 1 |    2155528.26
   149055 | Esperanza           | Cabrera C├íceres       |                 1 |    2154324.50
   115505 | Gladys Gloria       | Betancur Ramos        |                 1 |    2152951.44
   146428 | Manuel Brayan       | Osorio Tovar          |                 1 |    2152700.54
   141213 | Luc├¡a               | L├│pez Zapata          |                 1 |    2151461.06
    24792 | Rodrigo             | Mosquera Zuluaga      |                 1 |    2150706.64
    73603 | Yolanda             | Pe├▒a Silva            |                 1 |    2148280.47
    16205 | Gabriela Dora       | Trujillo Erazo        |                 1 |    2148257.28
    55771 | Amparo              | Serrano Londo├▒o       |                 1 |    2147586.72
   141465 | Gilberto            | Moreno Mosquera       |                 1 |    2146481.54
    15557 | Jazm├¡n              | Mu├▒oz Rivera          |                 1 |    2146187.31
   134747 | Mateo               | Ramos Ruiz            |                 1 |    2144583.94
   119017 | Cristian            | Betancur Pinz├│n       |                 1 |    2142455.94
     6096 | Paola               | Ni├▒o Mart├¡nez         |                 1 |    2142322.17
   128756 | Jairo               | Calder├│n Ibarra       |                 1 |    2141880.34
    34128 | Germ├ín              | Moreno Polan├¡a        |                 1 |    2141707.61
    96474 | Javier              | Polan├¡a Duque         |                 1 |    2141633.80
     3574 | Abelardo            | Torres Osorio         |                 1 |    2141433.42
    94463 | Marleny Dora        | Correa Hern├índez      |                 1 |    2141062.95
    66815 | Camila              | Gonz├ílez Betancur     |                 1 |    2139245.78
    39524 | Olga                | Castillo Vargas       |                 1 |    2139164.40
    30723 | Iv├ín                | Chamorro Polan├¡a      |                 1 |    2138726.84
    28032 | Laura               | Rodr├¡guez Ospina      |                 1 |    2138687.10
   130657 | Anc├¡zar             | Chamorro Castro       |                 1 |    2137503.35
    65286 | Luis                | Ortiz Calder├│n        |                 1 |    2137029.97
     9589 | Esteban             | Galvis Moreno         |                 1 |    2136880.08
   129934 | Abelardo Nelson     | Vargas Moreno         |                 1 |    2136754.31
    31198 | Fanny               | Guerrero Lasso        |                 1 |    2136563.85
   140078 | Iv├ín H├®ctor         | Vera Zuluaga          |                 1 |    2136300.32
     1593 | M├│nica              | Sandoval Galvis       |                 1 |    2135014.02
    89896 | Mauricio Libardo    | Losada P├®rez          |                 1 |    2134965.71
    97559 | Antonio             | Duarte Londo├▒o        |                 1 |    2134106.68
    99677 | ├ôscar Ramiro        | Galvis L├│pez          |                 1 |    2133975.13
    37205 | Manuel              | Arias V├®lez           |                 1 |    2132937.90
   116117 | Wilmer Mateo        | C├íceres Rinc├│n        |                 1 |    2131680.00
    79213 | Elsa                | Caicedo Duarte        |                 1 |    2131410.52
    19976 | Ricardo             | Quintero Londo├▒o      |                 1 |    2130666.98
    93395 | Emilio              | Perdomo Trujillo      |                 1 |    2130064.77
    24627 | Heriberto           | Henao Moreno          |                 1 |    2130046.00
    28915 | Fabio               | Ibarra Guti├®rrez      |                 1 |    2126721.87
    11114 | Liliana Sara        | Vera Silva            |                 1 |    2126451.39
    68809 | Guillermo Ramiro    | Ruiz Trujillo         |                 1 |    2126436.11
    48723 | Manuela Isabella    | Pinz├│n Erazo          |                 1 |    2125181.10
    20737 | Luis                | Henao Calder├│n        |                 1 |    2122306.32
    88657 | Rub├®n               | S├ínchez Hern├índez     |                 1 |    2121778.52
    73218 | Jaime               | Rodr├¡guez Romero      |                 1 |    2121316.56
    79387 | Erika               | Galvis Bonilla        |                 1 |    2120784.03
   125234 | Laura               | Londo├▒o Valencia      |                 1 |    2120186.79
   104849 | Wilmer Orlando      | Hern├índez Pe├▒a        |                 1 |    2119939.07
   120076 | Gloria              | P├®rez Calder├│n        |                 1 |    2119028.56
   135377 | Luc├¡a               | L├│pez Pab├│n           |                 1 |    2117033.21
    31726 | Gloria              | Hern├índez Herrera     |                 1 |    2116874.83
    33245 | Yolanda Juliana     | Pe├▒a Betancur         |                 1 |    2116018.38
    13832 | Carolina            | Bedoya Chamorro       |                 1 |    2116014.14
    67386 | Orlando             | Duque Uribe           |                 1 |    2115484.20
   113754 | Juliana             | Erazo Perdomo         |                 1 |    2114289.21
    95061 | Pedro               | Bastidas Bonilla      |                 1 |    2114261.56
    72607 | Jairo               | Su├írez Calder├│n       |                 1 |    2111861.69
   105867 | Luz                 | Benavides Molina      |                 1 |    2110932.24
    55463 | Carolina Alba       | Osorio Gonz├ílez       |                 1 |    2109965.92
    12733 | Pedro               | Erazo Villamizar      |                 1 |    2108470.01
    55305 | ├ôscar               | D├¡az Garc├¡a           |                 1 |    2107669.98
    41232 | Esperanza Alejandra | Contreras Pinz├│n      |                 1 |    2106778.18
    24663 | Jazm├¡n              | Perdomo Rinc├│n        |                 1 |    2106353.06
    65235 | Iv├ín                | Parra Rivera          |                 1 |    2104332.63
    10748 | Gladys              | Mu├▒oz Herrera         |                 1 |    2103517.74
    97456 | Andr├®s              | Molina P├®rez          |                 1 |    2103297.00
    10672 | M├│nica              | Barrera Giraldo       |                 1 |    2103233.45
    93953 | Esteban             | Fl├│rez C├íceres        |                 1 |    2101280.36
    71217 | Fabio               | V├®lez Mosquera        |                 1 |    2100819.32
   143254 | Nelson              | Barrera Mej├¡a         |                 1 |    2100388.95
    30375 | ├ôscar               | Hern├índez Castro      |                 1 |    2099545.63
   126701 | Miguel              | Salazar Carrillo      |                 1 |    2098717.32
    25149 | Viviana             | D├¡az Duque            |                 1 |    2096795.44
   108504 | Juli├ín              | Acevedo C├íceres       |                 1 |    2096671.50
    15426 | Alba Mercedes       | Ibarra Ramos          |                 1 |    2096638.60
   136165 | Blanca              | Gonz├ílez Berm├║dez     |                 1 |    2096023.65
   119709 | Olga                | Duarte Romero         |                 1 |    2093147.67
    73887 | ├ëdgar               | Agudelo Bastidas      |                 1 |    2092514.96
   105864 | Esteban             | Torres Tovar          |                 1 |    2092082.44
    29092 | Camila              | Rivera S├ínchez        |                 1 |    2089896.28
    65813 | Ruth                | Jim├®nez R├¡os          |                 1 |    2086819.82
    60216 | Efra├¡n              | Ortega Lasso          |                 1 |    2086614.75
    19014 | Pedro Hernando      | Arango Osorio         |                 1 |    2086432.43
    65916 | Liliana             | Betancur Polan├¡a      |                 1 |    2084982.00
   112434 | Arturo              | Mar├¡n Rinc├│n          |                 1 |    2083635.02
   126644 | Iv├ín                | Mu├▒oz Zuluaga         |                 1 |    2083474.64
    82639 | Cristian            | Fl├│rez Arango         |                 1 |    2083236.21
    76063 | Brayan              | Ruiz Ram├¡rez          |                 1 |    2081924.15
    76915 | Laura               | Molina Correa         |                 1 |    2081463.34
   106346 | Marcela             | Calder├│n Erazo        |                 1 |    2080507.56
    34453 | Manuela             | Montoya Pinz├│n        |                 1 |    2080279.66
    96639 | Camila              | Rodr├¡guez Uribe       |                 1 |    2078146.30
     6666 | Erika               | Lozano Ram├¡rez        |                 1 |    2077331.37
    21881 | Camilo Mateo        | Jim├®nez Vargas        |                 1 |    2076368.22
    38401 | Sebasti├ín           | Acevedo Cardona       |                 1 |    2076088.96
    85722 | Gladys              | G├│mez P├®rez           |                 1 |    2074891.59
    26508 | Liliana Manuela     | Burbano Ospina        |                 1 |    2074519.36
    39736 | Wilson              | Pe├▒a D├¡az             |                 1 |    2073934.20
    25388 | Ramiro              | Ni├▒o Quintero         |                 1 |    2072893.48
    88470 | ├üngela              | Guerrero Bedoya       |                 1 |    2071808.52
    85595 | Andr├®s              | Serrano C├íceres       |                 1 |    2070965.90
    79593 | Nicol├ís             | Osorio Jim├®nez        |                 1 |    2070759.60
   142399 | Dora                | Guerrero Mej├¡a        |                 1 |    2070311.15
    11170 | Diana               | Vargas Garc├¡a         |                 1 |    2070226.26
     7741 | Germ├ín              | Giraldo Romero        |                 1 |    2068398.54
   134047 | Fabio               | Moreno V├®lez          |                 1 |    2068301.40
    95201 | Olga                | Su├írez Guerrero       |                 1 |    2067861.06
    74389 | Isabella Carolina   | Duque Cu├®llar         |                 1 |    2067589.11
    24514 | Esteban             | Bastidas Lasso        |                 1 |    2067328.69
       73 | Manuel Hernando     | Serrano Mora          |                 1 |    2066649.90
   123676 | Luis                | Mu├▒oz C├íceres         |                 1 |    2066508.00
    89989 | Brayan Diego        | Duque Herrera         |                 1 |    2066124.57
   103682 | Yesenia             | V├®lez Rojas           |                 1 |    2064158.04
    86874 | Yolanda             | Rivera V├®lez          |                 1 |    2063351.21
   134975 | Laura               | Mart├¡nez Duarte       |                 1 |    2062361.92
   137296 | Juliana             | Erazo Correa          |                 1 |    2061912.00
    64721 | Teresa              | Ortiz Prada           |                 1 |    2060129.55
    69854 | Orlando             | Molina Duque          |                 1 |    2058881.44
    55540 | Laura Libardo       | Medina Acevedo        |                 1 |    2057454.93
   123989 | Erika Patricia      | Zuluaga Fl├│rez        |                 1 |    2057249.72
   114324 | M├│nica Viviana      | Londo├▒o Burbano       |                 1 |    2056961.28
    52634 | Mauricio            | Delgado Perdomo       |                 1 |    2056761.49
    34927 | Blanca              | Carrillo Ni├▒o         |                 1 |    2055572.88
   139211 | Miguel              | Moreno Uribe          |                 1 |    2055269.70
   100725 | Luis Gustavo        | Tovar Rodr├¡guez       |                 1 |    2054665.95
    18017 | Heriberto           | Zuluaga Parra         |                 1 |    2054519.04
   128882 | Marleny             | Serrano Sandoval      |                 1 |    2053346.93
   121507 | Andr├®s              | Osorio Sandoval       |                 1 |    2050611.04
   146044 | Mar├¡a               | D├¡az Bastidas         |                 1 |    2050393.32
    80347 | Fanny Sof├¡a         | Silva Barrera         |                 1 |    2050382.44
     6496 | Ricardo Santiago    | L├│pez Carrillo        |                 1 |    2047223.27
    49734 | Brayan              | L├│pez Salazar         |                 1 |    2045956.22
   147010 | Alejandra           | Narv├íez Guerrero      |                 1 |    2044910.55
   131314 | Blanca              | Ramos Mej├¡a           |                 1 |    2044291.92
   111306 | Esteban             | Cu├®llar Guerrero      |                 1 |    2043423.39
   104415 | Gloria              | Agudelo Chamorro      |                 1 |    2043309.42
    28811 | Mateo               | Henao Lozano          |                 1 |    2042428.47
    50352 | Alberto Jos├®        | C├írdenas Rangel       |                 1 |    2041743.71
     2197 | Alejandro           | Zapata V├®lez          |                 1 |    2041465.32
    76314 | Gustavo             | Lozano Barrera        |                 1 |    2038616.02
   128716 | Pedro               | Villamizar Galvis     |                 1 |    2036970.54
    76688 | Diego Samuel        | Garc├¡a Sandoval       |                 2 |    2034572.51
      632 | Sebasti├ín           | Restrepo Castillo     |                 1 |    2034120.64
   142194 | Mar├¡a               | Cu├®llar Zuluaga       |                 1 |    2032311.58
    17103 | Daniel              | Calder├│n Duque        |                 1 |    2031114.36
   111241 | Beatriz             | Berm├║dez Arias        |                 1 |    2028975.14
   142739 | Alba                | Uribe R├¡os            |                 1 |    2028798.51
    10904 | Andr├®s              | Zapata C├írdenas       |                 1 |    2027713.35
    62562 | Rafael              | Vera Delgado          |                 1 |    2027076.84
    98478 | An├¡bal              | Osorio Medina         |                 1 |    2026022.25
   133898 | Luc├¡a               | Erazo Vera            |                 1 |    2021554.54
    82439 | Valentina           | Ibarra Parra          |                 1 |    2021459.48
   116081 | Rub├®n               | Guerrero P├®rez        |                 1 |    2020812.96
   135896 | Orlando             | Ibarra Berm├║dez       |                 1 |    2020533.30
   132482 | Hugo H├®ctor         | Lasso Carrillo        |                 1 |    2019963.20
    59523 | Jaime               | Rivera Cu├®llar        |                 1 |    2019741.48
   127764 | Nubia               | D├¡az Contreras        |                 1 |    2019185.39
    82680 | Guillermo           | Benavides Bonilla     |                 1 |    2019148.08
    75394 | Rosa                | V├®lez Betancur        |                 1 |    2019062.37
    71622 | Gilberto            | Delgado Erazo         |                 1 |    2018468.40
   140217 | Alberto             | Parra Mar├¡n           |                 1 |    2017175.52
    54428 | Elsa Claudia        | Mora P├®rez            |                 1 |    2016919.08
    69049 | Andr├®s              | Calder├│n Burbano      |                 1 |    2016734.24
    38314 | Fanny               | Silva Guti├®rrez       |                 1 |    2016024.78
    76062 | Patricia In├®s       | Mar├¡n G├│mez           |                 1 |    2015579.62
    54726 | Diego               | Mu├▒oz Moreno          |                 1 |    2014089.36
    19736 | Martha Amparo       | Moreno Guti├®rrez      |                 1 |    2012549.59
   115968 | ├ôscar               | C├íceres Pinz├│n        |                 1 |    2011612.35
    56872 | Daniel              | Parra P├®rez           |                 1 |    2011373.00
    26442 | Wilson Rub├®n        | Mej├¡a Mu├▒oz           |                 1 |    2011269.26
    87994 | Manuel Fernando     | Betancur Londo├▒o      |                 1 |    2010493.92
    74879 | Fabio               | S├ínchez Castro        |                 1 |    2010411.30
    58402 | Germ├ín              | Rinc├│n Burbano        |                 1 |    2009965.45
    27638 | Francisco Manuel    | Calder├│n Mosquera     |                 1 |    2008653.81
    15371 | Gloria              | Cu├®llar Londo├▒o       |                 1 |    2008626.77
   117414 | Abelardo            | Serrano Salazar       |                 1 |    2007858.28
   122888 | Erika Aura          | Guti├®rrez Fl├│rez      |                 1 |    2007411.12
    19625 | Natalia Sandra      | L├│pez Fl├│rez          |                 1 |    2007116.68
    46717 | Orlando             | Prada Ruiz            |                 1 |    2006575.67
    88473 | Adriana             | Castillo Burbano      |                 1 |    2006006.90
   112411 | Luis                | Castro Ospina         |                 1 |    2005951.55
    38062 | ├ülvaro Daniel       | Zapata Calder├│n       |                 1 |    2005947.42
   146238 | Gustavo             | G├│mez Mej├¡a           |                 1 |    2004453.00
     8311 | H├®ctor              | Ospina Arias          |                 1 |    2003625.00
    11814 | Blanca              | Galvis Burbano        |                 1 |    2003462.86
   144550 | ├ôscar Andr├®s        | Narv├íez Narv├íez       |                 1 |    2003445.33
    16423 | Yolanda             | Mej├¡a Romero          |                 1 |    2002195.88
   119720 | Ramiro              | Serrano Betancur      |                 1 |    2001528.32
    54807 | Elsa                | L├│pez Londo├▒o         |                 1 |    2000681.99
     5084 | Teresa              | Benavides Contreras   |                 1 |    2000501.92
    23645 | Mauricio ├ëdgar      | Perdomo Sandoval      |                 1 |    1997632.48
    59230 | Gustavo Gilberto    | Pinz├│n Uribe          |                 1 |    1996871.17
    32869 | Pedro Hugo          | Burbano Montoya       |                 1 |    1996746.16
   103957 | Esteban             | Herrera Restrepo      |                 1 |    1996682.22
   146258 | Mauricio            | Jaimes Ibarra         |                 1 |    1996638.06
      935 | Ramiro              | Lasso G├│mez           |                 1 |    1996040.69
    62546 | Brayan              | Perdomo Moreno        |                 1 |    1995609.91
    16221 | Manuel Mauricio     | Mar├¡n Arango          |                 1 |    1995155.06
   121198 | Juli├ín              | Correa Tovar          |                 1 |    1993837.11
    91739 | Lorena              | C├íceres Medina        |                 1 |    1993088.22
   145729 | Ana                 | Ortega Torres         |                 1 |    1991927.91
    60115 | Hernando Sebasti├ín  | Molina Montoya        |                 1 |    1991505.56
   127772 | Efra├¡n              | S├ínchez L├│pez         |                 1 |    1988895.34
    52426 | M├│nica              | Trujillo Hern├índez    |                 1 |    1988411.77
   138894 | Nubia               | Rodr├¡guez Herrera     |                 1 |    1988152.92
    20305 | Yesenia             | Pe├▒a Fl├│rez           |                 1 |    1987871.49
    99245 | Mariana             | G├│mez D├¡az            |                 1 |    1987863.69
   126500 | Roc├¡o               | C├írdenas Benavides    |                 1 |    1987513.59
   116242 | Nicol├ís Antonio     | Ospina C├írdenas       |                 1 |    1987001.28
    15435 | Camilo Fernando     | P├®rez Trujillo        |                 1 |    1985853.09
   119421 | Camilo Alberto      | V├®lez Su├írez          |                 1 |    1985308.71
   135386 | Sara                | Bastidas Moreno       |                 1 |    1984397.73
     7662 | Cristian            | Rivera Chamorro       |                 1 |    1984115.20
   142030 | Camilo Ricardo      | Gonz├ílez Rangel       |                 1 |    1981703.31
     3931 | Jos├®                | Ramos Vargas          |                 1 |    1980625.20
    87482 | Ruth                | Henao Salazar         |                 1 |    1979603.14
     5118 | ├üngela              | Castro Barrera        |                 1 |    1978320.58
   148223 | Valentina           | ├ülvarez C├írdenas      |                 1 |    1978275.20
    91962 | Pedro               | Su├írez Acevedo        |                 1 |    1975405.75
    94497 | Nubia               | Duque Serrano         |                 1 |    1975357.58
    72477 | Mateo Francisco     | Osorio Bonilla        |                 1 |    1974399.18
   130836 | Alba Aura           | Medina Rangel         |                 1 |    1974017.50
   117065 | Teresa              | Burbano Mosquera      |                 1 |    1973883.36
    57048 | Elsa                | Serrano Villamizar    |                 1 |    1973609.76
    44583 | Gloria              | Villamizar Arango     |                 1 |    1973181.00
   127262 | Libardo Javier      | Castro Jim├®nez        |                 1 |    1971791.68
    33180 | ├ülvaro              | Garc├¡a Berm├║dez       |                 1 |    1971445.84
    20771 | Paola               | Ram├¡rez Su├írez        |                 1 |    1970450.98
   148115 | Jorge               | Castillo Bonilla      |                 1 |    1970056.96
    88583 | Valentina Mariana   | Erazo Mora            |                 1 |    1969625.00
    48806 | Pedro Germ├ín        | Ospina Moreno         |                 1 |    1969278.61
    19911 | Mario               | Lasso G├│mez           |                 1 |    1967757.49
    27735 | Jorge               | Polan├¡a Acevedo       |                 1 |    1966853.98
    16789 | Manuel              | Londo├▒o Agudelo       |                 1 |    1965647.65
    14479 | Andr├®s              | Delgado Romero        |                 1 |    1963610.30
    45574 | Abelardo            | Parra Duque           |                 1 |    1963380.58
    95650 | ├ëdgar               | Fl├│rez Ortega         |                 1 |    1962360.00
    31108 | Camilo              | V├®lez Zapata          |                 1 |    1962153.81
    57962 | Elsa                | Correa Zapata         |                 1 |    1961704.85
    97915 | Marleny Teresa      | Barrera Ram├¡rez       |                 1 |    1961544.06
     3031 | Juliana Mariana     | Pe├▒a Salazar          |                 1 |    1961072.53
    38913 | Efra├¡n              | Ibarra Moreno         |                 1 |    1960685.96
   143192 | Pedro               | Rivera C├íceres        |                 1 |    1959769.05
    20920 | Andr├®s Juan         | Moreno Romero         |                 1 |    1959504.75
    70259 | Fanny               | Parra Lozano          |                 1 |    1958594.44
   134081 | Nelson              | Serrano Bastidas      |                 1 |    1958335.04
   108622 | ├ôscar               | Mar├¡n Cu├®llar         |                 1 |    1958276.33
    60045 | Daniela             | Salazar Castillo      |                 1 |    1957146.87
    75258 | Francisco           | Rinc├│n Su├írez         |                 1 |    1956012.06
   134725 | Mauricio            | Herrera Cardona       |                 1 |    1955889.00
   103331 | Paola               | Mora G├│mez            |                 1 |    1955654.70
    34246 | Heriberto           | Lozano Barrera        |                 1 |    1955322.03
   137061 | Hugo                | Medina Ibarra         |                 1 |    1953417.43
    29365 | Yuliana             | Pe├▒a V├®lez            |                 1 |    1952926.41
    98339 | Orlando             | Losada L├│pez          |                 1 |    1952138.40
    61301 | Alejandra Leidy     | Ortega Ni├▒o           |                 1 |    1951736.25
    73220 | Efra├¡n              | Barrera Ospina        |                 1 |    1948921.44
    65951 | Cristian Gilberto   | Villamizar Fl├│rez     |                 1 |    1947708.63
    32833 | ├ôscar Javier        | Serrano Serrano       |                 1 |    1945912.11
    77340 | Camila              | Erazo Rivera          |                 1 |    1945651.92
   120453 | Yuliana Gladys      | Vargas Delgado        |                 1 |    1945159.82
    33195 | Laura               | Perdomo Mora          |                 1 |    1944795.96
    32445 | Wilmer              | Mora Arango           |                 1 |    1944418.35
    62690 | Fabio               | Perdomo Rodr├¡guez     |                 1 |    1943090.75
    90577 | Andr├®s Juan         | Molina Berm├║dez       |                 1 |    1942698.49
    88254 | Mercedes            | Ibarra Delgado        |                 1 |    1942434.20
    36434 | Alba                | Jim├®nez Galvis        |                 1 |    1942164.89
    88147 | Luis                | Moreno Agudelo        |                 1 |    1941597.19
    50968 | Anc├¡zar             | Ortega Carrillo       |                 1 |    1940899.59
    46737 | Rosa                | Parra Ruiz            |                 1 |    1940843.59
     1610 | Javier Hugo         | Lasso Fl├│rez          |                 1 |    1940067.90
    83822 | Aura                | R├¡os Pe├▒a             |                 1 |    1939438.43
    88395 | Beatriz             | Torres D├¡az           |                 1 |    1938897.50
    78537 | Alberto             | S├ínchez Jaimes        |                 1 |    1938648.67
    73530 | Hernando            | Valencia Bonilla      |                 1 |    1938569.48
   104955 | Wilson              | V├®lez Trujillo        |                 1 |    1938471.36
    13491 | Gilberto Libardo    | Delgado Arias         |                 1 |    1938184.41
   141122 | Nelson              | Erazo Londo├▒o         |                 1 |    1937814.90
   104555 | Luis Alberto        | Mosquera Arango       |                 1 |    1935987.43
    29222 | Claudia             | Bonilla Ibarra        |                 1 |    1935750.74
   135969 | Mateo               | Parra Jim├®nez         |                 1 |    1935595.00
    26004 | Miguel Jaime        | Parra Trujillo        |                 1 |    1934282.39
     8553 | Amparo              | Chamorro Mosquera     |                 1 |    1932537.60
    61177 | Ramiro Arturo       | Henao Mar├¡n           |                 1 |    1932448.89
     4930 | Andr├®s              | Ram├¡rez Prada         |                 1 |    1932335.63
    22426 | Luisa               | Castillo Contreras    |                 1 |    1930476.96
    24558 | Rodrigo             | Calder├│n G├│mez        |                 1 |    1930122.21
    76181 | Hugo                | Zuluaga Henao         |                 1 |    1929940.12
    93525 | Jaime               | Pab├│n Lasso           |                 1 |    1929471.48
    86911 | Abelardo Guillermo  | Villamizar Serrano    |                 1 |    1929063.60
   117292 | Arturo              | Sandoval Pab├│n        |                 1 |    1928356.31
   103459 | Heriberto           | Molina Caicedo        |                 1 |    1928017.15
   129641 | Manuela ├üngela      | Chamorro D├¡az         |                 1 |    1927777.32
     9240 | Jos├®                | Rojas Osorio          |                 1 |    1925380.10
    97621 | Andrea              | V├®lez Mora            |                 1 |    1923415.04
    71623 | Juli├ín              | Sandoval Cu├®llar      |                 1 |    1923410.39
    33238 | Viviana             | Mej├¡a Pab├│n           |                 1 |    1921809.33
    86398 | Sebasti├ín           | Jaimes Castillo       |                 1 |    1921174.89
    21096 | Teresa              | Villamizar Agudelo    |                 1 |    1920641.80
   108512 | Marcela             | Jim├®nez Uribe         |                 1 |    1920562.56
   134430 | Ruth Juliana        | Molina Silva          |                 1 |    1920460.38
   116000 | Sandra              | D├¡az Moreno           |                 1 |    1919559.98
    26624 | Javier              | Villamizar Rojas      |                 1 |    1919084.40
    85379 | Manuel              | Mart├¡nez Lozano       |                 1 |    1918987.14
    20211 | Amparo              | Lozano C├írdenas       |                 1 |    1918983.84
     3043 | Heriberto           | Calder├│n Medina       |                 1 |    1915334.02
   110488 | Sara                | Vargas Mart├¡nez       |                 1 |    1915164.76
    11233 | Viviana             | Mart├¡nez Londo├▒o      |                 1 |    1914132.66
    90729 | Cecilia             | Su├írez Guerrero       |                 1 |    1912648.68
    37630 | Sebasti├ín           | G├│mez Moreno          |                 1 |    1912428.63
   130732 | Luisa               | Serrano Rangel        |                 1 |    1910810.78
   101790 | Carlos              | Mosquera Acevedo      |                 1 |    1910108.80
    51177 | Mauricio Yeison     | Vera C├íceres          |                 1 |    1908695.00
   144247 | Juan                | Castillo Restrepo     |                 1 |    1907997.92
    63433 | Luz                 | Berm├║dez Duarte       |                 1 |    1907349.60
    40770 | Jazm├¡n Laura        | Jaimes Trujillo       |                 1 |    1906197.79
    20878 | Claudia Juliana     | Polan├¡a Castro        |                 1 |    1904909.43
    63533 | Gabriela            | Rinc├│n Medina         |                 1 |    1904131.40
   126349 | Samuel              | Berm├║dez Duque        |                 1 |    1903258.09
    79208 | Olga                | Silva Mar├¡n           |                 1 |    1902678.17
    61546 | Diana               | Su├írez Narv├íez        |                 1 |    1902030.72
   127945 | Edilma              | Mej├¡a Pe├▒a            |                 1 |    1900905.00
    88076 | Edilma              | Bastidas Serrano      |                 1 |    1899902.25
    97562 | M├│nica Stella       | Serrano Herrera       |                 1 |    1899633.42
     7276 | Emilio              | Galvis Garc├¡a         |                 1 |    1896491.62
   106302 | Guillermo Jaime     | Arias Zuluaga         |                 1 |    1896365.10
   121179 | Gilberto            | Herrera Duarte        |                 1 |    1896060.12
    65580 | Efra├¡n              | Arango Medina         |                 1 |    1894240.64
   129783 | Mateo               | Medina Ortega         |                 1 |    1894170.78
    21360 | Martha              | Correa Zapata         |                 1 |    1893858.23
    83945 | Laura Claudia       | Molina Chamorro       |                 1 |    1893542.84
    25913 | Orlando Mario       | Rangel Polan├¡a        |                 1 |    1893308.94
    21523 | Pedro               | Tovar Acevedo         |                 1 |    1893268.38
   115430 | Gladys In├®s         | Ni├▒o Mart├¡nez         |                 1 |    1892613.96
   129988 | Luc├¡a Lorena        | Ruiz Herrera          |                 1 |    1892063.60
   126702 | Luisa Luz           | Contreras Correa      |                 1 |    1891832.25
    97636 | Yuliana             | Quintero Gonz├ílez     |                 1 |    1891334.83
    18782 | H├®ctor              | Burbano Pe├▒a          |                 1 |    1890850.02
    51771 | Daniel Alejandro    | Mart├¡nez Burbano      |                 1 |    1890285.36
    81566 | Nelson              | Galvis Correa         |                 1 |    1889994.75
    96106 | Yeison Mateo        | Burbano Galvis        |                 1 |    1888331.91
    29896 | Carlos              | Londo├▒o Losada        |                 1 |    1888164.10
    87069 | Isabella            | Benavides Molina      |                 1 |    1887471.59
    34119 | Wilson Francisco    | Castillo Pe├▒a         |                 1 |    1886478.24
    21913 | Abelardo            | Erazo Chamorro        |                 1 |    1885979.72
    11335 | Dora                | Londo├▒o Sandoval      |                 1 |    1885408.04
    96172 | Camila              | C├íceres Bedoya        |                 1 |    1885151.88
   141662 | Aura                | Rivera Guti├®rrez      |                 1 |    1884857.23
    90279 | Sara Luisa          | Parra Cu├®llar         |                 1 |    1883941.62
    65352 | Pedro               | Narv├íez Carrillo      |                 1 |    1880989.69
    19423 | Reinaldo ├ülvaro     | Vera Arango           |                 1 |    1880552.05
    32259 | Yolanda             | Acevedo Castro        |                 1 |    1880499.20
   121430 | Lorena Claudia      | Castro Berm├║dez       |                 1 |    1879544.44
    39887 | Wilmer              | Fl├│rez Henao          |                 1 |    1878699.48
    56508 | Olga                | Lasso Moreno          |                 1 |    1877302.16
   138809 | Wilson Orlando      | Barrera Herrera       |                 1 |    1874412.08
    16308 | Libardo Diego       | Calder├│n Perdomo      |                 1 |    1872843.10
    76552 | Carlos              | Montoya Ramos         |                 1 |    1872589.42
    39145 | Pedro               | Mora Agudelo          |                 1 |    1872131.85
    20262 | David               | Rodr├¡guez Cu├®llar     |                 1 |    1870787.10
   102151 | Laura Edilma        | Garc├¡a Quintero       |                 1 |    1867951.70
    31236 | Elsa                | Mu├▒oz Jim├®nez         |                 1 |    1867800.38
    48029 | Pedro               | ├ülvarez Garc├¡a        |                 1 |    1867226.48
   117698 | Manuela             | Cabrera Villamizar    |                 1 |    1866664.80
    76147 | Santiago            | Lasso Ruiz            |                 1 |    1866350.03
   130099 | Andr├®s              | Barrera Medina        |                 1 |    1865859.90
   120607 | Nicol├ís             | S├ínchez Betancur      |                 1 |    1865292.87
    44711 | Carolina            | Molina P├®rez          |                 1 |    1864980.25
    19233 | Yolanda Sandra      | C├íceres Jaimes        |                 1 |    1864395.43
    72111 | Stella              | Cardona Arias         |                 1 |    1862917.92
    47437 | Gustavo Mario       | Delgado Pab├│n         |                 1 |    1862007.16
     5401 | Lorena              | Castro Parra          |                 1 |    1861764.44
    96947 | Jos├®                | Quintero Lozano       |                 1 |    1860676.02
   136465 | Mateo               | Rodr├¡guez Silva       |                 1 |    1860670.87
    18208 | Daniel              | Castillo Salazar      |                 1 |    1859972.93
     8879 | Emilio              | Villamizar Gonz├ílez   |                 1 |    1859871.01
   104628 | Isabella            | Rojas Pab├│n           |                 1 |    1859140.78
    57317 | Stella              | Ospina Carrillo       |                 1 |    1859077.68
    16143 | Abelardo            | Ortiz Garc├¡a          |                 1 |    1858590.09
    30879 | Heriberto           | Carrillo Erazo        |                 1 |    1858436.42
    60286 | Sof├¡a               | Mart├¡nez C├íceres      |                 1 |    1856571.70
    76553 | Carmen Valentina    | Tovar Garc├¡a          |                 1 |    1856407.26
   117671 | Camilo              | Vera Quintero         |                 1 |    1856314.53
   128311 | Hugo                | Mosquera Mej├¡a        |                 1 |    1853970.13
    41087 | Heriberto Francisco | Calder├│n Herrera      |                 1 |    1852097.39
    12657 | Beatriz             | Carrillo Osorio       |                 1 |    1851753.45
   107760 | Anc├¡zar             | Ni├▒o Betancur         |                 1 |    1851442.60
    94969 | Jaime               | Rodr├¡guez Agudelo     |                 1 |    1850573.76
   124013 | Luc├¡a               | Zapata Pe├▒a           |                 1 |    1849213.20
   146496 | ├ülvaro              | V├®lez Serrano         |                 1 |    1846927.21
    39098 | Daniel              | Medina Bonilla        |                 1 |    1845790.60
   127112 | Sandra              | Su├írez Gonz├ílez       |                 1 |    1845181.66
    17875 | Beatriz Jazm├¡n      | Agudelo Ram├¡rez       |                 1 |    1845147.34
    58883 | Reinaldo            | Romero Agudelo        |                 1 |    1845072.78
   137744 | Rodrigo             | Delgado Bedoya        |                 1 |    1844775.38
   130233 | Brayan              | Cardona Duque         |                 1 |    1844744.72
   128159 | Mariana Mercedes    | Carrillo Delgado      |                 1 |    1844534.28
   146984 | Luis                | Giraldo Zuluaga       |                 1 |    1843628.01
    59052 | In├®s Blanca         | Rojas ├ülvarez         |                 1 |    1843439.88
   129498 | Esteban             | Cabrera Trujillo      |                 1 |    1841980.58
    99326 | M├│nica Fanny        | Correa Cu├®llar        |                 1 |    1840924.27
    68660 | Esperanza           | Molina Salazar        |                 1 |    1840682.34
    64873 | Camila              | Ibarra Serrano        |                 1 |    1839025.89
   131793 | Luc├¡a               | Su├írez Lozano         |                 1 |    1839010.82
   133577 | Mario Abelardo      | Acevedo Berm├║dez      |                 1 |    1838252.50
    92029 | Liliana Valentina   | Jim├®nez P├®rez         |                 1 |    1838099.76
     8440 | ├ôscar               | Castillo Mora         |                 1 |    1837276.66
     2696 | Juan                | Salazar Mart├¡nez      |                 1 |    1835874.03
   135077 | Rub├®n               | Ni├▒o Mora             |                 1 |    1834524.54
    43030 | Wilson              | Rangel Betancur       |                 1 |    1833950.36
    64891 | Claudia             | Bastidas Romero       |                 1 |    1833437.34
    54278 | An├¡bal              | Sandoval Bastidas     |                 1 |    1833363.72
   128906 | An├¡bal              | Contreras Berm├║dez    |                 1 |    1832361.77
    80231 | Juli├ín              | Ortega Ramos          |                 1 |    1832206.47
    72092 | Sandra              | Ram├¡rez Su├írez        |                 1 |    1832204.11
    53140 | Carolina            | L├│pez Serrano         |                 1 |    1831363.48
     2309 | Hernando            | Herrera Giraldo       |                 1 |    1830507.75
     4330 | Mario               | Pab├│n Erazo           |                 1 |    1829888.25
    41567 | Santiago            | Ibarra C├írdenas       |                 1 |    1829714.25
    55014 | Ramiro              | Silva Sandoval        |                 1 |    1829104.20
    30185 | Rodrigo             | Polan├¡a Correa        |                 1 |    1828745.27
    63994 | Anc├¡zar             | D├¡az Contreras        |                 1 |    1828742.43
    38892 | Laura               | Arango Giraldo        |                 1 |    1827756.18
   126174 | Gustavo             | Zuluaga Sandoval      |                 1 |    1827636.11
    10126 | Manuel              | Duarte Moreno         |                 1 |    1826295.42
    85470 | Carlos Nelson       | Su├írez Villamizar     |                 1 |    1826262.90
    35842 | Antonio Hugo        | Polan├¡a Ramos         |                 1 |    1825826.94
   118007 | Gloria              | Polan├¡a Agudelo       |                 1 |    1824702.28
    66498 | Rub├®n Luis          | Ruiz V├®lez            |                 1 |    1823066.22
    11124 | Santiago            | Herrera Hern├índez     |                 1 |    1823052.79
    36260 | Heriberto Efra├¡n    | ├ülvarez Castro        |                 1 |    1822664.48
    52896 | Emilio              | Bonilla Burbano       |                 1 |    1822431.96
   106788 | Martha Sara         | Contreras Vargas      |                 1 |    1821727.82
    64618 | Luz                 | Vera Lasso            |                 1 |    1820187.92
   127848 | Isabella            | Rodr├¡guez Caicedo     |                 1 |    1820180.92
    10469 | Javier              | Rojas Rivera          |                 1 |    1818235.35
    39368 | Elsa                | Ruiz Rodr├¡guez        |                 1 |    1816783.02
    27558 | Diego               | R├¡os Guti├®rrez        |                 1 |    1816377.04
     4462 | Rosa                | G├│mez Mosquera        |                 1 |    1814702.72
    30647 | Anc├¡zar ├ülvaro      | Ram├¡rez Rojas         |                 1 |    1814208.10
    56695 | Luis Jorge          | Parra Castillo        |                 1 |    1812191.22
     6236 | Aura Marcela        | Barrera Gonz├ílez      |                 1 |    1812061.81
    27416 | Ana                 | Cu├®llar Hern├índez     |                 1 |    1811757.03
    32129 | Mar├¡a Gloria        | Quintero Polan├¡a      |                 1 |    1810987.50
    68201 | Nicol├ís             | V├®lez Ramos           |                 1 |    1810884.22
    80978 | Arturo              | Jim├®nez Restrepo      |                 1 |    1809866.80
   100123 | Stella              | Mora Ortiz            |                 1 |    1808373.01
   113662 | Sara                | Pinz├│n Lozano         |                 1 |    1808031.90
     3994 | Edilma Ruth         | Losada Ni├▒o           |                 1 |    1807050.28
    70407 | Daniel              | Rinc├│n Cabrera        |                 1 |    1806268.63
   132730 | Jaime               | Silva Moreno          |                 1 |    1805971.79
      766 | Hernando            | Guti├®rrez Gonz├ílez    |                 1 |    1805096.96
   102117 | Esperanza           | Montoya Rivera        |                 1 |    1804508.49
    26818 | Yuliana             | Jaimes Gonz├ílez       |                 1 |    1803786.81
    84916 | Marleny             | Guerrero Ruiz         |                 1 |    1803149.40
    62184 | Ana                 | Mu├▒oz Polan├¡a         |                 1 |    1803065.98
    93691 | Jorge               | Losada Correa         |                 1 |    1802619.48
    67576 | Mercedes Yesenia    | Acevedo Mart├¡nez      |                 1 |    1802204.25
    41333 | Fabio               | Vargas Ortega         |                 1 |    1801381.99
    49493 | Diana               | Rivera Mosquera       |                 1 |    1801249.54
    22879 | Juli├ín              | Castillo Chamorro     |                 1 |    1800591.24
    95644 | Elsa                | Ram├¡rez Torres        |                 1 |    1800517.20
    43029 | Juan Pedro          | Sandoval Polan├¡a      |                 1 |    1799835.39
    30959 | Adriana Olga        | Bedoya Giraldo        |                 1 |    1799722.00
    81560 | Mar├¡a               | Mar├¡n Valencia        |                 1 |    1798772.04
    33177 | Rafael Manuel       | Vargas Zuluaga        |                 1 |    1798761.84
    26239 | Carolina            | Berm├║dez C├íceres      |                 1 |    1798305.65
    10756 | Libardo             | Restrepo Jim├®nez      |                 1 |    1798011.39
   127106 | Yuliana             | Benavides G├│mez       |                 1 |    1797982.52
   140672 | Ruth Diana          | Ibarra Garc├¡a         |                 1 |    1797644.88
    48846 | Carlos              | Restrepo Ni├▒o         |                 1 |    1797632.28
   129658 | Sara                | Henao Ospina          |                 1 |    1797339.36
   119688 | Gilberto            | Mu├▒oz Tovar           |                 1 |    1796449.02
    70573 | Juan Germ├ín         | Ortega Burbano        |                 1 |    1796444.76
    39292 | Blanca Elsa         | Calder├│n Ospina       |                 1 |    1792504.96
    78600 | Juliana             | Henao Mu├▒oz           |                 1 |    1791709.92
    30933 | Wilson              | Ortiz D├¡az            |                 1 |    1790996.26
   131294 | Marcela             | C├írdenas Ibarra       |                 1 |    1789868.47
    49730 | Ricardo David       | Sandoval Betancur     |                 1 |    1789829.02
    33596 | Antonio Alejandro   | Pe├▒a Prada            |                 1 |    1789408.99
    93605 | Felipe              | P├®rez Zapata          |                 1 |    1787175.32
      654 | Sandra              | Arias Duarte          |                 1 |    1786305.71
    57180 | Wilson              | D├¡az Guerrero         |                 1 |    1785861.00
    25658 | Sebasti├ín Nelson    | Bastidas Restrepo     |                 1 |    1785413.00
    81865 | Manuel              | Mu├▒oz Rodr├¡guez       |                 1 |    1783864.26
    81514 | An├¡bal              | Contreras Londo├▒o     |                 1 |    1783778.10
    79712 | Alejandra           | Herrera Castro        |                 1 |    1783570.72
    21329 | Miguel              | Gonz├ílez Pe├▒a         |                 1 |    1781937.20
    52385 | Hernando            | Rodr├¡guez Jaimes      |                 1 |    1781833.94
   118198 | Mateo               | Giraldo Montoya       |                 1 |    1781439.24
     5273 | Cristian David      | ├ülvarez Romero        |                 1 |    1780979.55
   148382 | Sof├¡a               | Henao C├íceres         |                 1 |    1778340.36
    12238 | Nicol├ís Camilo      | ├ülvarez Fl├│rez        |                 1 |    1775881.60
   130454 | Ricardo             | Betancur Chamorro     |                 1 |    1775270.98
   110208 | Rafael Ramiro       | Rinc├│n Rivera         |                 1 |    1775050.85
    24019 | Erika               | Ni├▒o ├ülvarez          |                 1 |    1774849.81
    38427 | Mauricio            | Bedoya Arias          |                 1 |    1774760.05
     9062 | Anc├¡zar             | Ortiz Agudelo         |                 1 |    1772014.25
    48244 | Mateo               | Rodr├¡guez Hern├índez   |                 1 |    1771694.62
   123063 | Gabriela Liliana    | Cu├®llar Herrera       |                 1 |    1771435.52
   104480 | Yesenia             | Ibarra Castro         |                 1 |    1771232.73
   126290 | Carlos              | L├│pez Arango          |                 1 |    1770506.08
     6171 | Fernando            | Betancur Parra        |                 1 |    1769931.80
    11421 | Brayan              | Barrera Pinz├│n        |                 1 |    1768580.04
    27260 | Amparo Edilma       | Zuluaga Salazar       |                 1 |    1766984.28
    19506 | Claudia             | Mu├▒oz Arias           |                 1 |    1765918.66
    16265 | Anc├¡zar             | Serrano Romero        |                 1 |    1765208.61
    29284 | Diana Gloria        | Tovar Narv├íez         |                 1 |    1764914.67
   115538 | Ramiro              | Molina Cardona        |                 1 |    1764023.52
    79788 | Gabriela            | Mosquera Mart├¡nez     |                 1 |    1763996.86
     7464 | Yeison              | Fl├│rez Trujillo       |                 1 |    1763707.35
     1204 | Anc├¡zar             | Uribe G├│mez           |                 1 |    1762888.42
    89518 | Aura                | Sandoval Romero       |                 1 |    1762798.10
    27878 | Yesenia Juliana     | Ni├▒o Ibarra           |                 1 |    1762459.58
   108776 | Alejandra           | ├ülvarez Caicedo       |                 1 |    1762009.20
    93649 | Liliana             | Rinc├│n Mar├¡n          |                 1 |    1761518.58
    10110 | Ricardo             | Mart├¡nez Ortiz        |                 1 |    1760467.73
   116418 | Antonio             | Ramos Molina          |                 1 |    1758773.86
    85048 | Mauricio            | Galvis Trujillo       |                 1 |    1757941.92
    25533 | Brayan              | Benavides S├ínchez     |                 1 |    1757870.40
    21571 | David               | Ramos Osorio          |                 1 |    1757187.72
   136004 | Manuel              | Duarte Rangel         |                 1 |    1756783.84
    56029 | Santiago            | Castillo Narv├íez      |                 1 |    1755886.67
   131288 | Orlando             | Betancur Carrillo     |                 1 |    1752713.97
   130862 | Carlos Santiago     | Londo├▒o Ospina        |                 1 |    1752088.50
    96830 | Jaime H├®ctor        | Trujillo Pab├│n        |                 1 |    1748527.77
     4082 | Elsa                | Jaimes Ni├▒o           |                 1 |    1748254.96
    42769 | Jairo               | Medina V├®lez          |                 1 |    1748222.34
   107350 | Alba Leidy          | Zuluaga Caicedo       |                 1 |    1747730.78
    71487 | Amparo              | Mar├¡n Castro          |                 1 |    1746400.46
   106064 | ├ëdgar               | Zuluaga Mora          |                 1 |    1745935.60
    90612 | Esperanza           | Rangel Delgado        |                 1 |    1744290.32
     2339 | Juan                | Trujillo Valencia     |                 1 |    1744108.79
    47581 | Nelson              | Calder├│n Calder├│n     |                 1 |    1743304.59
     5518 | Efra├¡n              | Fl├│rez Rivera         |                 1 |    1742969.52
    25605 | Gladys              | Hern├índez Moreno      |                 1 |    1741928.20
    62110 | Laura               | Fl├│rez Contreras      |                 1 |    1740516.47
    47291 | Camilo              | Rojas Rodr├¡guez       |                 1 |    1740097.45
    22996 | Emilio ├ülvaro       | Mart├¡nez Acevedo      |                 1 |    1739991.12
    90123 | Laura               | Moreno Arango         |                 1 |    1739990.98
    41358 | Mar├¡a               | Valencia Sandoval     |                 1 |    1739222.13
   132199 | Mar├¡a               | Chamorro Uribe        |                 1 |    1737336.05
    68697 | An├¡bal Heriberto    | Osorio Rodr├¡guez      |                 1 |    1737322.22
   111710 | Carolina            | ├ülvarez Ortiz         |                 1 |    1737221.16
   113926 | Antonio             | C├íceres Torres        |                 1 |    1737098.74
   114430 | Aura                | Arias Castillo        |                 1 |    1734726.76
   149746 | Alberto Abelardo    | Silva Pinz├│n          |                 1 |    1734249.63
    13298 | Blanca              | D├¡az Lozano           |                 1 |    1734114.18
    11501 | Javier              | Vargas Garc├¡a         |                 1 |    1733424.12
    52348 | Luis                | Lasso Bonilla         |                 1 |    1733211.09
   113381 | Esperanza           | Mar├¡n Rivera          |                 1 |    1733056.80
   148278 | Mario               | Mora Barrera          |                 1 |    1732544.07
    62642 | An├¡bal              | Rivera Silva          |                 1 |    1731760.60
     1852 | Edilma M├│nica       | Vargas Duque          |                 1 |    1731422.12
   129118 | Paola               | Barrera Lozano        |                 1 |    1731366.90
   131412 | Jairo               | Gonz├ílez Contreras    |                 1 |    1729039.20
    65256 | Patricia            | Duque Romero          |                 1 |    1727275.24
     2697 | Mauricio            | Su├írez Duarte         |                 1 |    1726041.46
   122536 | Gabriela            | Hern├índez Burbano     |                 1 |    1726024.20
    71844 | Abelardo Gustavo    | Ortega Betancur       |                 1 |    1725643.49
   146894 | Felipe              | Correa Tovar          |                 1 |    1725636.80
    28301 | Orlando Jairo       | Rodr├¡guez Restrepo    |                 1 |    1725518.82
    39450 | Jos├®                | Londo├▒o Erazo         |                 1 |    1724904.48
    87971 | ├ôscar               | Guerrero Bastidas     |                 1 |    1724356.37
    26116 | Jorge               | Herrera Parra         |                 1 |    1723412.37
   115617 | Olga Elsa           | Rojas C├íceres         |                 1 |    1723226.76
    34388 | Diego               | Valencia Cardona      |                 1 |    1723162.84
    76698 | Valentina           | D├¡az Contreras        |                 1 |    1723123.58
   131447 | Yesenia             | Duarte Vera           |                 1 |    1722764.40
    74448 | Marcela Sof├¡a       | Delgado Carrillo      |                 1 |    1722329.64
   148951 | Yolanda             | Cabrera Acevedo       |                 1 |    1721809.40
    15749 | Manuela             | Rangel Chamorro       |                 1 |    1721751.64
     8105 | ├ôscar               | Montoya Perdomo       |                 1 |    1721730.84
    93771 | Natalia Luz         | R├¡os Guerrero         |                 1 |    1721711.77
   134112 | Amparo              | Duarte Bedoya         |                 1 |    1721548.86
   103269 | Claudia             | Mora Garc├¡a           |                 1 |    1721167.80
     5588 | Laura               | Silva Ortega          |                 1 |    1721105.22
   106022 | Arturo              | Uribe ├ülvarez         |                 1 |    1719380.00
    54262 | Nelson Luis         | Calder├│n Tovar        |                 1 |    1718835.50
    81652 | Rafael              | Arango Betancur       |                 1 |    1717721.76
    99382 | Fernando            | Pe├▒a Rodr├¡guez        |                 1 |    1716224.65
    95664 | Alba                | Berm├║dez Delgado      |                 1 |    1716020.47
   133997 | Mercedes            | Castillo Vera         |                 1 |    1714443.71
    39364 | Daniela Olga        | Contreras Ni├▒o        |                 1 |    1714110.36
    45248 | Mario               | Londo├▒o Henao         |                 1 |    1713306.00
   140167 | Alberto             | Cabrera Galvis        |                 1 |    1711631.04
   129186 | Stella              | Ortega Quintero       |                 1 |    1710919.90
    59434 | Jorge               | Giraldo Vera          |                 1 |    1708723.78
   125227 | Marleny Beatriz     | Molina Garc├¡a         |                 1 |    1708614.73
    82708 | Abelardo Brayan     | Mart├¡nez Guerrero     |                 1 |    1707188.34
    54582 | Daniela             | Serrano Jim├®nez       |                 1 |    1706290.81
    98866 | H├®ctor              | Vera Carrillo         |                 1 |    1706143.20
    37790 | Javier              | Duque Ramos           |                 1 |    1705663.89
    66985 | Ruth                | Rodr├¡guez P├®rez       |                 1 |    1705159.78
    45634 | Jorge               | C├íceres Carrillo      |                 1 |    1703800.43
   130431 | Dora                | Contreras Jim├®nez     |                 1 |    1703576.17
    77061 | Natalia Diego       | Ibarra Mart├¡nez       |                 1 |    1702617.17
    62871 | Reinaldo            | Guti├®rrez Su├írez      |                 1 |    1702103.64
    59673 | Ramiro              | Ibarra R├¡os           |                 1 |    1701993.90
   101729 | Rodrigo             | Medina Giraldo        |                 1 |    1701403.52
    23289 | Jairo               | S├ínchez C├írdenas      |                 1 |    1699852.08
    91569 | Orlando             | Rojas Mej├¡a           |                 1 |    1699785.71
    89165 | Mar├¡a               | Betancur Agudelo      |                 1 |    1697731.06
      377 | Jairo Miguel        | Bedoya Zuluaga        |                 1 |    1697388.69
   140448 | Fabio               | C├írdenas Delgado      |                 1 |    1696603.52
    65478 | Nelson              | Bedoya Henao          |                 1 |    1694925.02
     1051 | Beatriz             | Uribe Medina          |                 1 |    1694312.28
    24943 | Diana Gabriela      | Parra Carrillo        |                 1 |    1693069.70
   100000 | Jos├®                | ├ülvarez Mosquera      |                 1 |    1692032.21
    34939 | Ana                 | Mej├¡a Restrepo        |                 1 |    1691401.56
   139346 | ├ülvaro              | Salazar Parra         |                 1 |    1690792.11
    82220 | Guillermo           | Uribe Mart├¡nez        |                 1 |    1688860.17
    88545 | Fanny               | Galvis G├│mez          |                 1 |    1688521.01
   104970 | An├¡bal              | Henao Sandoval        |                 1 |    1688440.00
    85485 | Camila              | Vera Benavides        |                 1 |    1688169.35
   117751 | Abelardo Ricardo    | Ospina Guti├®rrez      |                 1 |    1687413.49
    33816 | Anc├¡zar Reinaldo    | Mu├▒oz G├│mez           |                 1 |    1687231.95
    29253 | Sara Rosa           | Osorio S├ínchez        |                 1 |    1687219.74
    23510 | M├│nica              | Sandoval Mej├¡a        |                 1 |    1685829.91
    67371 | Edilma Beatriz      | Giraldo ├ülvarez       |                 1 |    1685221.02
    31248 | Santiago            | Zapata Bastidas       |                 1 |    1684520.90
    26848 | Mario               | Vargas Chamorro       |                 1 |    1684077.12
     5261 | Orlando             | Perdomo Contreras     |                 1 |    1683586.62
    44595 | Nelson Germ├ín       | Bastidas Moreno       |                 1 |    1683202.08
    93574 | Camilo              | Silva Quintero        |                 1 |    1681051.48
    96795 | Brayan Ramiro       | Jim├®nez Arango        |                 1 |    1680820.65
   100741 | ├üngela              | Narv├íez Betancur      |                 1 |    1680357.60
    92512 | Fernando            | Torres Henao          |                 1 |    1679813.59
   143984 | An├¡bal              | Valencia Guerrero     |                 1 |    1679573.19
   138241 | Jos├®                | Giraldo Medina        |                 1 |    1677297.82
    31215 | Blanca              | Lozano Mej├¡a          |                 1 |    1677112.14
    60469 | Edilma              | Ortega Restrepo       |                 1 |    1674500.86
   124764 | Diego               | V├®lez C├írdenas        |                 1 |    1674244.80
   141129 | Fabio               | Trujillo Losada       |                 1 |    1673926.82
    79266 | Yeison              | Barrera D├¡az          |                 1 |    1673729.40
    20462 | Sebasti├ín           | Serrano Jaimes        |                 1 |    1671284.25
    43136 | Juliana             | Quintero Guerrero     |                 1 |    1669759.17
    88032 | Mauricio            | Ortega V├®lez          |                 1 |    1668625.45
   111688 | Jaime               | Correa Benavides      |                 1 |    1668527.85
   140405 | Fanny               | Castro Bedoya         |                 1 |    1667148.93
   127512 | Gabriela            | Jaimes Jim├®nez        |                 1 |    1664882.65
    23319 | Wilmer              | Salazar Rojas         |                 1 |    1664603.00
   124922 | Jorge               | Pab├│n Ortega          |                 1 |    1664589.32
    14527 | Dora                | Henao Agudelo         |                 1 |    1663847.74
     7217 | Francisco           | Betancur Rodr├¡guez    |                 1 |    1660613.36
   119647 | H├®ctor              | Molina Parra          |                 1 |    1660553.27
    13416 | Javier David        | Ramos Montoya         |                 1 |    1659907.39
    29742 | Blanca              | Polan├¡a Polan├¡a       |                 1 |    1659795.34
    67478 | Carolina            | Henao Castillo        |                 1 |    1657273.80
     2947 | Jos├®                | Pab├│n Agudelo         |                 1 |    1653840.75
    11323 | In├®s                | Mu├▒oz Salazar         |                 1 |    1653602.50
   133878 | Hugo Ramiro         | Lasso Galvis          |                 1 |    1653359.79
    56492 | Mauricio            | Henao Bedoya          |                 1 |    1653339.54
    88031 | Cristian Hugo       | Villamizar Ramos      |                 1 |    1651325.00
    13090 | Myriam              | L├│pez Duque           |                 1 |    1650878.85
    74751 | Santiago Cristian   | Cardona Guerrero      |                 1 |    1648678.18
    81590 | Dora                | Agudelo Barrera       |                 1 |    1644215.20
    79095 | Dora                | P├®rez Ni├▒o            |                 1 |    1643906.83
   126985 | Carolina Yolanda    | Rodr├¡guez ├ülvarez     |                 1 |    1642748.40
   128767 | Andr├®s              | Giraldo Cardona       |                 1 |    1640767.39
   117298 | Wilmer              | Chamorro Ramos        |                 1 |    1640599.80
    48665 | ├ôscar               | Mu├▒oz Mosquera        |                 1 |    1640362.76
    38588 | Iv├ín                | Ortiz Silva           |                 1 |    1638298.08
    35316 | Fabio Cristian      | Torres Pab├│n          |                 1 |    1637705.73
   133605 | Carlos              | Agudelo Moreno        |                 1 |    1637699.96
   113167 | Wilson              | Ruiz Romero           |                 1 |    1636494.16
   105695 | Mauricio Mario      | Villamizar Carrillo   |                 1 |    1635181.01
    80433 | Mateo               | Polan├¡a Garc├¡a        |                 1 |    1633757.65
    89626 | Leidy               | Cardona Sandoval      |                 1 |    1633388.67
    48622 | Yeison Mateo        | Mu├▒oz Garc├¡a          |                 1 |    1631505.77
    85867 | Yuliana Paola       | Quintero V├®lez        |                 1 |    1631187.14
    84636 | Hugo                | Jim├®nez Barrera       |                 1 |    1630843.12
    16941 | Alejandra           | Rodr├¡guez Zapata      |                 1 |    1630386.80
   108035 | Antonio             | Ruiz Arias            |                 1 |    1628132.85
    97879 | Valentina           | Cardona Mart├¡nez      |                 1 |    1627755.78
    31208 | Gladys              | Agudelo Tovar         |                 1 |    1627336.09
    83275 | Iv├ín                | Moreno Ruiz           |                 1 |    1624133.48
   119062 | Liliana Stella      | Silva Erazo           |                 1 |    1623795.60
    50638 | Diego               | Su├írez Ortiz          |                 1 |    1622707.02
    91850 | Daniel              | Torres Guerrero       |                 1 |    1622675.81
    77443 | Hernando            | Prada Ruiz            |                 1 |    1621633.00
    85401 | Lorena              | Medina Montoya        |                 1 |    1621295.24
   136315 | Esteban             | Guerrero Ni├▒o         |                 1 |    1620954.49
    63027 | Martha              | Hern├índez Vargas      |                 1 |    1620610.42
    80926 | Paola               | Mart├¡nez Agudelo      |                 1 |    1620505.02
    70016 | Marcela             | Caicedo Lasso         |                 1 |    1620351.80
    21652 | Yeison              | Arango Carrillo       |                 1 |    1620351.20
     6002 | Francisco Juan      | Ruiz Ni├▒o             |                 1 |    1620232.90
    50020 | Emilio              | Henao Moreno          |                 1 |    1620213.92
    69949 | Daniela             | Giraldo Ortega        |                 1 |    1620063.90
    70845 | Emilio              | Carrillo Mu├▒oz        |                 1 |    1619019.64
    37455 | An├¡bal              | Valencia Mar├¡n        |                 1 |    1618099.14
    57340 | Miguel              | Salazar Delgado       |                 1 |    1617426.06
    92965 | Patricia            | Perdomo Polan├¡a       |                 1 |    1617110.04
   145550 | H├®ctor              | Zuluaga Ospina        |                 1 |    1614469.15
    75256 | Claudia             | Benavides Caicedo     |                 1 |    1613983.67
    80453 | Fanny               | Pab├│n R├¡os            |                 1 |    1613660.12
   147934 | Andr├®s              | Ramos Hern├índez       |                 1 |    1613580.50
   117005 | Rodrigo             | Lozano Rodr├¡guez      |                 1 |    1612569.72
    59741 | Ruth                | Cabrera Polan├¡a       |                 1 |    1611771.46
   143417 | Luc├¡a               | Bastidas Galvis       |                 1 |    1611336.90
    41756 | Fanny Sara          | Bonilla Ni├▒o          |                 1 |    1610335.38
    43826 | Ricardo             | Villamizar Contreras  |                 1 |    1609030.90
    31446 | Beatriz Leidy       | Uribe Romero          |                 1 |    1608920.61
   140393 | Beatriz             | Mosquera Ortiz        |                 1 |    1607195.67
   138047 | Javier              | Arango Osorio         |                 1 |    1606163.99
   103870 | Isabella Aura       | Betancur Chamorro     |                 1 |    1605998.94
    50443 | Myriam              | Losada Castillo       |                 1 |    1605760.80
    32897 | Pedro               | Arias V├®lez           |                 1 |    1605650.99
   124430 | Viviana             | Castro Medina         |                 1 |    1605094.65
    86022 | Luc├¡a               | Romero R├¡os           |                 1 |    1602723.35
   130371 | Juan                | Polan├¡a Giraldo       |                 1 |    1602446.81
    22377 | Stella              | Osorio C├íceres        |                 1 |    1597497.61
   113938 | Patricia            | Vera Galvis           |                 1 |    1595473.69
    48511 | Anc├¡zar Guillermo   | Silva Silva           |                 1 |    1595222.69
    19587 | H├®ctor              | Rangel Molina         |                 1 |    1594325.04
   134008 | Juli├ín              | Ni├▒o Trujillo         |                 1 |    1594299.65
    52688 | Liliana             | Chamorro Ibarra       |                 1 |    1593764.64
   126225 | Alberto             | Narv├íez Ram├¡rez       |                 1 |    1592402.28
    65322 | Diana Leidy         | Prada Guti├®rrez       |                 1 |    1592270.48
     4300 | Yuliana             | Zapata Duarte         |                 1 |    1592068.20
    42762 | Wilmer              | Galvis Benavides      |                 1 |    1591978.12
    44096 | Hernando            | Lozano Londo├▒o        |                 1 |    1591731.80
    94664 | Erika               | Giraldo Bastidas      |                 1 |    1591253.40
   126353 | Orlando Fernando    | G├│mez Londo├▒o         |                 1 |    1590888.15
    33135 | Ana                 | Medina Bonilla        |                 1 |    1588928.86
   103060 | Juliana ├üngela      | Su├írez Ortiz          |                 1 |    1588799.68
    71456 | Wilmer              | Barrera Herrera       |                 1 |    1588658.79
    70107 | Heriberto           | Mart├¡nez Herrera      |                 1 |    1588167.51
   146459 | Jorge Hernando      | S├ínchez Agudelo       |                 1 |    1587936.15
    72036 | Rub├®n Ricardo       | Molina Castro         |                 1 |    1587914.99
   121464 | Wilson              | Rivera Quintero       |                 1 |    1587285.83
    58009 | Ricardo             | Ortiz Ortiz           |                 1 |    1585741.30
    33233 | Iv├ín                | Su├írez Losada         |                 1 |    1584409.26
    58850 | Gloria              | Restrepo Mosquera     |                 1 |    1582760.81
    49670 | Sandra              | Caicedo Ortega        |                 1 |    1582246.98
    76008 | Alba Luc├¡a          | Delgado Guerrero      |                 1 |    1581234.53
    74000 | Iv├ín Jos├®           | Vargas Bedoya         |                 1 |    1580719.69
    82075 | Iv├ín                | Londo├▒o Acevedo       |                 1 |    1580467.07
    45632 | Mar├¡a               | Bonilla Parra         |                 1 |    1580387.20
   149701 | Iv├ín Yeison         | Ni├▒o L├│pez            |                 1 |    1579654.27
    93932 | Isabella            | Valencia R├¡os         |                 1 |    1575524.65
    45359 | Abelardo            | Osorio Burbano        |                 1 |    1575250.56
    84752 | Antonio Manuel      | Chamorro Betancur     |                 1 |    1573905.99
    67616 | Yuliana Liliana     | Duarte Pinz├│n         |                 1 |    1571865.57
   121206 | Orlando             | Salazar Bonilla       |                 1 |    1571685.12
    65872 | Antonio             | Serrano Agudelo       |                 1 |    1571454.35
    27364 | Yesenia Leidy       | Tovar Henao           |                 1 |    1566858.80
    76612 | Fabio               | Acevedo S├ínchez       |                 1 |    1566404.55
   116246 | Sara                | Mar├¡n Trujillo        |                 1 |    1563986.01
   137811 | Sof├¡a               | Prada Bonilla         |                 1 |    1562354.74
    67761 | Gustavo             | Bastidas Ospina       |                 1 |    1560988.38
   112343 | Santiago            | Valencia Galvis       |                 1 |    1560009.76
   148303 | Nubia Luz           | Montoya Trujillo      |                 1 |    1559614.71
    60218 | Ramiro Iv├ín         | Castillo Carrillo     |                 1 |    1558417.40
   143567 | Heriberto Antonio   | Moreno Londo├▒o        |                 1 |    1557662.75
    99135 | Marleny             | Cabrera Barrera       |                 1 |    1557612.16
    82907 | Jairo               | Herrera Salazar       |                 1 |    1557366.44
    23977 | Juli├ín              | Montoya Pab├│n         |                 1 |    1557162.24
   126992 | Nicol├ís             | Romero Guerrero       |                 1 |    1556889.60
    90961 | Rosa Luc├¡a          | Torres Chamorro       |                 1 |    1556388.24
   143951 | Javier              | Betancur Romero       |                 1 |    1555306.90
    55249 | Elsa                | Giraldo D├¡az          |                 1 |    1554842.06
    21887 | Hugo Fernando       | Chamorro Berm├║dez     |                 1 |    1554144.70
   138692 | Pedro Gilberto      | Rangel R├¡os           |                 1 |    1552406.79
     3632 | Sof├¡a Dora          | Delgado Su├írez        |                 1 |    1551930.47
    23710 | Leidy Marcela       | Barrera Sandoval      |                 1 |    1551832.84
    47882 | Gustavo Camilo      | Galvis L├│pez          |                 1 |    1551222.67
   117384 | Gladys              | Rivera Duarte         |                 1 |    1550348.80
    10138 | Francisco           | Calder├│n Lozano       |                 1 |    1549576.75
     1238 | Marcela             | Benavides Delgado     |                 1 |    1549446.86
    23046 | Yeison Diego        | Chamorro Pab├│n        |                 1 |    1548303.13
    26632 | Gustavo             | Duque Gonz├ílez        |                 1 |    1547781.77
    48732 | Anc├¡zar             | Acevedo Rinc├│n        |                 1 |    1546495.24
    32601 | M├│nica              | Ram├¡rez Molina        |                 1 |    1546090.61
    37621 | Mar├¡a               | Quintero Duque        |                 1 |    1545649.64
    79849 | Ana                 | Polan├¡a V├®lez         |                 1 |    1544451.48
    34136 | Iv├ín                | Hern├índez Chamorro    |                 1 |    1538300.64
    80486 | Carolina            | Correa Acevedo        |                 1 |    1536005.44
    16459 | Carolina Marcela    | Uribe Betancur        |                 1 |    1535526.84
    52272 | Diana Alba          | Mart├¡nez Cu├®llar      |                 1 |    1535489.86
    28517 | Luisa               | Calder├│n Pe├▒a         |                 1 |    1533742.26
   107070 | Fabio               | C├írdenas D├¡az         |                 1 |    1533715.96
    72920 | Wilmer              | Duarte Vera           |                 1 |    1531658.60
    35686 | Yesenia             | Henao Pab├│n           |                 1 |    1531495.63
    35697 | Francisco           | Pinz├│n Berm├║dez       |                 1 |    1529633.41
    70544 | Luc├¡a               | Hern├índez Erazo       |                 1 |    1529118.46
    30039 | H├®ctor              | Cardona Cu├®llar       |                 1 |    1528879.92
    36671 | ├ülvaro              | Trujillo Caicedo      |                 1 |    1528164.90
    94061 | Orlando             | Perdomo Ortega        |                 1 |    1527079.67
   101842 | Jos├®                | Ni├▒o Henao            |                 1 |    1527061.82
    73675 | Sebasti├ín Orlando   | Restrepo Berm├║dez     |                 1 |    1526469.04
   137414 | Javier              | Perdomo Su├írez        |                 1 |    1524278.65
    97255 | ├ôscar Juli├ín        | Romero Betancur       |                 1 |    1522278.85
    88673 | Javier              | Bastidas Mart├¡nez     |                 1 |    1520741.57
    91205 | Roc├¡o               | Fl├│rez Prada          |                 1 |    1519620.51
    20448 | Daniel Heriberto    | Acevedo Londo├▒o       |                 1 |    1518621.20
     1288 | Jaime Santiago      | Ibarra Lozano         |                 1 |    1516345.60
    63488 | Manuel An├¡bal       | Lasso Lasso           |                 1 |    1513977.30
    25243 | Jaime               | Lozano Garc├¡a         |                 1 |    1512299.74
    83117 | Mateo               | Duarte Valencia       |                 1 |    1510760.58
   117364 | Elsa                | Londo├▒o Villamizar    |                 1 |    1510001.11
    88260 | Francisco           | Ruiz G├│mez            |                 1 |    1509048.45
   118139 | Iv├ín                | Herrera Villamizar    |                 1 |    1508326.68
   100666 | Santiago            | Jaimes Prada          |                 1 |    1505267.41
    76588 | Antonio             | ├ülvarez Henao         |                 1 |    1504522.66
   147184 | Rafael              | Castillo Cardona      |                 1 |    1503913.99
    44698 | Juli├ín Diego        | Villamizar Duarte     |                 1 |    1499179.80
   100541 | Alba                | Rinc├│n Ram├¡rez        |                 1 |    1491736.26
   109131 | Cristian Rub├®n      | Jaimes Burbano        |                 1 |    1491681.53
    55759 | Liliana             | Rivera Pab├│n          |                 1 |    1490201.82
     2317 | Jazm├¡n              | Mej├¡a Quintero        |                 1 |    1487917.64
   130794 | Sebasti├ín           | Castro Ram├¡rez        |                 1 |    1487566.80
    14940 | Amparo              | L├│pez Parra           |                 1 |    1485140.63
   110713 | An├¡bal              | Polan├¡a Polan├¡a       |                 1 |    1484415.98
     2676 | Luis                | Caicedo Duarte        |                 1 |    1479862.51
     6198 | Isabella            | Duarte Bedoya         |                 1 |    1478609.69
   140404 | Luisa Beatriz       | Guerrero Vera         |                 1 |    1473790.00
   124259 | Rosa Marcela        | C├íceres Su├írez        |                 1 |    1469167.56
   129415 | Alejandro           | Romero Castro         |                 1 |    1463763.86
    80060 | Jaime               | R├¡os Ortiz            |                 1 |    1459165.76
    16590 | Gladys              | Delgado Arango        |                 1 |    1458696.90
    61610 | Guillermo           | Guti├®rrez Garc├¡a      |                 1 |    1455433.26
    66892 | Alberto             | Henao Lozano          |                 1 |    1454056.11
   126936 | Libardo             | Ram├¡rez Barrera       |                 1 |    1442935.21
   102737 | Esteban             | Perdomo Molina        |                 1 |    1408669.76
   142244 | Arturo Libardo      | Lozano Erazo          |                 1 |    1398228.24
   103722 | Francisco           | Molina Mosquera       |                 1 |    1361982.41
   117154 | Sof├¡a Yesenia       | Chamorro Ramos        |                 1 |    1348041.69
    74460 | Daniela Ruth        | L├│pez Correa          |                 1 |    1323763.00
    12051 | Antonio             | Serrano Duarte        |                 1 |    1305199.60
    78209 | Ramiro              | Carrillo Rojas        |                 1 |    1302434.43
    32931 | Amparo              | Castillo Bedoya       |                 1 |    1280486.55
    21453 | Guillermo           | Burbano Ortiz         |                 1 |    1280486.07
   133019 | Jorge Samuel        | Cardona Ramos         |                 1 |    1279964.32
   121675 | Guillermo           | Cardona Parra         |                 1 |    1278546.88
      326 | Manuel              | Delgado Bonilla       |                 1 |    1278073.85
   130055 | Viviana Mercedes    | Rodr├¡guez Ram├¡rez     |                 1 |    1277617.11
    76861 | Yesenia             | Mart├¡nez Jaimes       |                 1 |    1265493.28
    72292 | Antonio Abelardo    | Ibarra Ortega         |                 1 |    1264455.54
   101241 | Emilio              | Montoya Ni├▒o          |                 1 |    1262185.00
   143522 | Luisa               | Tovar Ni├▒o            |                 1 |    1261312.11
    97529 | Guillermo Andr├®s    | Romero Carrillo       |                 1 |    1258810.80
    87417 | Fabio               | Bonilla Mu├▒oz         |                 1 |    1258447.69
   137252 | Emilio              | Burbano Chamorro      |                 1 |    1255254.08
    28874 | Fernando Efra├¡n     | Lasso Castillo        |                 1 |    1253397.55
   143999 | Andr├®s              | Romero Calder├│n       |                 1 |    1251507.51
   107845 | ├ôscar               | Salazar Duque         |                 1 |    1249422.54
    68224 | Gladys              | Mar├¡n Perdomo         |                 1 |    1243710.72
    57927 | Marcela             | Carrillo Agudelo      |                 1 |    1238412.80
    22819 | Jorge               | Contreras Cu├®llar     |                 1 |    1234146.81
    58621 | Olga                | Jim├®nez Moreno        |                 1 |    1232567.05
   126752 | Libardo Pedro       | Delgado Betancur      |                 1 |    1232077.23
   111943 | Wilmer              | Rangel Londo├▒o        |                 1 |    1230635.43
    42057 | Mauricio            | Calder├│n Perdomo      |                 1 |    1229483.64
   131339 | Antonio             | Arias G├│mez           |                 1 |    1228803.12
   134454 | Sebasti├ín Rodrigo   | Ram├¡rez Cabrera       |                 1 |    1227403.80
    62296 | Carolina            | Vargas R├¡os           |                 1 |    1226554.48
   104151 | Edilma              | L├│pez Calder├│n        |                 1 |    1225919.18
   112394 | Lorena              | Ramos Mar├¡n           |                 1 |    1221335.90
    41410 | Juli├ín              | Cabrera Sandoval      |                 1 |    1221329.20
    61080 | Laura               | Rangel Agudelo        |                 1 |    1218408.37
    20344 | Ramiro Diego        | Ruiz Fl├│rez           |                 1 |    1216965.36
    58550 | Cecilia Sara        | ├ülvarez Jim├®nez       |                 1 |    1216941.60
   130885 | Camilo Nelson       | Serrano Delgado       |                 1 |    1216868.10
     4950 | Luc├¡a Adriana       | Jaimes Cu├®llar        |                 1 |    1216843.93
    23379 | Gustavo             | D├¡az Caicedo          |                 1 |    1211065.65
    16121 | Felipe              | Osorio Rangel         |                 1 |    1210794.30
    61525 | Beatriz Lorena      | Ospina Montoya        |                 1 |    1209834.50
     1845 | Gustavo ├ülvaro      | Garc├¡a Fl├│rez         |                 1 |    1207700.15
   129823 | Rafael              | Carrillo Henao        |                 1 |    1207608.26
    56246 | Esteban             | Jim├®nez Villamizar    |                 1 |    1205975.22
    60575 | Lorena              | Cu├®llar Vera          |                 1 |    1202220.18
     8267 | Cecilia             | Londo├▒o Quintero      |                 1 |    1201015.08
   139490 | Yeison              | Caicedo Romero        |                 1 |    1200888.90
    65007 | Gladys              | Villamizar Pe├▒a       |                 1 |    1200640.53
   140531 | Isabella Ruth       | Parra Molina          |                 1 |    1200442.70
    13139 | Daniel              | Castillo Ruiz         |                 1 |    1199949.30
    20600 | Juan                | P├®rez Valencia        |                 1 |    1199256.03
   138341 | Jorge               | Arias Carrillo        |                 1 |    1197947.28
   133931 | Rub├®n               | Losada Hern├índez      |                 1 |    1197762.39
    38592 | Andr├®s              | Acevedo P├®rez         |                 1 |    1195115.83
   113011 | Francisco           | Ortiz Mar├¡n           |                 1 |    1190989.62
    36201 | Heriberto           | Osorio Medina         |                 1 |    1189552.00
    77542 | ├ülvaro              | Berm├║dez S├ínchez      |                 1 |    1189032.59
    94536 | Leidy               | Arango Hern├índez      |                 1 |    1188060.96
    53887 | Jairo               | Ramos Ortiz           |                 1 |    1186138.40
   110574 | Pedro               | Cardona Ibarra        |                 1 |    1184250.62
    83855 | Dora Isabella       | Calder├│n Londo├▒o      |                 1 |    1184048.09
   102935 | Rub├®n               | R├¡os Erazo            |                 1 |    1181250.57
     7984 | Iv├ín                | Bastidas Jim├®nez      |                 1 |    1179513.79
    85176 | Carmen              | Duque Perdomo         |                 1 |    1178626.45
    43367 | Francisco           | Pab├│n Losada          |                 1 |    1178398.94
    23415 | Heriberto Orlando   | Arango V├®lez          |                 1 |    1178089.44
   134754 | Jos├®                | Acevedo V├®lez         |                 1 |    1177892.38
   107293 | Ricardo Alejandro   | Vera Osorio           |                 1 |    1177320.45
    10389 | Mauricio            | Zuluaga Medina        |                 1 |    1175784.64
    47305 | ├üngela              | Molina Lozano         |                 1 |    1175060.48
   118137 | Yeison              | V├®lez Gonz├ílez        |                 1 |    1174238.74
    40672 | Santiago            | Salazar Prada         |                 1 |    1174205.15
    24380 | Samuel              | Galvis Ni├▒o           |                 1 |    1174018.68
    91229 | Camilo              | Prada Hern├índez       |                 1 |    1173652.00
    91073 | Mariana Juliana     | Ospina Parra          |                 1 |    1173625.44
    30770 | ├ülvaro              | Prada Prada           |                 1 |    1173403.56
    37997 | Felipe Libardo      | Duarte Fl├│rez         |                 1 |    1173328.76
    92599 | Miguel              | Agudelo Mej├¡a         |                 1 |    1171348.38
   126390 | Nelson              | Polan├¡a Restrepo      |                 1 |    1171108.70
    47229 | In├®s                | Erazo Castillo        |                 1 |    1171048.96
    93010 | Patricia            | Contreras Giraldo     |                 1 |    1170409.81
   146133 | Javier Reinaldo     | Zapata Ibarra         |                 1 |    1170050.84
   117034 | Diana               | Burbano Medina        |                 1 |    1168637.96
   139565 | Guillermo           | Correa Agudelo        |                 1 |    1167827.91
     3417 | Brayan Carlos       | Montoya Mej├¡a         |                 1 |    1166175.34
   120942 | Ricardo             | Torres Vera           |                 1 |    1165645.21
    82485 | Olga                | Jim├®nez Rinc├│n        |                 1 |    1162851.48
    12837 | Carmen Leidy        | Mart├¡nez Garc├¡a       |                 1 |    1161877.01
    43644 | Mauricio            | Guerrero Ruiz         |                 1 |    1160269.76
    97753 | Yeison              | Ospina Losada         |                 1 |    1160222.90
    37795 | Nelson              | Garc├¡a Lozano         |                 1 |    1158328.14
   103448 | Alejandra           | Duarte Bonilla        |                 1 |    1156616.64
   138635 | Mario               | Guti├®rrez Mosquera    |                 1 |    1155878.49
    22428 | Santiago            | V├®lez Pinz├│n          |                 1 |    1155573.36
    96823 | Martha              | Romero Bastidas       |                 1 |    1155334.50
   112414 | Wilmer              | C├írdenas C├írdenas     |                 1 |    1153883.48
    33277 | Heriberto           | Fl├│rez Benavides      |                 1 |    1152999.94
    17749 | Fabio               | Moreno Henao          |                 1 |    1152649.25
   121246 | ├ülvaro              | Rivera Delgado        |                 1 |    1151646.61
   128203 | Yesenia Aura        | Cabrera Ruiz          |                 1 |    1150663.85
   148238 | Reinaldo            | Ospina Rangel         |                 1 |    1150648.18
    88285 | Nicol├ís             | Cu├®llar Arango        |                 1 |    1150113.62
    55799 | Adriana Erika       | Betancur Ramos        |                 1 |    1149466.05
    99138 | Diego               | Barrera Barrera       |                 1 |    1149154.84
     9413 | Jos├®                | Mar├¡n Zapata          |                 1 |    1148566.25
    41665 | Antonio Jorge       | Lasso Pe├▒a            |                 1 |    1147772.14
   102992 | Hugo                | Quintero Galvis       |                 1 |    1147655.12
   118981 | Fanny               | Burbano Silva         |                 1 |    1146409.15
    38417 | Myriam              | Londo├▒o Ibarra        |                 1 |    1146276.82
    25247 | Yesenia             | Rojas Ospina          |                 1 |    1145832.48
   115465 | Samuel              | Erazo C├íceres         |                 1 |    1145618.84
   128054 | Ramiro              | Salazar Rinc├│n        |                 1 |    1145263.01
   143569 | ├ôscar               | Narv├íez Garc├¡a        |                 1 |    1142464.61
    24771 | Myriam Camila       | Molina L├│pez          |                 1 |    1141265.49
    16599 | Yesenia             | Narv├íez Perdomo       |                 1 |    1141054.10
    25461 | Natalia             | Uribe P├®rez           |                 1 |    1140775.95
    76100 | Mariana             | Osorio Medina         |                 1 |    1140457.71
    53706 | Camilo              | Molina Garc├¡a         |                 1 |    1139588.34
   136329 | Fabio               | S├ínchez Uribe         |                 1 |    1139370.72
   104677 | Roc├¡o               | Pinz├│n Chamorro       |                 1 |    1138295.29
    55934 | David               | Fl├│rez Contreras      |                 1 |    1137048.57
    98552 | Alberto             | Bonilla Molina        |                 1 |    1136533.66
   122406 | Valentina Daniela   | Contreras Cu├®llar     |                 1 |    1136377.91
   117763 | Heriberto Orlando   | Giraldo Su├írez        |                 1 |    1136079.66
    81311 | Antonio Mario       | Mar├¡n Ni├▒o            |                 1 |    1135880.00
    79831 | Manuel              | Rojas Acevedo         |                 1 |    1135846.86
    59062 | Hugo                | Parra Carrillo        |                 1 |    1134941.32
    11056 | Valentina           | Mar├¡n Berm├║dez        |                 1 |    1134913.43
     3117 | Nubia Sof├¡a         | Barrera Garc├¡a        |                 1 |    1131070.99
   125111 | Iv├ín Germ├ín         | Romero Moreno         |                 1 |    1130883.00
   143197 | Gilberto            | Ortega Castro         |                 1 |    1129880.70
    67975 | Ramiro David        | C├írdenas Narv├íez      |                 1 |    1129832.22
   135935 | Beatriz Yolanda     | L├│pez Quintero        |                 1 |    1128477.78
    98278 | Cecilia             | Garc├¡a Medina         |                 1 |    1127393.80
   114027 | Yuliana             | Agudelo Su├írez        |                 1 |    1127212.84
    80001 | Luisa Carmen        | Herrera Salazar       |                 1 |    1125814.98
    47315 | Gladys Viviana      | Molina Burbano        |                 1 |    1125711.31
   104983 | Hernando            | Pinz├│n Ni├▒o           |                 1 |    1124929.11
   117308 | Natalia Stella      | Narv├íez Galvis        |                 1 |    1123538.71
   113438 | Wilson              | Perdomo Uribe         |                 1 |    1121811.60
    11165 | ├ëdgar               | Narv├íez Delgado       |                 1 |    1121298.66
    95037 | Libardo             | Duque Fl├│rez          |                 1 |    1120525.76
   134309 | Nubia Gladys        | Narv├íez Vargas        |                 1 |    1119923.85
    91928 | Patricia            | Ibarra D├¡az           |                 1 |    1119280.50
   106709 | Mar├¡a Alejandra     | Agudelo D├¡az          |                 1 |    1119126.69
    39012 | Jos├®                | Carrillo Ruiz         |                 1 |    1116939.74
    34273 | Diana               | Rangel Vera           |                 1 |    1115690.77
    80499 | Mercedes Rodrigo    | Bonilla Pe├▒a          |                 1 |    1115274.37
    34103 | Mercedes            | Trujillo Serrano      |                 1 |    1114729.25
    55521 | H├®ctor              | Agudelo Pinz├│n        |                 1 |    1113816.21
    16513 | Luis                | Polan├¡a Sandoval      |                 1 |    1112882.90
   113142 | Emilio              | Zuluaga Mora          |                 1 |    1111057.78
    43727 | Juliana             | Arias S├ínchez         |                 1 |    1110588.87
    88251 | Alejandra           | Moreno Cu├®llar        |                 1 |    1107863.22
    93469 | Edilma              | Salazar Ram├¡rez       |                 1 |    1107200.92
    83907 | Claudia             | Mart├¡nez Moreno       |                 1 |    1106448.52
   129336 | Marcela             | Mu├▒oz Mosquera        |                 1 |    1105169.12
    57554 | An├¡bal              | Ruiz Lozano           |                 1 |    1103938.75
    54935 | Carlos              | Narv├íez Pinz├│n        |                 1 |    1103613.75
   105759 | M├│nica              | Ruiz Osorio           |                 1 |    1102322.88
    51532 | Daniel              | Mart├¡nez Salazar      |                 1 |    1102062.02
    34594 | Iv├ín                | Rivera Burbano        |                 1 |    1101527.64
   140648 | Diana               | Delgado Guerrero      |                 1 |    1098422.36
    25925 | Wilson              | Rojas Medina          |                 1 |    1097550.55
    48140 | Reinaldo            | Ruiz Lasso            |                 1 |    1096931.33
    48921 | Esperanza           | Ibarra Montoya        |                 1 |    1096460.07
    36314 | Miguel Daniel       | Delgado Arango        |                 1 |    1093575.15
   105638 | Marcela             | Salazar Bonilla       |                 1 |    1093459.31
   145443 | ├ëdgar Miguel        | Mart├¡nez Montoya      |                 1 |    1092264.02
    21773 | Beatriz             | Arias ├ülvarez         |                 1 |    1091555.57
   149002 | Esteban             | Guerrero Rangel       |                 1 |    1089405.80
   116565 | Rub├®n               | Mart├¡nez Cabrera      |                 1 |    1088493.97
   122489 | Elsa                | P├®rez Ortiz           |                 1 |    1088432.64
    42898 | Mateo               | Restrepo G├│mez        |                 1 |    1087242.95
    25905 | Rodrigo Francisco   | Bedoya Chamorro       |                 1 |    1086044.40
   113525 | In├®s Erika          | Zapata S├ínchez        |                 1 |    1085327.60
    69477 | David An├¡bal        | Castillo Duarte       |                 1 |    1084669.73
     4790 | Mercedes            | Tovar Silva           |                 1 |    1083783.39
    38730 | Rub├®n Cristian      | Gonz├ílez Fl├│rez       |                 1 |    1082327.08
    66581 | David Cristian      | Silva Bonilla         |                 1 |    1080443.40
   128925 | Jairo               | Castro Castro         |                 1 |    1077840.39
    40227 | Patricia Liliana    | Bastidas Mu├▒oz        |                 1 |    1077029.46
   142785 | Alejandro           | V├®lez Narv├íez         |                 1 |    1076684.25
   135845 | Beatriz             | Losada Berm├║dez       |                 1 |    1076556.74
    92590 | Luisa               | Su├írez Arias          |                 1 |    1072458.80
   124168 | Marleny             | D├¡az Rivera           |                 1 |    1072079.19
    60404 | Yeison              | Contreras Polan├¡a     |                 1 |    1071919.94
    67006 | Yeison Cristian     | Chamorro Arias        |                 1 |    1071913.93
    41433 | Roc├¡o               | Contreras L├│pez       |                 1 |    1070621.67
   145747 | Mario               | Bastidas Zuluaga      |                 1 |    1069257.58
     8547 | Esteban             | Ni├▒o Ibarra           |                 1 |    1067991.36
    37572 | Marleny             | Uribe Herrera         |                 1 |    1067547.00
     8068 | Alejandra           | Romero Burbano        |                 1 |    1066527.67
   142612 | Sof├¡a               | Castillo Mart├¡nez     |                 1 |    1064834.94
   120425 | Heriberto Luis      | Parra Narv├íez         |                 1 |    1064760.76
    99855 | In├®s                | Perdomo Tovar         |                 1 |    1063113.80
   147926 | Mario               | Tovar Serrano         |                 1 |    1062286.20
    43825 | Fernando            | Herrera Ibarra        |                 1 |    1061955.09
   133372 | Miguel              | Jaimes Serrano        |                 1 |    1061675.50
    87258 | Cecilia ├üngela      | R├¡os Caicedo          |                 1 |    1060710.39
   136183 | Jairo               | Ibarra Cu├®llar        |                 1 |    1059590.21
   125828 | Mario               | Galvis Medina         |                 1 |    1059036.70
    13702 | Wilson              | V├®lez Torres          |                 1 |    1058559.88
     5643 | Efra├¡n              | Bonilla Ramos         |                 1 |    1058494.95
    76607 | Wilson              | Acevedo Ni├▒o          |                 1 |    1057890.10
     7103 | Gloria              | Villamizar Mar├¡n      |                 1 |    1055397.75
    68493 | Esteban Juli├ín      | G├│mez Zapata          |                 1 |    1053619.11
    67191 | Diego               | V├®lez Losada          |                 1 |    1050732.16
    11859 | Nelson              | Gonz├ílez Serrano      |                 1 |    1048108.04
   138970 | Reinaldo            | Cabrera Castro        |                 1 |    1046063.55
    81446 | Isabella            | Moreno Mu├▒oz          |                 1 |    1045926.67
   137081 | ├üngela              | Benavides Berm├║dez    |                 1 |    1045684.55
    50070 | Arturo              | Contreras Pe├▒a        |                 1 |    1045665.12
   110054 | Andrea Laura        | Delgado Silva         |                 1 |    1044787.20
    89492 | Alejandra Liliana   | Parra Silva           |                 1 |    1044450.68
    21944 | Fernando Juan       | Correa Valencia       |                 1 |    1044398.90
    79423 | Teresa Daniela      | Jaimes Delgado        |                 1 |    1043736.69
    57301 | Juli├ín              | Torres Pinz├│n         |                 1 |    1043351.50
    54473 | Libardo             | Caicedo Su├írez        |                 1 |    1043085.90
     7705 | Esteban             | Jaimes Su├írez         |                 1 |    1042678.10
    14089 | Luis                | Caicedo Fl├│rez        |                 1 |    1041282.24
   145201 | Camila              | Vargas R├¡os           |                 1 |    1040996.88
    81642 | Luis                | Sandoval Rangel       |                 1 |    1038621.16
    71811 | David               | Londo├▒o Erazo         |                 1 |    1038110.55
    65822 | Ramiro              | Rodr├¡guez G├│mez       |                 1 |    1036809.24
   147431 | M├│nica              | Castillo Cabrera      |                 1 |    1036618.11
    84147 | Germ├ín              | Delgado C├íceres       |                 1 |    1035964.40
   149462 | Rub├®n               | Montoya Zuluaga       |                 1 |    1034711.58
    32201 | Jairo David         | Trujillo G├│mez        |                 1 |    1032071.06
   104210 | David Juli├ín        | Jaimes Serrano        |                 1 |    1031945.90
    94119 | Alberto             | V├®lez Su├írez          |                 1 |    1027649.70
   134343 | Emilio              | Berm├║dez Erazo        |                 1 |    1026975.52
    23070 | Rub├®n               | Villamizar Ram├¡rez    |                 1 |    1025045.76
    73480 | Aura                | Duarte Calder├│n       |                 1 |    1024949.97
    89575 | Cecilia Lorena      | Mart├¡nez Ni├▒o         |                 1 |    1023463.97
   104259 | Elsa                | Zapata Delgado        |                 1 |    1023337.72
    20908 | Edilma              | Ramos Ibarra          |                 1 |    1022495.78
    16330 | Gilberto            | Delgado Rivera        |                 1 |    1022247.14
   115865 | ├ôscar Germ├ín        | Rinc├│n Guti├®rrez      |                 1 |    1022043.88
     9494 | Ramiro Mateo        | Su├írez Betancur       |                 1 |    1021597.50
    13255 | Fernando            | Vera Lasso            |                 1 |    1021326.80
    77315 | Juan                | Ni├▒o Mu├▒oz            |                 1 |    1020864.00
      647 | Brayan              | Perdomo Cardona       |                 1 |    1018636.28
    78133 | Edilma              | Su├írez Acevedo        |                 1 |    1018329.36
   105858 | Orlando             | C├íceres Mar├¡n         |                 1 |    1018037.44
    19636 | Diego               | Restrepo Guti├®rrez    |                 1 |    1017135.00
    97947 | Abelardo Mauricio   | C├íceres Jaimes        |                 1 |    1016631.20
    57177 | Carlos              | Fl├│rez Mora           |                 1 |    1014443.25
    92771 | Libardo             | Mart├¡nez Guti├®rrez    |                 1 |    1014012.85
    77764 | Roc├¡o               | Barrera V├®lez         |                 1 |    1013985.51
    50906 | Antonio             | Uribe Pab├│n           |                 1 |    1011953.22
   107565 | Aura Diana          | Cabrera Prada         |                 1 |    1009409.52
   123586 | Rafael              | L├│pez Rojas           |                 1 |    1008533.03
   100968 | Cecilia             | Polan├¡a Valencia      |                 1 |    1008371.00
   139871 | Arturo              | Mar├¡n Ni├▒o            |                 1 |    1006306.68
   112976 | Pedro               | Mu├▒oz Correa          |                 1 |    1003816.96
   124411 | Aura                | L├│pez Zuluaga         |                 1 |    1002320.44
   109245 | Manuela             | Polan├¡a Correa        |                 1 |    1001921.39
   137239 | Ruth                | Pe├▒a Rinc├│n           |                 1 |    1000214.46
   138485 | Gladys              | Fl├│rez Zapata         |                 1 |     998073.83
    18405 | Daniel              | Correa Zuluaga        |                 1 |     997982.96
    79646 | Rosa                | Mar├¡n Mosquera        |                 1 |     997758.81
    50974 | Ruth Patricia       | Pab├│n Rodr├¡guez       |                 1 |     994313.22
    89453 | Andr├®s Jaime        | Pinz├│n ├ülvarez        |                 1 |     993341.59
   127078 | ├ôscar               | Polan├¡a Ortiz         |                 1 |     991611.91
    82332 | Luisa Manuela       | Contreras Moreno      |                 1 |     990835.20
    56059 | Gabriela            | Berm├║dez Jaimes       |                 1 |     990676.57
   113620 | Sof├¡a               | Guerrero Rinc├│n       |                 1 |     990145.86
     3543 | Heriberto           | Rangel Lasso          |                 1 |     989246.68
    40097 | Patricia In├®s       | C├írdenas Duque        |                 1 |     987348.60
    52859 | Sof├¡a Valentina     | Fl├│rez Caicedo        |                 1 |     986892.25
    19057 | David               | Silva Cardona         |                 1 |     986719.68
    78882 | Edilma Elsa         | Herrera Zuluaga       |                 1 |     986584.50
    81132 | Pedro               | Gonz├ílez C├íceres      |                 1 |     986074.74
    48374 | Lorena              | Guti├®rrez Henao       |                 1 |     985540.68
    11018 | Amparo              | Bonilla Erazo         |                 1 |     983159.17
   145671 | Isabella            | Calder├│n Londo├▒o      |                 1 |     981527.38
   108628 | Blanca              | Mosquera Ruiz         |                 1 |     981156.33
   102296 | Wilmer Jaime        | Correa Ruiz           |                 1 |     980986.13
    51335 | Laura               | Erazo Mu├▒oz           |                 1 |     980545.06
    31150 | Hernando            | Jaimes Bedoya         |                 1 |     979215.70
    17622 | Stella Isabella     | Erazo Salazar         |                 1 |     977939.52
    98483 | Claudia             | Trujillo Montoya      |                 1 |     976870.51
    34837 | Myriam              | Ibarra Narv├íez        |                 1 |     975786.24
   135039 | Elsa                | Ibarra Garc├¡a         |                 1 |     975006.10
    88494 | Yuliana             | Londo├▒o Jaimes        |                 1 |     973249.50
     3633 | Luz                 | Duque Romero          |                 1 |     971973.44
    40640 | Rodrigo             | Montoya Londo├▒o       |                 1 |     971299.89
    18418 | Amparo              | Bastidas Cu├®llar      |                 1 |     969055.48
    24250 | Arturo              | Salazar Pinz├│n        |                 1 |     967315.23
    87068 | Sara                | Parra Rojas           |                 1 |     967195.00
      434 | Javier              | Vargas Osorio         |                 1 |     967168.61
    99176 | Jairo               | Jaimes Cabrera        |                 1 |     967100.18
   102256 | Mario Heriberto     | Montoya Rinc├│n        |                 1 |     964659.96
    19399 | Rodrigo             | Tovar Garc├¡a          |                 1 |     964251.75
   114317 | Diego               | Polan├¡a P├®rez         |                 1 |     964110.71
      709 | Gustavo Jos├®        | Parra Londo├▒o         |                 1 |     963837.19
    56907 | Esperanza In├®s      | Guti├®rrez Jaimes      |                 1 |     962861.83
   123959 | Santiago            | Hern├índez Mart├¡nez    |                 1 |     960746.16
    90171 | Erika               | Burbano R├¡os          |                 1 |     960517.50
   142990 | Luc├¡a Sof├¡a         | Vargas Bonilla        |                 1 |     956654.28
   141263 | Iv├ín Germ├ín         | Londo├▒o Berm├║dez      |                 1 |     955274.92
    70078 | Andr├®s              | Tovar Mosquera        |                 1 |     953913.78
   141898 | Mateo               | C├írdenas Garc├¡a       |                 1 |     953869.92
   120886 | Juliana             | Cu├®llar Cabrera       |                 1 |     950753.49
    89985 | Santiago            | Salazar Henao         |                 1 |     947199.39
   128872 | Alberto             | Mart├¡nez G├│mez        |                 1 |     944914.19
    70595 | Roc├¡o               | Contreras Bastidas    |                 1 |     944775.68
    44882 | Carolina Jazm├¡n     | Berm├║dez Perdomo      |                 1 |     944729.78
   108485 | Manuel Guillermo    | Mej├¡a Agudelo         |                 1 |     944697.60
   107588 | Brayan Wilmer       | Gonz├ílez Torres       |                 1 |     941665.62
   116556 | Luc├¡a               | Cu├®llar Ospina        |                 1 |     934894.22
   101008 | Juliana Isabella    | Delgado Duarte        |                 1 |     933715.78
   146635 | Esperanza           | Zapata Pinz├│n         |                 1 |     933561.33
   127778 | In├®s                | Cardona Silva         |                 1 |     932691.34
   128805 | Santiago            | Bastidas Acevedo      |                 1 |     931585.84
    32661 | Erika               | Uribe Carrillo        |                 1 |     928607.46
   148088 | Jorge               | Perdomo Ram├¡rez       |                 1 |     928148.49
    71921 | Nubia               | G├│mez Parra           |                 1 |     927209.42
    34804 | Luis                | Jim├®nez Arias         |                 1 |     926261.05
   110496 | Sebasti├ín           | Torres Uribe          |                 1 |     925850.52
    29303 | Mauricio            | Osorio D├¡az           |                 1 |     923882.52
   136721 | Teresa Viviana      | Moreno Su├írez         |                 1 |     923839.72
    11289 | Anc├¡zar             | Castro Salazar        |                 1 |     923831.48
    82836 | Wilmer Yeison       | Losada Vera           |                 1 |     921492.95
    84773 | Gladys              | Trujillo G├│mez        |                 1 |     920760.08
    77534 | Carmen Gladys       | Arango Cardona        |                 1 |     918894.60
    77353 | Heriberto           | Lasso Tovar           |                 1 |     917654.39
    99777 | Andr├®s              | Correa Calder├│n       |                 1 |     916783.65
    68666 | Sara                | Tovar Mu├▒oz           |                 1 |     916405.93
    43737 | Abelardo            | Mart├¡nez Su├írez       |                 1 |     915931.75
    31128 | Javier              | Ni├▒o Guerrero         |                 1 |     912547.82
    13859 | Martha              | Losada Mosquera       |                 1 |     911974.15
    90126 | Adriana Laura       | Herrera Londo├▒o       |                 1 |     911028.09
    86847 | Heriberto Carlos    | Mora Sandoval         |                 1 |     907253.57
    75273 | Abelardo            | Garc├¡a Carrillo       |                 1 |     906957.69
   104901 | Andrea Sandra       | Osorio Chamorro       |                 1 |     906946.60
    77335 | Esteban             | Osorio Mu├▒oz          |                 1 |     906355.10
    63149 | Gabriela            | R├¡os Jaimes           |                 1 |     906242.47
    78515 | Gilberto            | P├®rez Duarte          |                 1 |     906097.85
   110668 | Ramiro              | Jim├®nez Rodr├¡guez     |                 1 |     903925.53
    71597 | Gloria              | Ospina Mosquera       |                 1 |     902227.15
     9209 | Guillermo           | Vargas Bedoya         |                 1 |     901914.99
    97194 | Patricia            | Benavides L├│pez       |                 1 |     901090.68
    58726 | Blanca Ruth         | Vera Lasso            |                 1 |     899943.60
    92873 | Pedro Juli├ín        | Giraldo Ruiz          |                 1 |     898841.50
    66436 | Rosa                | Jaimes Chamorro       |                 1 |     898250.21
    95034 | Javier              | Castillo Castillo     |                 1 |     897701.49
    17481 | Iv├ín                | Pab├│n Salazar         |                 1 |     897639.57
    46665 | Alejandra Myriam    | Molina Parra          |                 1 |     897061.90
    41788 | Marcela             | Zuluaga Guerrero      |                 1 |     893692.69
   130740 | ├ëdgar               | Torres Pinz├│n         |                 1 |     893624.06
    83547 | Rosa                | Narv├íez Hern├índez     |                 1 |     891325.76
    31187 | Mar├¡a               | Silva Villamizar      |                 1 |     889445.50
   104033 | Yolanda             | Ortiz Montoya         |                 1 |     888876.49
    34114 | Fanny               | Osorio Medina         |                 1 |     887634.31
    49111 | Emilio              | Trujillo Mora         |                 1 |     883608.84
    30605 | Juan                | Guerrero G├│mez        |                 1 |     882834.27
   130666 | Rub├®n               | Arango Acevedo        |                 1 |     880015.58
   108252 | Amparo              | Zapata G├│mez          |                 1 |     878143.22
     7762 | Antonio             | C├íceres Villamizar    |                 1 |     876465.70
    93348 | Isabella            | Garc├¡a L├│pez          |                 1 |     873385.20
    10907 | Jazm├¡n              | P├®rez G├│mez           |                 1 |     873191.61
    32446 | Manuela Luisa       | Burbano Ibarra        |                 1 |     872486.46
   130783 | An├¡bal              | Hern├índez Tovar       |                 1 |     869213.18
   125618 | Amparo              | Calder├│n Caicedo      |                 1 |     865586.36
    97852 | Alejandro           | Torres Gonz├ílez       |                 1 |     864058.00
    72165 | Sandra              | Castro Jaimes         |                 1 |     862875.90
    84588 | Elsa                | Rojas Mu├▒oz           |                 1 |     862476.72
    99491 | Valentina Yolanda   | Losada Mej├¡a          |                 1 |     862141.07
   136735 | Mateo               | Narv├íez Vargas        |                 1 |     861270.24
   144950 | Marleny Sandra      | Rinc├│n Castillo       |                 1 |     859837.65
    39540 | Hugo Alejandro      | C├írdenas Chamorro     |                 1 |     859670.07
    85886 | Mauricio            | Molina Villamizar     |                 1 |     859645.80
    96607 | Alejandro           | Cardona Contreras     |                 1 |     858399.60
    93484 | Rodrigo Mauricio    | Ortiz ├ülvarez         |                 1 |     856596.00
    50785 | Ana Claudia         | Hern├índez C├íceres     |                 1 |     856127.83
   109533 | Germ├ín              | Burbano Betancur      |                 1 |     855639.01
    33122 | Alejandra           | Sandoval Pab├│n        |                 1 |     854660.70
    57152 | Diego               | Chamorro Pe├▒a         |                 1 |     852805.39
   147511 | Luc├¡a               | Rivera Guerrero       |                 1 |     852691.64
    31290 | Sebasti├ín           | Valencia Agudelo      |                 1 |     852684.33
   103257 | Libardo             | Serrano Villamizar    |                 1 |     851524.13
     2930 | Claudia             | Arango Pab├│n          |                 1 |     845541.74
    71709 | Amparo              | Narv├íez ├ülvarez       |                 1 |     845077.78
   145317 | Sebasti├ín           | Narv├íez Duque         |                 1 |     844992.80
   119836 | Ana                 | Ruiz Ospina           |                 1 |     844862.22
    70354 | Liliana             | Perdomo Rivera        |                 1 |     843449.66
    50959 | Ramiro              | Pab├│n Moreno          |                 1 |     843224.91
   145207 | Brayan              | Lasso Arias           |                 1 |     842745.08
    83808 | Jairo               | Hern├índez Losada      |                 1 |     842512.99
    36711 | Iv├ín                | Pab├│n Barrera         |                 1 |     841360.77
    12364 | Arturo              | Berm├║dez Trujillo     |                 1 |     838879.37
   121579 | Jairo               | Cabrera C├írdenas      |                 1 |     838259.78
    47599 | H├®ctor Mateo        | Arias P├®rez           |                 1 |     835859.40
   108750 | Nelson Sebasti├ín    | Narv├íez Moreno        |                 1 |     834824.49
    29229 | Marleny             | Losada Mej├¡a          |                 1 |     834592.68
    70445 | Nelson              | C├íceres Ortiz         |                 1 |     832628.10
   139936 | Fanny               | Uribe Guti├®rrez       |                 1 |     832166.44
    92031 | Dora                | Contreras Serrano     |                 1 |     830884.46
    46608 | Cristian            | Rodr├¡guez Mosquera    |                 1 |     830705.42
   128552 | Luisa               | Ruiz Torres           |                 1 |     829374.07
    80583 | Ricardo             | Torres Su├írez         |                 1 |     829027.07
    34576 | ├ëdgar               | Ortega Betancur       |                 1 |     826307.32
    43560 | Rosa                | Sandoval Valencia     |                 1 |     825197.68
   125157 | Cristian            | Losada Rinc├│n         |                 1 |     824816.90
   136229 | ├ëdgar Yeison        | Mar├¡n C├írdenas        |                 1 |     821924.92
   136877 | Esteban             | Berm├║dez S├ínchez      |                 1 |     821108.68
    94094 | Paola Luc├¡a         | Giraldo Cabrera       |                 1 |     820691.30
    58667 | Yesenia             | Montoya Ni├▒o          |                 1 |     820682.33
   129860 | Rodrigo Heriberto   | Mora Benavides        |                 1 |     819580.83
      141 | Liliana             | Restrepo Gonz├ílez     |                 1 |     819383.84
    69251 | In├®s                | Parra Galvis          |                 1 |     815098.52
   139060 | Mar├¡a               | Cabrera Contreras     |                 1 |     813524.72
   111390 | Wilson              | Romero Vera           |                 1 |     813437.22
    28556 | ├üngela              | Barrera Pinz├│n        |                 1 |     809993.52
   132134 | Aura                | Berm├║dez Zapata       |                 1 |     809628.00
    93008 | Germ├ín              | Tovar Mosquera        |                 1 |     809311.40
    65838 | Fabio               | Bastidas Fl├│rez       |                 1 |     808588.90
   142650 | Santiago            | Zuluaga C├írdenas      |                 1 |     808475.25
    77789 | Libardo             | Mej├¡a Rivera          |                 1 |     807519.24
     4412 | Gloria Mar├¡a        | Restrepo Gonz├ílez     |                 1 |     806274.00
   140620 | Jaime Antonio       | Jaimes Montoya        |                 1 |     804281.90
   131461 | Mario Yeison        | Rodr├¡guez Perdomo     |                 1 |     803460.64
   140920 | Juan                | Betancur Ramos        |                 1 |     803316.24
     1343 | Emilio              | Su├írez Silva          |                 1 |     802769.04
   113426 | Reinaldo            | Zuluaga Benavides     |                 1 |     802324.48
    25943 | Paola Erika         | Ortiz Medina          |                 1 |     801516.45
    46646 | Aura                | ├ülvarez Perdomo       |                 1 |     801148.80
   118885 | Elsa                | Agudelo Erazo         |                 1 |     799660.35
   102136 | Jazm├¡n              | Ramos Cu├®llar         |                 1 |     799054.66
   132186 | Viviana             | Hern├índez Rodr├¡guez   |                 1 |     796899.20
   113077 | Marcela             | Romero Giraldo        |                 1 |     796820.00
    22875 | Daniela             | Rinc├│n Su├írez         |                 1 |     796555.30
   125426 | Sebasti├ín Mauricio  | Chamorro Londo├▒o      |                 1 |     796158.07
    89167 | Paola Mariana       | Pab├│n Lasso           |                 1 |     795680.99
    22933 | Wilmer              | Osorio Vera           |                 1 |     795028.09
    59256 | Guillermo           | Uribe Parra           |                 1 |     792581.44
    50383 | Liliana Martha      | Erazo Moreno          |                 1 |     792575.25
    64516 | Francisco           | Silva Narv├íez         |                 1 |     790807.68
     4116 | Luisa               | S├ínchez Zapata        |                 1 |     788516.62
    29980 | Rosa                | Rodr├¡guez Osorio      |                 1 |     785660.75
   148063 | Hernando            | Su├írez Delgado        |                 1 |     784821.51
   134768 | ├ëdgar               | Bonilla Ram├¡rez       |                 1 |     783125.81
   115414 | Carolina            | Rangel Moreno         |                 1 |     782268.88
    16962 | Teresa              | Restrepo Mu├▒oz        |                 1 |     778223.75
    43327 | Marcela             | Ruiz Henao            |                 1 |     776961.84
   144781 | Isabella            | Londo├▒o Bastidas      |                 1 |     774875.86
    13845 | Dora                | Delgado Correa        |                 1 |     774445.62
    72998 | Elsa                | D├¡az Silva            |                 1 |     773289.25
    69418 | Hugo Orlando        | Duarte C├írdenas       |                 1 |     772370.41
    50323 | Reinaldo Mateo      | Lasso P├®rez           |                 1 |     766164.56
   132796 | Ramiro              | Perdomo Londo├▒o       |                 1 |     762644.10
    46675 | Santiago            | Uribe Herrera         |                 1 |     761993.97
    37421 | Arturo              | Losada Vargas         |                 1 |     756325.30
   127214 | An├¡bal              | Jim├®nez Arias         |                 1 |     756076.31
    82705 | Fernando            | Serrano V├®lez         |                 1 |     755664.63
   134485 | Carlos              | Ibarra Cardona        |                 1 |     751496.84
   142627 | Teresa              | Jaimes G├│mez          |                 1 |     751425.66
     2282 | Juan                | Tovar Mej├¡a           |                 1 |     750207.36
    78996 | Nelson              | Vera Agudelo          |                 1 |     746363.52
    44161 | Cristian            | Chamorro Agudelo      |                 1 |     734976.73
    20311 | Luis Yeison         | Bonilla Duque         |                 1 |     726889.76
(6352 filas)
*/