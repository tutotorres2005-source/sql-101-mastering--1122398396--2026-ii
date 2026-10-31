-- Exercise 04 - a
-- Municipality code and name for Norte de Santander (DANE code 54), ordered alphabetically

SELECT
    T1.municipality_code AS municipality_code,
    T1.municipality_name AS municipality
FROM geo.municipalities AS T1
WHERE T1.department_code = '54'
ORDER BY T1.municipality_name ASC;

/*
 municipality_code |   municipality
-------------------+-------------------
 54003             | ┴brego
 54051             | Arboledas
 54099             | Bochalema
 54109             | Bucarasica
 54128             | Cßchira
 54125             | Cßcota
 54172             | Chinßcota
 54174             | Chitagß
 54206             | Convenci¾n
 54001             | C·cuta
 54223             | Cucutilla
 54239             | Durania
 54245             | El Carmen
 54250             | El Tarra
 54261             | El Zulia
 54313             | Gramalote
 54344             | HacarÝ
 54347             | Herrßn
 54385             | La Esperanza
 54398             | La Playa
 54377             | Labateca
 54405             | Los Patios
 54418             | Lourdes
 54480             | Mutiscua
 54498             | Oca±a
 54518             | Pamplona
 54520             | Pamplonita
 54553             | Puerto Santander
 54599             | Ragonvalia
 54660             | Salazar
 54670             | San Calixto
 54673             | San Cayetano
 54680             | Santiago
 54720             | Sardinata
 54743             | Silos
 54800             | Teorama
 54810             | Tib·
 54820             | Toledo
 54871             | Villa Caro
 54874             | Villa Del Rosario
(40 filas)
/*
