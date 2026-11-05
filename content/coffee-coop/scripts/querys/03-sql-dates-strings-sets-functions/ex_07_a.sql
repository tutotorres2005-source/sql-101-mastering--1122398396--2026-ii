/*
Exercise 07
a
Unified contact directory for farmers in 54518 and collection points in Norte de Santander
*/

SELECT
    'farmer' AS contact_type,
    CONCAT(T1.first_name, ' ', T1.last_name) AS contact_name,
    T1.phone_number AS phone
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
  AND T1.phone_number IS NOT NULL

UNION

SELECT
    'collection_point' AS contact_type,
    T2.point_name AS contact_name,
    T2.phone_number AS phone
FROM buy.collection_points AS T2
INNER JOIN geo.municipalities AS T3
    ON T2.municipality_code = T3.municipality_code
INNER JOIN geo.departments AS T4
    ON T3.department_code = T4.department_code
WHERE UPPER(T4.department_name) = UPPER('Norte de Santander')
  AND T2.phone_number IS NOT NULL

ORDER BY contact_type ASC, contact_name ASC;

/*
   contact_type   |           contact_name            |   phone
------------------+-----------------------------------+------------
 collection_point | Punto de Compra Chin├ícota 1       | 6018933221
 collection_point | Punto de Compra Convenci├│n 1      | 6013582031
 collection_point | Punto de Compra El Carmen 1       | 6026129845
 collection_point | Punto de Compra El Zulia 1        | 6014148127
 collection_point | Punto de Compra Herr├ín 1          | 6017529911
 collection_point | Punto de Compra Herr├ín 2          | 6079941701
 collection_point | Punto de Compra Oca├▒a 1           | 6032506284
 collection_point | Punto de Compra Sardinata 1       | 6039449180
 farmer           | Abelardo P├®rez Castro             | 3245612074
 farmer           | Adriana Mosquera Ospina           | 3118036799
 farmer           | Alba R├¡os Rodr├¡guez               | 3179156514
 farmer           | Alba Vargas Losada                | 3242791385
 farmer           | Alba Vera Calder├│n                | 3055735681
 farmer           | Alberto ├ülvarez Villamizar        | 3025342853
 farmer           | Alberto Bastidas Rodr├¡guez        | 3145736315
 farmer           | Alberto Ortiz Lasso               | 3228095091
 farmer           | Alejandra Andrea Mosquera Moreno  | 3115813829
 farmer           | Alejandra Molina Torres           | 3102358832
 farmer           | Alejandro Narv├íez Polan├¡a         | 3189266165
 farmer           | ├ülvaro Berm├║dez Mar├¡n             | 3109599129
 farmer           | ├ülvaro Correa R├¡os                | 3125462491
 farmer           | ├ülvaro Valencia Rivera            | 3218112033
 farmer           | Amparo Bastidas Chamorro          | 3023807439
 farmer           | Amparo Duarte Duque               | 3059102841
 farmer           | Anc├¡zar Arango Silva              | 3053453318
 farmer           | Anc├¡zar Cristian Polan├¡a Delgado  | 3028825809
 farmer           | Andrea Cardona Ruiz               | 3007467744
 farmer           | Andr├®s Emilio Valencia Parra      | 3177768578
 farmer           | ├üngela Beatriz Sandoval Berm├║dez  | 3505232225
 farmer           | ├üngela Tovar Lasso                | 3177458442
 farmer           | An├¡bal Silva Villamizar           | 3196176936
 farmer           | Antonio Bastidas Rodr├¡guez        | 3508682050
 farmer           | Antonio D├¡az V├®lez                | 3013067467
 farmer           | Arturo Contreras Pe├▒a             | 3116255536
 farmer           | Arturo Hern├índez Uribe            | 3058169707
 farmer           | Arturo Tovar Calder├│n             | 3023121990
 farmer           | Aura Castillo Henao               | 3136723568
 farmer           | Aura Torres Ortega                | 3136363548
 farmer           | Beatriz Hern├índez Mu├▒oz           | 3169006643
 farmer           | Camila S├ínchez Pinz├│n             | 3053337474
 farmer           | Camilo Arias Mora                 | 3045535545
 farmer           | Camilo Iv├ín Calder├│n Trujillo     | 3167509635
 farmer           | Carlos Castillo Torres            | 3197585250
 farmer           | Carlos Guti├®rrez Pab├│n            | 3223406765
 farmer           | Carmen C├írdenas Moreno            | 3149324862
 farmer           | Cecilia Lorena D├¡az Garc├¡a        | 3207660684
 farmer           | Cristian Herrera Zuluaga          | 3242295228
 farmer           | Daniel Bonilla Duarte             | 3234592947
 farmer           | Daniel H├®ctor Duque Ruiz          | 3242698476
 farmer           | Daniela Lozano Castro             | 3185641970
 farmer           | David Germ├ín Romero Bonilla       | 3018117176
 farmer           | David Jaimes Ruiz                 | 3132431627
 farmer           | David Perdomo Mosquera            | 3007586507
 farmer           | David Zapata Arias                | 3013691068
 farmer           | Diana D├¡az Medina                 | 3023178503
 farmer           | Diana Isabella Molina Moreno      | 3207898298
 farmer           | Diana Londo├▒o Ramos               | 3124456518
 farmer           | Diana Lozano Rinc├│n               | 3506302080
 farmer           | Diego Ni├▒o Hern├índez              | 3103428954
 farmer           | Diego Rivera Jim├®nez              | 3508307641
 farmer           | Dora Hern├índez Correa             | 3166719225
 farmer           | Dora Luc├¡a Uribe Arango           | 3173140479
 farmer           | ├ëdgar Burbano Arango              | 3203780826
 farmer           | Edilma ├ülvarez Bonilla            | 3236902029
 farmer           | Edilma Gabriela Arias ├ülvarez     | 3213658326
 farmer           | Edilma Rivera Rivera              | 3126087263
 farmer           | Efra├¡n Ortega Correa              | 3504175536
 farmer           | Efra├¡n Pinz├│n Cabrera             | 3216450755
 farmer           | Efra├¡n Ricardo Contreras Ospina   | 3147500823
 farmer           | Elsa Ibarra Molina                | 3189660702
 farmer           | Elsa Mar├¡n Henao                  | 3207549458
 farmer           | Elsa Mej├¡a Vera                   | 3019766136
 farmer           | Elsa Ramos C├írdenas               | 3223652167
 farmer           | Emilio Berm├║dez Rojas             | 3142064892
 farmer           | Emilio Carrillo Perdomo           | 3135267851
 farmer           | Emilio Delgado Molina             | 3118015821
 farmer           | Erika R├¡os Su├írez                 | 3235535099
 farmer           | Esperanza Jaimes Vera             | 3007738061
 farmer           | Esperanza Romero Betancur         | 3029623613
 farmer           | Esperanza Valencia Ortiz          | 3111830019
 farmer           | Esteban Salazar Parra             | 3162718294
 farmer           | Fabio D├¡az Cu├®llar                | 3004527998
 farmer           | Fabio Hern├índez Lasso             | 3246919070
 farmer           | Fabio Luis Valencia Ram├¡rez       | 3007371586
 farmer           | Fanny Montoya Valencia            | 3226927113
 farmer           | Felipe Camilo R├¡os Ospina         | 3243938067
 farmer           | Fernando Burbano Fl├│rez           | 3028675754
 farmer           | Fernando Galvis Duarte            | 3126767373
 farmer           | Fernando Rojas C├írdenas           | 3235672830
 farmer           | Francisco Ram├¡rez Sandoval        | 3051595847
 farmer           | Francisco Restrepo Perdomo        | 3158258103
 farmer           | Gabriela Carolina Ni├▒o Ortiz      | 3225832230
 farmer           | Gabriela Rodr├¡guez Ortega         | 3163610048
 farmer           | Gladys Patricia Sandoval Duarte   | 3042274831
 farmer           | Gloria Aura R├¡os Vera             | 3022197781
 farmer           | Gloria Mar├¡n Rivera               | 3225571567
 farmer           | Gloria Tovar Benavides            | 3041469978
 farmer           | Guillermo Pedro Arias Rodr├¡guez   | 3131845672
 farmer           | Guillermo P├®rez P├®rez             | 3015741336
 farmer           | Gustavo Heriberto Torres Guerrero | 3225736942
 farmer           | Gustavo Ibarra Agudelo            | 3506003684
 farmer           | Gustavo Mar├¡n Sandoval            | 3205233566
 farmer           | Gustavo Moreno L├│pez              | 3026442670
 farmer           | Gustavo Mosquera L├│pez            | 3119000149
 farmer           | Gustavo Parra Ortiz               | 3218747954
 farmer           | Gustavo Pedro Romero Pinz├│n       | 3108757369
 farmer           | Heriberto Andr├®s Cu├®llar Romero   | 3506087296
 farmer           | Heriberto Jim├®nez C├íceres         | 3164266457
 farmer           | Hernando Miguel Jim├®nez Restrepo  | 3048547264
 farmer           | Hernando Montoya Agudelo          | 3218003724
 farmer           | Hugo Jim├®nez Parra                | 3244209117
 farmer           | In├®s Duque C├írdenas               | 3218255507
 farmer           | In├®s Erazo Hern├índez              | 3218610130
 farmer           | In├®s Jim├®nez Jaimes               | 3104090231
 farmer           | In├®s Luc├¡a D├¡az Cu├®llar           | 3507141858
 farmer           | In├®s Polan├¡a Bedoya               | 3228967635
 farmer           | Isabella Barrera Cabrera          | 3041744702
 farmer           | Isabella Mosquera Sandoval        | 3168625937
 farmer           | Iv├ín Berm├║dez Fl├│rez              | 3139698870
 farmer           | Iv├ín Jaime C├íceres Galvis         | 3047673614
 farmer           | Iv├ín Zapata Ortiz                 | 3143905175
 farmer           | Jaime Mar├¡n Hern├índez             | 3114778905
 farmer           | Jaime Santiago Cu├®llar C├íceres    | 3019841594
 farmer           | Jaime Wilmer Ortiz Vargas         | 3233745261
 farmer           | Jairo Molina Pab├│n                | 3018237329
 farmer           | Jairo Romero Guti├®rrez            | 3209752935
 farmer           | Javier Burbano Molina             | 3158636721
 farmer           | Javier Gonz├ílez Zuluaga           | 3504451578
 farmer           | Javier Pinz├│n Jim├®nez             | 3132924855
 farmer           | Jazm├¡n Burbano Jaimes             | 3202058604
 farmer           | Jazm├¡n Silva G├│mez                | 3177516031
 farmer           | Juan Ortega Zapata                | 3217129169
 farmer           | Juli├ín Germ├ín Delgado Villamizar  | 3225663039
 farmer           | Juli├ín Guillermo Valencia Narv├íez | 3202082759
 farmer           | Juli├ín Pe├▒a Betancur              | 3239120208
 farmer           | Juliana Ana Mej├¡a Mej├¡a           | 3163353607
 farmer           | Juliana Ortega Osorio             | 3206119667
 farmer           | Laura Zuluaga Benavides           | 3243686927
 farmer           | Libardo Lasso Serrano             | 3113250445
 farmer           | Libardo Trujillo Torres           | 3162889357
 farmer           | Liliana Luisa Chamorro V├®lez      | 3002682380
 farmer           | Liliana Mosquera Uribe            | 3119365364
 farmer           | Liliana P├®rez Parra               | 3059370269
 farmer           | Luis Jaimes Salazar               | 3116927952
 farmer           | Luis Mosquera Perdomo             | 3135244980
 farmer           | Luisa Caicedo Restrepo            | 3232775188
 farmer           | Luisa Lozano Losada               | 3163744297
 farmer           | Luisa Montoya Mej├¡a               | 3204290515
 farmer           | Luz Martha Jaimes Berm├║dez        | 3028082182
 farmer           | Luz Ni├▒o Guerrero                 | 3192252062
 farmer           | Luz Osorio Cu├®llar                | 3142214272
 farmer           | Luz Rojas Torres                  | 3139216657
 farmer           | Manuel Agudelo Jim├®nez            | 3219718862
 farmer           | Manuel Quintero Arias             | 3201475349
 farmer           | Manuela Bastidas Medina           | 3508652479
 farmer           | Manuela Yolanda Benavides Delgado | 3229418470
 farmer           | Mar├¡a Burbano Duarte              | 3183590387
 farmer           | Mariana Barrera Correa            | 3126485460
 farmer           | Mariana Ortiz Ruiz                | 3004621446
 farmer           | Mario Rinc├│n Su├írez               | 3135034800
 farmer           | Mario R├¡os Ibarra                 | 3188497714
 farmer           | Mario Uribe Cu├®llar               | 3104008873
 farmer           | Marleny Agudelo Sandoval          | 3242280898
 farmer           | Marleny ├ülvarez Correa            | 3232410671
 farmer           | Marleny Pinz├│n Delgado            | 3227789082
 farmer           | Martha Carolina P├®rez Jaimes      | 3106136802
 farmer           | Martha Giraldo Arango             | 3243151645
 farmer           | Mauricio Pe├▒a Bastidas            | 3156616125
 farmer           | Miguel Villamizar Correa          | 3104065619
 farmer           | M├│nica ├ülvarez Carrillo           | 3059237130
 farmer           | M├│nica Claudia Fl├│rez Gonz├ílez    | 3139496613
 farmer           | M├│nica Elsa Ram├¡rez Castro        | 3169846360
 farmer           | Myriam Fl├│rez Gonz├ílez            | 3129681922
 farmer           | Myriam Sandoval Osorio            | 3016344667
 farmer           | Myriam Valencia Moreno            | 3241389451
 farmer           | Myriam Yuliana Arango Narv├íez     | 3178267449
 farmer           | Natalia Ospina Burbano            | 3024148071
 farmer           | Natalia Ramos Vargas              | 3001623960
 farmer           | Nelson Bedoya V├®lez               | 3194564518
 farmer           | Nelson Chamorro Vera              | 3001185317
 farmer           | Nelson Samuel Mej├¡a Vera          | 3022063857
 farmer           | Nicol├ís Gonz├ílez Rodr├¡guez        | 3023800384
 farmer           | Nicol├ís Rivera Duque              | 3029310183
 farmer           | Nicol├ís S├ínchez Rodr├¡guez         | 3114761362
 farmer           | Nubia Juliana Caicedo Medina      | 3183905612
 farmer           | Nubia Natalia Henao Ram├¡rez       | 3505807029
 farmer           | Olga Luisa Zapata Rivera          | 3025693162
 farmer           | Orlando Salazar Berm├║dez          | 3141904023
 farmer           | ├ôscar Ospina Gonz├ílez             | 3153244524
 farmer           | ├ôscar Rivera Tovar                | 3112576000
 farmer           | Patricia Amparo Rojas R├¡os        | 3186792700
 farmer           | Pedro Ram├¡rez Barrera             | 3236105041
 farmer           | Rafael Francisco Rinc├│n Romero    | 3235869676
 farmer           | Ramiro Barrera Villamizar         | 3056539829
 farmer           | Ramiro Parra Trujillo             | 3207383618
 farmer           | Ramiro Zuluaga Duque              | 3143338682
 farmer           | Reinaldo Jorge S├ínchez Agudelo    | 3007420608
 farmer           | Reinaldo Romero Agudelo           | 3028845789
 farmer           | Reinaldo Su├írez Polan├¡a           | 3128378640
 farmer           | Ricardo Castro Contreras          | 3197205687
 farmer           | Roc├¡o Alba Ortega Serrano         | 3249488512
 farmer           | Roc├¡o ├ülvarez C├írdenas            | 3047898372
 farmer           | Roc├¡o Bastidas Su├írez             | 3015208796
 farmer           | Roc├¡o Manuela Jaimes Cardona      | 3113703408
 farmer           | Rodrigo Guillermo Berm├║dez Mu├▒oz  | 3051351571
 farmer           | Rodrigo Nelson Cabrera Villamizar | 3502554241
 farmer           | Rosa R├¡os C├írdenas                | 3175410872
 farmer           | Rub├®n Ramos Chamorro              | 3244273375
 farmer           | Rub├®n Villamizar Mej├¡a            | 3167701408
 farmer           | Ruth Jim├®nez Guerrero             | 3502547964
 farmer           | Ruth Rodr├¡guez P├®rez              | 3021808053
 farmer           | Sandra Henao Jaimes               | 3215284608
 farmer           | Sandra Ortega Garc├¡a              | 3128326631
 farmer           | Sandra Sandoval Ortega            | 3026392429
 farmer           | Santiago Berm├║dez Ruiz            | 3003993000
 farmer           | Sara Losada Guti├®rrez             | 3176835753
 farmer           | Sof├¡a Mar├¡n Rojas                 | 3111640267
 farmer           | Stella Mar├¡n Osorio               | 3022845525
 farmer           | Teresa Adriana Valencia Moreno    | 3186216099
 farmer           | Teresa Ibarra Caicedo             | 3029275295
 farmer           | Teresa Torres Giraldo             | 3173921806
 farmer           | Valentina Mora Rangel             | 3045031417
 farmer           | Valentina Zapata Valencia         | 3166445539
 farmer           | Viviana Arias Ram├¡rez             | 3204850778
 farmer           | Viviana Gonz├ílez Molina           | 3213218779
 farmer           | Wilmer Montoya Rodr├¡guez          | 3217677705
 farmer           | Wilmer P├®rez Chamorro             | 3124455023
 farmer           | Wilson L├│pez Villamizar           | 3055094275
 farmer           | Wilson Parra Prada                | 3217256211
 farmer           | Wilson Yeison D├¡az Ram├¡rez        | 3227044397
 farmer           | Yeison Medina Londo├▒o             | 3501426840
 farmer           | Yesenia Berm├║dez Henao            | 3141005257
 farmer           | Yesenia Rinc├│n Caicedo            | 3041422228
 farmer           | Yesenia Silva Henao               | 3146481441
 farmer           | Yuliana Jazm├¡n Mej├¡a Rangel       | 3135795746
 farmer           | Yuliana Rodr├¡guez Vargas          | 3173571208
 farmer           | Yuliana Sandoval Bedoya           | 3157502482
 farmer           | Yuliana Zapata Parra              | 3172431642
(238 filas)
/*