/*
Exercise 01
a
Farmer seniority in days as of today for municipality 54518
*/

SELECT
    T1.farmer_id AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.membership_date AS membership_date,
    CURRENT_DATE - T1.membership_date AS membership_days
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
ORDER BY membership_days DESC;

/*
 document |    first_name     |     last_name      | membership_date | membership_days
----------+-------------------+--------------------+-----------------+-----------------
    60102 | Juli├ín Guillermo  | Valencia Narv├íez   | 1995-01-27      |           11604
   138643 | Roc├¡o Alba        | Ortega Serrano     | 1995-07-10      |           11440
    24490 | Wilson            | Parra Prada        | 1995-07-28      |           11422
    46617 | Marleny           | ├ülvarez Correa     | 1996-03-20      |           11186
    23266 | Teresa Adriana    | Valencia Moreno    | 1996-07-23      |           11061
   121239 | Martha Carolina   | P├®rez Jaimes       | 1996-11-22      |           10939
    99920 | Manuel            | Agudelo Jim├®nez    | 1997-03-29      |           10812
    68544 | Ramiro            | Barrera Villamizar | 1997-04-08      |           10802
    56723 | Guillermo         | P├®rez P├®rez        | 1997-05-17      |           10763
    26035 | Juan              | Ortega Zapata      | 1997-07-13      |           10706
    48348 | Efra├¡n Ricardo    | Contreras Ospina   | 1997-07-21      |           10698
    47077 | Edilma Gabriela   | Arias ├ülvarez      | 1998-03-24      |           10452
    63693 | Mariana           | Barrera Correa     | 1998-03-27      |           10449
    88113 | ├ôscar             | Ospina Gonz├ílez    | 1998-05-02      |           10413
   111220 | Luis              | Mosquera Perdomo   | 1998-07-29      |           10325
   136965 | Yeison            | Medina Londo├▒o     | 1998-09-29      |           10263
   111416 | Myriam            | Valencia Moreno    | 1998-11-03      |           10228
    60407 | Fernando          | Rojas C├írdenas     | 1998-12-16      |           10185
    53823 | Rub├®n             | Ramos Chamorro     | 1999-03-02      |           10109
    23040 | ├ülvaro            | Berm├║dez Mar├¡n     | 1999-06-21      |            9998
    20195 | Martha            | Giraldo Arango     | 1999-09-14      |            9913
   120446 | Gustavo Heriberto | Torres Guerrero    | 1999-12-30      |            9806
   111237 | Alberto           | ├ülvarez Villamizar | 2000-04-14      |            9700
    24478 | Iv├ín              | Berm├║dez Fl├│rez    | 2000-09-03      |            9558
   120830 | Elsa              | Mar├¡n Henao        | 2001-03-17      |            9363
   135840 | Viviana           | Gonz├ílez Molina    | 2001-04-18      |            9331
    28126 | Hernando          | Montoya Agudelo    | 2001-07-22      |            9236
   120567 | Amparo            | Bastidas Chamorro  | 2001-08-01      |            9226
    36775 | Esperanza         | Valencia Ortiz     | 2001-08-12      |            9215
    81193 | Yuliana           | Sandoval Bedoya    | 2001-09-24      |            9172
    89517 | Carlos            | Castillo Torres    | 2001-10-14      |            9152
   106693 | Wilson Yeison     | D├¡az Ram├¡rez       | 2001-12-19      |            9086
    97685 | Gustavo           | Mar├¡n Sandoval     | 2002-04-29      |            8955
   104763 | An├¡bal            | Silva Villamizar   | 2002-05-19      |            8935
     9270 | Carmen            | C├írdenas Moreno    | 2002-06-25      |            8898
   120306 | Camila            | S├ínchez Pinz├│n     | 2002-07-01      |            8892
   132102 | Reinaldo          | Su├írez Polan├¡a     | 2002-07-31      |            8862
   144694 | Sandra            | Ortega Garc├¡a      | 2002-08-11      |            8851
    20979 | David Germ├ín      | Romero Bonilla     | 2002-10-11      |            8790
    40889 | M├│nica Claudia    | Fl├│rez Gonz├ílez    | 2002-10-28      |            8773
    84104 | Fanny             | Montoya Valencia   | 2003-04-01      |            8618
    42933 | Abelardo          | P├®rez Castro       | 2003-06-19      |            8539
    94576 | Nicol├ís           | Rivera Duque       | 2003-08-11      |            8486
   144796 | Juliana           | Ortega Osorio      | 2003-09-04      |            8462
    38069 | Camilo Iv├ín       | Calder├│n Trujillo  | 2003-12-14      |            8361
    44846 | Jazm├¡n            | Burbano Jaimes     | 2003-12-19      |            8356
   117987 | Marleny           | Agudelo Sandoval   | 2003-12-24      |            8351
    91475 | Amparo            | Duarte Duque       | 2003-12-29      |            8346
   125178 | Isabella          | Mosquera Sandoval  | 2004-07-01      |            8161
    29009 | ├üngela            | Tovar Lasso        | 2004-08-27      |            8104
     3739 | Mar├¡a             | Burbano Duarte     | 2004-09-23      |            8077
    42752 | Arturo            | Tovar Calder├│n     | 2004-10-18      |            8052
    86548 | Jazm├¡n            | Silva G├│mez        | 2005-03-22      |            7897
    96747 | Mario             | Rinc├│n Su├írez      | 2005-04-23      |            7865
    99995 | Luisa             | Lozano Losada      | 2005-08-31      |            7735
    50070 | Arturo            | Contreras Pe├▒a     | 2005-12-04      |            7640
    20372 | Gabriela          | Rodr├¡guez Ortega   | 2005-12-11      |            7633
   128340 | Libardo           | Trujillo Torres    | 2005-12-16      |            7628
    37969 | Manuela           | Bastidas Medina    | 2006-04-11      |            7512
    85417 | Daniel H├®ctor     | Duque Ruiz         | 2006-04-18      |            7505
    61650 | Myriam            | Fl├│rez Gonz├ílez    | 2006-05-01      |            7492
    45380 | Alba              | Vargas Losada      | 2006-06-01      |            7461
   147976 | M├│nica            | ├ülvarez Carrillo   | 2006-09-25      |            7345
    78314 | Alba              | Vera Calder├│n      | 2006-12-06      |            7273
   143816 | Rodrigo Guillermo | Berm├║dez Mu├▒oz     | 2006-12-11      |            7268
    12858 | Iv├ín              | Zapata Ortiz       | 2007-01-20      |            7228
    71137 | Luz               | Rojas Torres       | 2007-04-09      |            7149
   124531 | Diana             | D├¡az Medina        | 2007-05-01      |            7127
    26735 | Rafael Francisco  | Rinc├│n Romero      | 2007-07-15      |            7052
    51243 | Mariana           | Ortiz Ruiz         | 2007-08-06      |            7030
   138870 | ├ëdgar             | Burbano Arango     | 2007-09-02      |            7003
   111147 | Liliana           | Mosquera Uribe     | 2007-09-27      |            6978
   142523 | Antonio           | Bastidas Rodr├¡guez | 2007-10-14      |            6961
    69974 | Elsa              | Ramos C├írdenas     | 2007-11-17      |            6927
    66655 | M├│nica Elsa       | Ram├¡rez Castro     | 2007-11-28      |            6916
    31736 | Jaime             | Mar├¡n Hern├índez    | 2008-01-27      |            6856
    39377 | Luis              | Jaimes Salazar     | 2008-02-07      |            6845
    12711 | In├®s              | Jim├®nez Jaimes     | 2008-02-11      |            6841
   118364 | Yuliana           | Zapata Parra       | 2008-04-01      |            6791
   101213 | Camilo            | Arias Mora         | 2008-05-10      |            6752
    43016 | Alba              | R├¡os Rodr├¡guez     | 2008-05-14      |            6748
    94278 | Yuliana Jazm├¡n    | Mej├¡a Rangel       | 2008-06-17      |            6714
     7509 | Mario             | Uribe Cu├®llar      | 2008-06-30      |            6701
    25264 | Francisco         | Ram├¡rez Sandoval   | 2008-08-09      |            6661
    84366 | Teresa            | Ibarra Caicedo     | 2008-12-20      |            6528
    22421 | David             | Zapata Arias       | 2009-02-20      |            6466
    22657 | Rodrigo Nelson    | Cabrera Villamizar | 2009-05-02      |            6395
    68993 | Nubia Natalia     | Henao Ram├¡rez      | 2009-05-15      |            6382
   125369 | Sara              | Losada Guti├®rrez   | 2009-06-09      |            6357
    41872 | Marleny           | Pinz├│n Delgado     | 2009-08-08      |            6297
    65238 | Libardo           | Lasso Serrano      | 2010-02-09      |            6112
     9714 | Nicol├ís           | Gonz├ílez Rodr├¡guez | 2010-03-05      |            6088
    24758 | Nelson Samuel     | Mej├¡a Vera         | 2010-03-14      |            6079
   143490 | Nelson            | Chamorro Vera      | 2010-04-17      |            6045
    25949 | Cristian          | Herrera Zuluaga    | 2010-04-28      |            6034
   115925 | Sof├¡a             | Mar├¡n Rojas        | 2010-05-06      |            6026
    40548 | Rosa              | R├¡os C├írdenas      | 2010-06-24      |            5977
   139484 | Olga Luisa        | Zapata Rivera      | 2010-09-15      |            5894
   113393 | Santiago          | Berm├║dez Ruiz      | 2010-11-30      |            5818
    68437 | Gabriela Carolina | Ni├▒o Ortiz         | 2010-12-08      |            5810
    66985 | Ruth              | Rodr├¡guez P├®rez    | 2010-12-11      |            5807
    61562 | Jaime Santiago    | Cu├®llar C├íceres    | 2011-01-17      |            5770
    29185 | Manuela Yolanda   | Benavides Delgado  | 2011-02-27      |            5729
   137614 | ├ôscar             | Rivera Tovar       | 2011-03-11      |            5717
   122796 | Juli├ín Germ├ín     | Delgado Villamizar | 2011-11-24      |            5459
   118405 | Yesenia           | Rinc├│n Caicedo     | 2011-12-05      |            5448
   105013 | Miguel            | Villamizar Correa  | 2011-12-30      |            5423
    85972 | Roc├¡o             | Bastidas Su├írez    | 2012-01-07      |            5415
    59149 | Isabella          | Barrera Cabrera    | 2012-01-31      |            5391
    11941 | Arturo            | Hern├índez Uribe    | 2012-06-16      |            5254
   109820 | Reinaldo Jorge    | S├ínchez Agudelo    | 2012-07-06      |            5234
   105376 | Efra├¡n            | Ortega Correa      | 2012-07-19      |            5221
    49564 | Wilmer            | P├®rez Chamorro     | 2012-09-16      |            5162
   126597 | Sandra            | Sandoval Ortega    | 2013-01-06      |            5050
    24741 | Liliana Luisa     | Chamorro V├®lez     | 2013-01-09      |            5047
   147264 | Luz               | Osorio Cu├®llar     | 2013-05-28      |            4908
   116097 | Ramiro            | Parra Trujillo     | 2013-07-07      |            4868
   110563 | Hugo              | Jim├®nez Parra      | 2013-09-02      |            4811
    31696 | Elsa              | Ibarra Molina      | 2013-09-15      |            4798
    57888 | Wilmer            | Montoya Rodr├¡guez  | 2013-11-10      |            4742
    45811 | Edilma            | ├ülvarez Bonilla    | 2013-12-14      |            4708
    16365 | Jaime Wilmer      | Ortiz Vargas       | 2014-01-22      |            4669
    68175 | Alejandra Andrea  | Mosquera Moreno    | 2014-02-21      |            4639
    10999 | Dora              | Hern├índez Correa   | 2014-03-08      |            4624
     2501 | Jairo             | Molina Pab├│n       | 2014-03-13      |            4619
   142458 | Heriberto         | Jim├®nez C├íceres    | 2014-07-17      |            4493
    16662 | Gladys Patricia   | Sandoval Duarte    | 2014-08-04      |            4475
   116351 | Heriberto Andr├®s  | Cu├®llar Romero     | 2014-09-05      |            4443
    12378 | Daniel            | Bonilla Duarte     | 2014-09-29      |            4419
    64745 | Beatriz           | Hern├índez Mu├▒oz    | 2014-12-04      |            4353
   143672 | Nubia Juliana     | Caicedo Medina     | 2014-12-15      |            4342
    18100 | Edilma            | Rivera Rivera      | 2014-12-20      |            4337
    95048 | Myriam            | Sandoval Osorio    | 2015-01-12      |            4314
    79124 | Viviana           | Arias Ram├¡rez      | 2015-04-16      |            4220
    20959 | ├ülvaro            | Valencia Rivera    | 2015-05-03      |            4203
    41313 | In├®s              | Duque C├írdenas     | 2015-05-19      |            4187
    61229 | Gustavo           | Ibarra Agudelo     | 2015-06-30      |            4145
    32146 | In├®s Luc├¡a        | D├¡az Cu├®llar       | 2015-07-08      |            4137
    62373 | Gustavo Pedro     | Romero Pinz├│n      | 2015-08-25      |            4089
     7898 | Esperanza         | Romero Betancur    | 2015-08-30      |            4084
    36901 | Diana             | Londo├▒o Ramos      | 2015-11-05      |            4017
    68994 | Fabio             | Hern├índez Lasso    | 2015-11-16      |            4006
   110449 | Pedro             | Ram├¡rez Barrera    | 2015-11-19      |            4003
    85918 | Patricia Amparo   | Rojas R├¡os         | 2015-12-25      |            3967
   146704 | Laura             | Zuluaga Benavides  | 2016-01-19      |            3942
      775 | Wilson            | L├│pez Villamizar   | 2016-02-19      |            3911
    12471 | Roc├¡o Manuela     | Jaimes Cardona     | 2016-03-04      |            3897
    20108 | Emilio            | Delgado Molina     | 2016-03-11      |            3890
    79848 | ├üngela Beatriz    | Sandoval Berm├║dez  | 2016-03-18      |            3883
    73382 | Sandra            | Henao Jaimes       | 2016-03-31      |            3870
    31529 | Gustavo           | Mosquera L├│pez     | 2016-05-14      |            3826
   112680 | Manuel            | Quintero Arias     | 2016-07-15      |            3764
    18484 | Felipe Camilo     | R├¡os Ospina        | 2016-07-27      |            3752
    67019 | Andrea            | Cardona Ruiz       | 2016-07-29      |            3750
    87614 | Diana             | Lozano Rinc├│n      | 2016-12-01      |            3625
   134817 | Nelson            | Bedoya V├®lez       | 2016-12-09      |            3617
    36198 | Carlos            | Guti├®rrez Pab├│n    | 2016-12-12      |            3614
    14977 | Cecilia Lorena    | D├¡az Garc├¡a        | 2017-01-11      |            3584
    31857 | Valentina         | Zapata Valencia    | 2017-01-12      |            3583
      657 | Guillermo Pedro   | Arias Rodr├¡guez    | 2017-01-27      |            3568
   117703 | In├®s              | Polan├¡a Bedoya     | 2017-03-05      |            3531
   110922 | Natalia           | Ramos Vargas       | 2017-03-11      |            3525
   138370 | Stella            | Mar├¡n Osorio       | 2017-03-13      |            3523
    88122 | Alberto           | Bastidas Rodr├¡guez | 2017-03-21      |            3515
   132229 | David             | Jaimes Ruiz        | 2017-05-24      |            3451
   126673 | Francisco         | Restrepo Perdomo   | 2017-06-28      |            3416
    59301 | Diego             | Ni├▒o Hern├índez     | 2017-07-04      |            3410
    52384 | Efra├¡n            | Pinz├│n Cabrera     | 2017-07-23      |            3391
     5280 | Juli├ín            | Pe├▒a Betancur      | 2017-08-10      |            3373
    62717 | Mario             | R├¡os Ibarra        | 2017-09-05      |            3347
    73958 | Esperanza         | Jaimes Vera        | 2017-11-07      |            3284
   123426 | Fernando          | Burbano Fl├│rez     | 2017-11-22      |            3269
    21535 | Fabio Luis        | Valencia Ram├¡rez   | 2017-12-20      |            3241
    15083 | Teresa            | Torres Giraldo     | 2017-12-21      |            3240
   102354 | Myriam Yuliana    | Arango Narv├íez     | 2018-02-23      |            3176
   138719 | Diego             | Rivera Jim├®nez     | 2018-03-26      |            3145
    80102 | Alberto           | Ortiz Lasso        | 2018-04-22      |            3118
    99993 | Natalia           | Ospina Burbano     | 2018-05-04      |            3106
   105791 | In├®s              | Erazo Hern├índez    | 2018-05-11      |            3099
    61540 | Luz Martha        | Jaimes Berm├║dez    | 2018-07-11      |            3038
    68802 | Valentina         | Mora Rangel        | 2018-08-12      |            3006
   133582 | Jairo             | Romero Guti├®rrez   | 2018-08-15      |            3003
    10921 | Roc├¡o             | ├ülvarez C├írdenas   | 2018-09-19      |            2968
   142037 | Yesenia           | Silva Henao        | 2018-11-08      |            2918
    58883 | Reinaldo          | Romero Agudelo     | 2019-02-22      |            2812
    33369 | Aura              | Torres Ortega      | 2019-03-11      |            2795
   125701 | Diana Isabella    | Molina Moreno      | 2019-04-12      |            2763
    79483 | David             | Perdomo Mosquera   | 2019-05-15      |            2730
    98369 | Yesenia           | Berm├║dez Henao     | 2019-06-03      |            2711
   143228 | Juliana Ana       | Mej├¡a Mej├¡a        | 2019-06-14      |            2700
    49317 | Rub├®n             | Villamizar Mej├¡a   | 2019-06-18      |            2696
   130458 | Nicol├ís           | S├ínchez Rodr├¡guez  | 2019-10-31      |            2561
   137392 | Emilio            | Carrillo Perdomo   | 2019-11-08      |            2553
    23558 | Yuliana           | Rodr├¡guez Vargas   | 2019-11-10      |            2551
     1625 | Orlando           | Salazar Berm├║dez   | 2019-12-13      |            2518
   133431 | Fabio             | D├¡az Cu├®llar       | 2019-12-26      |            2505
    82408 | Iv├ín Jaime        | C├íceres Galvis     | 2020-02-17      |            2452
    20221 | Alejandro         | Narv├íez Polan├¡a    | 2020-02-23      |            2446
    75750 | Gloria Aura       | R├¡os Vera          | 2020-03-03      |            2437
     4675 | Alejandra         | Molina Torres      | 2020-03-27      |            2413
    94342 | Gustavo           | Moreno L├│pez       | 2020-04-07      |            2402
   122172 | ├ülvaro            | Correa R├¡os        | 2020-05-17      |            2362
     6320 | Luisa             | Caicedo Restrepo   | 2020-06-09      |            2339
    13262 | Antonio           | D├¡az V├®lez         | 2020-07-04      |            2314
    26952 | Elsa              | Mej├¡a Vera         | 2020-07-24      |            2294
    31509 | Aura              | Castillo Henao     | 2020-08-08      |            2279
    42854 | Javier            | Gonz├ílez Zuluaga   | 2020-09-01      |            2255
    37666 | Fernando          | Galvis Duarte      | 2020-09-13      |            2243
   144172 | Emilio            | Berm├║dez Rojas     | 2020-10-04      |            2222
   107991 | Erika             | R├¡os Su├írez        | 2020-10-22      |            2204
    39404 | Javier            | Pinz├│n Jim├®nez     | 2020-10-28      |            2198
    11280 | Adriana           | Mosquera Ospina    | 2020-10-28      |            2198
    36712 | Anc├¡zar           | Arango Silva       | 2020-11-24      |            2171
    86632 | Ramiro            | Zuluaga Duque      | 2020-11-24      |            2171
    79587 | Luisa             | Montoya Mej├¡a      | 2021-01-12      |            2122
    37008 | Esteban           | Salazar Parra      | 2021-01-22      |            2112
     2716 | Gloria            | Mar├¡n Rivera       | 2021-01-28      |            2106
    68477 | Liliana           | P├®rez Parra        | 2021-01-31      |            2103
     8485 | Anc├¡zar Cristian  | Polan├¡a Delgado    | 2021-02-24      |            2079
    69842 | Gustavo           | Parra Ortiz        | 2021-03-16      |            2059
    73696 | Ruth              | Jim├®nez Guerrero   | 2021-03-19      |            2056
    18487 | Mauricio          | Pe├▒a Bastidas      | 2021-03-21      |            2054
    71269 | Dora Luc├¡a        | Uribe Arango       | 2021-04-18      |            2026
    41311 | Hernando Miguel   | Jim├®nez Restrepo   | 2021-05-02      |            2012
   127305 | Daniela           | Lozano Castro      | 2021-05-04      |            2010
    43464 | Gloria            | Tovar Benavides    | 2021-05-16      |            1998
    82546 | Javier            | Burbano Molina     | 2021-06-09      |            1974
    61172 | Andr├®s Emilio     | Valencia Parra     | 2021-06-17      |            1966
    61995 | Ricardo           | Castro Contreras   | 2021-06-18      |            1965
   124756 | Luz               | Ni├▒o Guerrero      | 2021-06-20      |            1963
(230 filas)
/*