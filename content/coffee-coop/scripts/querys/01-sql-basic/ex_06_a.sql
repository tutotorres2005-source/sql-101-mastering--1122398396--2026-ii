-- Exercise 06- a
-- Female farmers (gender = 'F') in municipality 54518 (Pamplona) ordered by last name, then first name

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.phone_number AS phone
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
  AND T1.gender = 'F'
ORDER BY T1.last_name ASC, T1.first_name ASC;


/*
document  |    first_name     |     last_name     |   phone
------------+-------------------+-------------------+------------
 768461420  | Marleny           | Agudelo Sandoval  | 3242280898
 931079279  | Edilma            | ┴lvarez Bonilla   | 3236902029
 463842401  | RocÝo             | ┴lvarez Cßrdenas  | 3047898372
 788628125  | M¾nica            | ┴lvarez Carrillo  | 3059237130
 939635303  | Marleny           | ┴lvarez Correa    | 3232410671
 1089620113 | Myriam Yuliana    | Arango Narvßez    | 3178267449
 172555225  | Edilma Gabriela   | Arias ┴lvarez     | 3213658326
 550696749  | Viviana           | Arias RamÝrez     | 3204850778
 797017145  | Isabella          | Barrera Cabrera   | 3041744702
 659942505  | Mariana           | Barrera Correa    | 3126485460
 1103932523 | Amparo            | Bastidas Chamorro | 3023807439
 1027436085 | Manuela           | Bastidas Medina   | 3508652479
 649244180  | RocÝo             | Bastidas Sußrez   | 3015208796
 21358854   | Manuela Yolanda   | Benavides Delgado | 3229418470
 737383707  | Yesenia           | Berm·dez Henao    | 3141005257
 549054771  | MarÝa             | Burbano Duarte    | 3183590387
 436957556  | JazmÝn            | Burbano Jaimes    | 3202058604
 918053770  | Nubia Juliana     | Caicedo Medina    | 3183905612
 356207226  | Luisa             | Caicedo Restrepo  | 3232775188
 358946393  | Carmen            | Cßrdenas Moreno   | 3149324862
 756369749  | Andrea            | Cardona Ruiz      | 3007467744
 65169775   | Aura              | Castillo Henao    | 3136723568
 1001030458 | Liliana Luisa     | Chamorro VÚlez    | 3002682380
 977130251  | InÚs LucÝa        | DÝaz CuÚllar      | 3507141858
 1117597835 | Cecilia Lorena    | DÝaz GarcÝa       | 3207660684
 828628976  | Diana             | DÝaz Medina       | 3023178503
 932437698  | Amparo            | Duarte Duque      | 3059102841
 95544811   | InÚs              | Duque Cßrdenas    | 3218255507
 522380895  | InÚs              | Erazo Hernßndez   | 3218610130
 409306735  | M¾nica Claudia    | Fl¾rez Gonzßlez   | 3139496613
 257495692  | Myriam            | Fl¾rez Gonzßlez   | 3129681922
 155695928  | Martha            | Giraldo Arango    | 3243151645
 622024549  | Viviana           | Gonzßlez Molina   | 3213218779
 793512107  | Sandra            | Henao Jaimes      | 3215284608
 316655568  | Nubia Natalia     | Henao RamÝrez     | 3505807029
 343256743  | Dora              | Hernßndez Correa  | 3166719225
 520313287  | Beatriz           | Hernßndez Mu±oz   | 3169006643
 1167705984 | Teresa            | Ibarra Caicedo    | 3029275295
 1185523747 | Elsa              | Ibarra Molina     | 3189660702
 425322677  | Luz Martha        | Jaimes Berm·dez   | 3028082182
 42562183   | RocÝo Manuela     | Jaimes Cardona    | 3113703408
 433286601  | Esperanza         | Jaimes Vera       | 3007738061
 550093228  | Ruth              | JimÚnez Guerrero  | 3502547964
 1148351420 | InÚs              | JimÚnez Jaimes    | 3104090231
 1157650796 | Sara              | Losada GutiÚrrez  | 3176835753
 530206966  | Daniela           | Lozano Castro     | 3185641970
 456256773  | Luisa             | Lozano Losada     | 3163744297
 754524782  | Diana             | Lozano Rinc¾n     | 3506302080
 1145130870 | Elsa              | MarÝn Henao       | 3207549458
 878614263  | Stella            | MarÝn Osorio      | 3022845525
 102695503  | SofÝa             | MarÝn Rojas       | 3111640267
 536338741  | Juliana Ana       | MejÝa MejÝa       | 3163353607
 1167191036 | Yuliana JazmÝn    | MejÝa Rangel      | 3135795746
 1171130241 | Elsa              | MejÝa Vera        | 3019766136
 781810115  | Diana Isabella    | Molina Moreno     | 3207898298
 622105662  | Alejandra         | Molina Torres     | 3102358832
 765371022  | Luisa             | Montoya MejÝa     | 3204290515
 699387247  | Fanny             | Montoya Valencia  | 3226927113
 455264704  | Valentina         | Mora Rangel       | 3045031417
 970305595  | Alejandra Andrea  | Mosquera Moreno   | 3115813829
 811557533  | Adriana           | Mosquera Ospina   | 3118036799
 1053774538 | Isabella          | Mosquera Sandoval | 3168625937
 160538872  | Liliana           | Mosquera Uribe    | 3119365364
 155634182  | Luz               | Ni±o Guerrero     | 3192252062
 360667240  | Gabriela Carolina | Ni±o Ortiz        | 3225832230
 968133883  | Sandra            | Ortega GarcÝa     | 3128326631
 1177165427 | Juliana           | Ortega Osorio     | 3206119667
 361839624  | RocÝo Alba        | Ortega Serrano    | 3249488512
 1189704117 | Mariana           | Ortiz Ruiz        | 3004621446
 783174188  | Luz               | Osorio CuÚllar    | 3142214272
 808693611  | Natalia           | Ospina Burbano    | 3024148071
 1012324420 | Martha Carolina   | PÚrez Jaimes      | 3106136802
 1143295403 | Liliana           | PÚrez Parra       | 3059370269
 571748382  | Marleny           | Pinz¾n Delgado    | 3227789082
 1060881964 | InÚs              | PolanÝa Bedoya    | 3228967635
 529703819  | M¾nica Elsa       | RamÝrez Castro    | 3169846360
 302345504  | Elsa              | Ramos Cßrdenas    | 3223652167
 746737893  | Natalia           | Ramos Vargas      | 3001623960
 647948165  | Yesenia           | Rinc¾n Caicedo    | 3041422228
 290597798  | Rosa              | RÝos Cßrdenas     | 3175410872
 252140095  | Alba              | RÝos RodrÝguez    | 3179156514
 273193028  | Erika             | RÝos Sußrez       | 3235535099
 870262750  | Gloria Aura       | RÝos Vera         | 3022197781
 333176982  | Edilma            | Rivera Rivera     | 3126087263
 137851877  | Gabriela          | RodrÝguez Ortega  | 3163610048
 1090968710 | Ruth              | RodrÝguez PÚrez   | 3021808053
 548464915  | Yuliana           | RodrÝguez Vargas  | 3173571208
 897433183  | Patricia Amparo   | Rojas RÝos        | 3186792700
 863442205  | Luz               | Rojas Torres      | 3139216657
 24999630   | Esperanza         | Romero Betancur   | 3029623613
 1079700992 | Camila            | Sßnchez Pinz¾n    | 3053337474
 302059113  | Yuliana           | Sandoval Bedoya   | 3157502482
 1180237528 | ┴ngela Beatriz    | Sandoval Berm·dez | 3505232225
 1090578662 | Gladys Patricia   | Sandoval Duarte   | 3042274831
 938685616  | Sandra            | Sandoval Ortega   | 3026392429
 449792023  | Myriam            | Sandoval Osorio   | 3016344667
 988262002  | JazmÝn            | Silva G¾mez       | 3177516031
 1050862619 | Yesenia           | Silva Henao       | 3146481441
 700421194  | Teresa            | Torres Giraldo    | 3173921806
 356807172  | Aura              | Torres Ortega     | 3136363548
 756405214  | Gloria            | Tovar Benavides   | 3041469978
 553185238  | ┴ngela            | Tovar Lasso       | 3177458442
 179146863  | Dora LucÝa        | Uribe Arango      | 3173140479
 534023693  | Myriam            | Valencia Moreno   | 3241389451
 748380481  | Teresa Adriana    | Valencia Moreno   | 3186216099
 712500733  | Esperanza         | Valencia Ortiz    | 3111830019
 727121857  | Alba              | Vera Calder¾n     | 3055735681
 796884051  | Yuliana           | Zapata Parra      | 3172431642
 314914042  | Olga Luisa        | Zapata Rivera     | 3025693162
 224364120  | Valentina         | Zapata Valencia   | 3166445539
 338193839  | Laura             | Zuluaga Benavides | 3243686927
(111 filas)

/*

