-- Exercise 06 - b
-- Farmers in municipality 54518 (Pamplona) with no registered email

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.email AS email,
    T1.municipality_code AS municipality_code
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
  AND T1.email IS NULL
ORDER BY T1.last_name ASC, T1.first_name ASC;

/*
 document  |    first_name    |     last_name      | email | municipality_code
------------+------------------+--------------------+-------+-------------------
 768461420  | Marleny          | Agudelo Sandoval   |       | 54518
 939635303  | Marleny          | ┴lvarez Correa     |       | 54518
 302223305  | Camilo           | Arias Mora         |       | 54518
 550696749  | Viviana          | Arias RamÝrez      |       | 54518
 797017145  | Isabella         | Barrera Cabrera    |       | 54518
 483692716  | Ramiro           | Barrera Villamizar |       | 54518
 718906996  | Nelson           | Bedoya VÚlez       |       | 54518
 21358854   | Manuela Yolanda  | Benavides Delgado  |       | 54518
 737383707  | Yesenia          | Berm·dez Henao     |       | 54518
 1015411133 | Santiago         | Berm·dez Ruiz      |       | 54518
 141613744  | ╔dgar            | Burbano Arango     |       | 54518
 549054771  | MarÝa            | Burbano Duarte     |       | 54518
 716388403  | Emilio           | Carrillo Perdomo   |       | 54518
 1001674689 | Jaime Santiago   | CuÚllar Cßceres    |       | 54518
 749444168  | Emilio           | Delgado Molina     |       | 54518
 1117597835 | Cecilia Lorena   | DÝaz GarcÝa        |       | 54518
 932437698  | Amparo           | Duarte Duque       |       | 54518
 846209158  | Daniel HÚctor    | Duque Ruiz         |       | 54518
 622024549  | Viviana          | Gonzßlez Molina    |       | 54518
 35147265   | Carlos           | GutiÚrrez Pab¾n    |       | 54518
 343256743  | Dora             | Hernßndez Correa   |       | 54518
 525766302  | Gustavo          | Ibarra Agudelo     |       | 54518
 1185523747 | Elsa             | Ibarra Molina      |       | 54518
 1148351420 | InÚs             | JimÚnez Jaimes     |       | 54518
 860920785  | Hugo             | JimÚnez Parra      |       | 54518
 232229735  | Libardo          | Lasso Serrano      |       | 54518
 712758473  | Wilson           | L¾pez Villamizar   |       | 54518
 754524782  | Diana            | Lozano Rinc¾n      |       | 54518
 131166207  | Jaime            | MarÝn Hernßndez    |       | 54518
 727945493  | Gloria           | MarÝn Rivera       |       | 54518
 102695503  | SofÝa            | MarÝn Rojas        |       | 54518
 1171130241 | Elsa             | MejÝa Vera         |       | 54518
 554620706  | Nelson Samuel    | MejÝa Vera         |       | 54518
 824422301  | Hernando         | Montoya Agudelo    |       | 54518
 283636187  | Gustavo          | Moreno L¾pez       |       | 54518
 963176673  | Luis             | Mosquera Perdomo   |       | 54518
 1053774538 | Isabella         | Mosquera Sandoval  |       | 54518
 160538872  | Liliana          | Mosquera Uribe     |       | 54518
 723123018  | Diego            | Ni±o Hernßndez     |       | 54518
 641839251  | EfraÝn           | Ortega Correa      |       | 54518
 1177165427 | Juliana          | Ortega Osorio      |       | 54518
 361839624  | RocÝo Alba       | Ortega Serrano     |       | 54518
 59388780   | Juan             | Ortega Zapata      |       | 54518
 1189704117 | Mariana          | Ortiz Ruiz         |       | 54518
 914235490  | Ëscar            | Ospina Gonzßlez    |       | 54518
 966970818  | Gustavo          | Parra Ortiz        |       | 54518
 1135293825 | Abelardo         | PÚrez Castro       |       | 54518
 549847293  | Wilmer           | PÚrez Chamorro     |       | 54518
 599185252  | EfraÝn           | Pinz¾n Cabrera     |       | 54518
 914044314  | AncÝzar Cristian | PolanÝa Delgado    |       | 54518
 33787285   | RubÚn            | Ramos Chamorro     |       | 54518
 273193028  | Erika            | RÝos Sußrez        |       | 54518
 1090968710 | Ruth             | RodrÝguez PÚrez    |       | 54518
 548464915  | Yuliana          | RodrÝguez Vargas   |       | 54518
 446019320  | Fernando         | Rojas Cßrdenas     |       | 54518
 24999630   | Esperanza        | Romero Betancur    |       | 54518
 940051048  | David Germßn     | Romero Bonilla     |       | 54518
 922724022  | Esteban          | Salazar Parra      |       | 54518
 1079700992 | Camila           | Sßnchez Pinz¾n     |       | 54518
 610678466  | Nicolßs          | Sßnchez RodrÝguez  |       | 54518
 938685616  | Sandra           | Sandoval Ortega    |       | 54518
 449792023  | Myriam           | Sandoval Osorio    |       | 54518
 403413565  | Reinaldo         | Sußrez PolanÝa     |       | 54518
 712500733  | Esperanza        | Valencia Ortiz     |       | 54518
 796884051  | Yuliana          | Zapata Parra       |       | 54518
(65 filas)
/*