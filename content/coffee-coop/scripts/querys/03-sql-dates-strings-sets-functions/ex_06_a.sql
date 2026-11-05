/*
Exercise 06
a
Short name and phone for female farmers in municipality 54518
*/

SELECT
    CONCAT(SUBSTRING(T1.first_name FROM 1 FOR 1), '. ', T1.last_name) AS short_name,
    T1.phone_number AS phone
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
  AND T1.gender = 'F'
ORDER BY T1.last_name ASC, T1.first_name ASC;

/*
      short_name      |   phone
----------------------+------------
 M. Agudelo Sandoval  | 3242280898
 E. ├ülvarez Bonilla   | 3236902029
 R. ├ülvarez C├írdenas  | 3047898372
 M. ├ülvarez Carrillo  | 3059237130
 M. ├ülvarez Correa    | 3232410671
 M. Arango Narv├íez    | 3178267449
 E. Arias ├ülvarez     | 3213658326
 V. Arias Ram├¡rez     | 3204850778
 I. Barrera Cabrera   | 3041744702
 M. Barrera Correa    | 3126485460
 A. Bastidas Chamorro | 3023807439
 M. Bastidas Medina   | 3508652479
 R. Bastidas Su├írez   | 3015208796
 M. Benavides Delgado | 3229418470
 Y. Berm├║dez Henao    | 3141005257
 M. Burbano Duarte    | 3183590387
 J. Burbano Jaimes    | 3202058604
 N. Caicedo Medina    | 3183905612
 L. Caicedo Restrepo  | 3232775188
 C. C├írdenas Moreno   | 3149324862
 A. Cardona Ruiz      | 3007467744
 A. Castillo Henao    | 3136723568
 L. Chamorro V├®lez    | 3002682380
 I. D├¡az Cu├®llar      | 3507141858
 C. D├¡az Garc├¡a       | 3207660684
 D. D├¡az Medina       | 3023178503
 A. Duarte Duque      | 3059102841
 I. Duque C├írdenas    | 3218255507
 I. Erazo Hern├índez   | 3218610130
 M. Fl├│rez Gonz├ílez   | 3139496613
 M. Fl├│rez Gonz├ílez   | 3129681922
 M. Giraldo Arango    | 3243151645
 V. Gonz├ílez Molina   | 3213218779
 S. Henao Jaimes      | 3215284608
 N. Henao Ram├¡rez     | 3505807029
 D. Hern├índez Correa  | 3166719225
 B. Hern├índez Mu├▒oz   | 3169006643
 T. Ibarra Caicedo    | 3029275295
 E. Ibarra Molina     | 3189660702
 L. Jaimes Berm├║dez   | 3028082182
 R. Jaimes Cardona    | 3113703408
 E. Jaimes Vera       | 3007738061
 R. Jim├®nez Guerrero  | 3502547964
 I. Jim├®nez Jaimes    | 3104090231
 S. Losada Guti├®rrez  | 3176835753
 D. Lozano Castro     | 3185641970
 L. Lozano Losada     | 3163744297
 D. Lozano Rinc├│n     | 3506302080
 E. Mar├¡n Henao       | 3207549458
 S. Mar├¡n Osorio      | 3022845525
 S. Mar├¡n Rojas       | 3111640267
 J. Mej├¡a Mej├¡a       | 3163353607
 Y. Mej├¡a Rangel      | 3135795746
 E. Mej├¡a Vera        | 3019766136
 D. Molina Moreno     | 3207898298
 A. Molina Torres     | 3102358832
 L. Montoya Mej├¡a     | 3204290515
 F. Montoya Valencia  | 3226927113
 V. Mora Rangel       | 3045031417
 A. Mosquera Moreno   | 3115813829
 A. Mosquera Ospina   | 3118036799
 I. Mosquera Sandoval | 3168625937
 L. Mosquera Uribe    | 3119365364
 L. Ni├▒o Guerrero     | 3192252062
 G. Ni├▒o Ortiz        | 3225832230
 S. Ortega Garc├¡a     | 3128326631
 J. Ortega Osorio     | 3206119667
 R. Ortega Serrano    | 3249488512
 M. Ortiz Ruiz        | 3004621446
 L. Osorio Cu├®llar    | 3142214272
 N. Ospina Burbano    | 3024148071
 M. P├®rez Jaimes      | 3106136802
 L. P├®rez Parra       | 3059370269
 M. Pinz├│n Delgado    | 3227789082
 I. Polan├¡a Bedoya    | 3228967635
 M. Ram├¡rez Castro    | 3169846360
 E. Ramos C├írdenas    | 3223652167
 N. Ramos Vargas      | 3001623960
 Y. Rinc├│n Caicedo    | 3041422228
 R. R├¡os C├írdenas     | 3175410872
 A. R├¡os Rodr├¡guez    | 3179156514
 E. R├¡os Su├írez       | 3235535099
 G. R├¡os Vera         | 3022197781
 E. Rivera Rivera     | 3126087263
 G. Rodr├¡guez Ortega  | 3163610048
 R. Rodr├¡guez P├®rez   | 3021808053
 Y. Rodr├¡guez Vargas  | 3173571208
 P. Rojas R├¡os        | 3186792700
 L. Rojas Torres      | 3139216657
 E. Romero Betancur   | 3029623613
 C. S├ínchez Pinz├│n    | 3053337474
 Y. Sandoval Bedoya   | 3157502482
 ├ü. Sandoval Berm├║dez | 3505232225
 G. Sandoval Duarte   | 3042274831
 S. Sandoval Ortega   | 3026392429
 M. Sandoval Osorio   | 3016344667
 J. Silva G├│mez       | 3177516031
 Y. Silva Henao       | 3146481441
 T. Torres Giraldo    | 3173921806
 A. Torres Ortega     | 3136363548
 G. Tovar Benavides   | 3041469978
 ├ü. Tovar Lasso       | 3177458442
 D. Uribe Arango      | 3173140479
 M. Valencia Moreno   | 3241389451
 T. Valencia Moreno   | 3186216099
 E. Valencia Ortiz    | 3111830019
 A. Vera Calder├│n     | 3055735681
 Y. Zapata Parra      | 3172431642
 O. Zapata Rivera     | 3025693162
 V. Zapata Valencia   | 3166445539
 L. Zuluaga Benavides | 3243686927
(111 filas)
/*