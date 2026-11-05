/*
Exercise 09
c
Function farm.fn_short_name and list of male farmers in municipality 54518
*/

CREATE OR REPLACE FUNCTION farm.fn_short_name(p_first_name VARCHAR, p_last_name VARCHAR)
RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
DECLARE
    v_short_name VARCHAR;
BEGIN
    SELECT CONCAT(SUBSTRING(p_first_name FROM 1 FOR 1), '. ', p_last_name)
    INTO v_short_name;

    RETURN v_short_name;
END;
$$;

SELECT
    farm.fn_short_name(T1.first_name, T1.last_name) AS short_name,
    T1.phone_number AS phone
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
  AND T1.gender = 'M'
ORDER BY T1.last_name ASC, T1.first_name ASC;

/*
      short_name       |   phone
-----------------------+------------
 M. Agudelo Jim├®nez    | 3219718862
 A. ├ülvarez Villamizar | 3025342853
 A. Arango Silva       | 3053453318
 C. Arias Mora         | 3045535545
 G. Arias Rodr├¡guez    | 3131845672
 R. Barrera Villamizar | 3056539829
 A. Bastidas Rodr├¡guez | 3145736315
 A. Bastidas Rodr├¡guez | 3508682050
 N. Bedoya V├®lez       | 3194564518
 I. Berm├║dez Fl├│rez    | 3139698870
 R. Berm├║dez Mu├▒oz     | 3051351571
 E. Berm├║dez Rojas     | 3142064892
 S. Berm├║dez Ruiz      | 3003993000
 D. Bonilla Duarte     | 3234592947
 ├ë. Burbano Arango     | 3203780826
 F. Burbano Fl├│rez     | 3028675754
 J. Burbano Molina     | 3158636721
 R. Cabrera Villamizar | 3502554241
 I. C├íceres Galvis     | 3047673614
 C. Calder├│n Trujillo  | 3167509635
 E. Carrillo Perdomo   | 3135267851
 C. Castillo Torres    | 3197585250
 R. Castro Contreras   | 3197205687
 N. Chamorro Vera      | 3001185317
 E. Contreras Ospina   | 3147500823
 A. Contreras Pe├▒a     | 3116255536
 ├ü. Correa R├¡os        | 3125462491
 J. Cu├®llar C├íceres    | 3019841594
 H. Cu├®llar Romero     | 3506087296
 E. Delgado Molina     | 3118015821
 J. Delgado Villamizar | 3225663039
 F. D├¡az Cu├®llar       | 3004527998
 W. D├¡az Ram├¡rez       | 3227044397
 A. D├¡az V├®lez         | 3013067467
 D. Duque Ruiz         | 3242698476
 F. Galvis Duarte      | 3126767373
 N. Gonz├ílez Rodr├¡guez | 3023800384
 J. Gonz├ílez Zuluaga   | 3504451578
 C. Guti├®rrez Pab├│n    | 3223406765
 F. Hern├índez Lasso    | 3246919070
 A. Hern├índez Uribe    | 3058169707
 C. Herrera Zuluaga    | 3242295228
 G. Ibarra Agudelo     | 3506003684
 D. Jaimes Ruiz        | 3132431627
 L. Jaimes Salazar     | 3116927952
 H. Jim├®nez C├íceres    | 3164266457
 H. Jim├®nez Parra      | 3244209117
 H. Jim├®nez Restrepo   | 3048547264
 L. Lasso Serrano      | 3113250445
 W. L├│pez Villamizar   | 3055094275
 J. Mar├¡n Hern├índez    | 3114778905
 G. Mar├¡n Sandoval     | 3205233566
 Y. Medina Londo├▒o     | 3501426840
 N. Mej├¡a Vera         | 3022063857
 J. Molina Pab├│n       | 3018237329
 H. Montoya Agudelo    | 3218003724
 W. Montoya Rodr├¡guez  | 3217677705
 G. Moreno L├│pez       | 3026442670
 G. Mosquera L├│pez     | 3119000149
 L. Mosquera Perdomo   | 3135244980
 A. Narv├íez Polan├¡a    | 3189266165
 D. Ni├▒o Hern├índez     | 3103428954
 E. Ortega Correa      | 3504175536
 J. Ortega Zapata      | 3217129169
 A. Ortiz Lasso        | 3228095091
 J. Ortiz Vargas       | 3233745261
 ├ô. Ospina Gonz├ílez    | 3153244524
 G. Parra Ortiz        | 3218747954
 W. Parra Prada        | 3217256211
 R. Parra Trujillo     | 3207383618
 M. Pe├▒a Bastidas      | 3156616125
 J. Pe├▒a Betancur      | 3239120208
 D. Perdomo Mosquera   | 3007586507
 A. P├®rez Castro       | 3245612074
 W. P├®rez Chamorro     | 3124455023
 G. P├®rez P├®rez        | 3015741336
 E. Pinz├│n Cabrera     | 3216450755
 J. Pinz├│n Jim├®nez     | 3132924855
 A. Polan├¡a Delgado    | 3028825809
 M. Quintero Arias     | 3201475349
 P. Ram├¡rez Barrera    | 3236105041
 F. Ram├¡rez Sandoval   | 3051595847
 R. Ramos Chamorro     | 3244273375
 F. Restrepo Perdomo   | 3158258103
 R. Rinc├│n Romero      | 3235869676
 M. Rinc├│n Su├írez      | 3135034800
 M. R├¡os Ibarra        | 3188497714
 F. R├¡os Ospina        | 3243938067
 N. Rivera Duque       | 3029310183
 D. Rivera Jim├®nez     | 3508307641
 ├ô. Rivera Tovar       | 3112576000
 F. Rojas C├írdenas     | 3235672830
 R. Romero Agudelo     | 3028845789
 D. Romero Bonilla     | 3018117176
 J. Romero Guti├®rrez   | 3209752935
 G. Romero Pinz├│n      | 3108757369
 O. Salazar Berm├║dez   | 3141904023
 E. Salazar Parra      | 3162718294
 R. S├ínchez Agudelo    | 3007420608
 N. S├ínchez Rodr├¡guez  | 3114761362
 A. Silva Villamizar   | 3196176936
 R. Su├írez Polan├¡a     | 3128378640
 G. Torres Guerrero    | 3225736942
 A. Tovar Calder├│n     | 3023121990
 L. Trujillo Torres    | 3162889357
 M. Uribe Cu├®llar      | 3104008873
 J. Valencia Narv├íez   | 3202082759
 A. Valencia Parra     | 3177768578
 F. Valencia Ram├¡rez   | 3007371586
 ├ü. Valencia Rivera    | 3218112033
 M. Villamizar Correa  | 3104065619
 R. Villamizar Mej├¡a   | 3167701408
 D. Zapata Arias       | 3013691068
 I. Zapata Ortiz       | 3143905175
 R. Zuluaga Duque      | 3143338682
(115 filas)
/*