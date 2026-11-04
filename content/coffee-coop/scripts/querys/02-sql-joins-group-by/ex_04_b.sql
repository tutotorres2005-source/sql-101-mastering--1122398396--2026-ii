
-- Exercise 04 -b
-- Attempting NATURAL JOIN between buy.deliveries and farm.farms
-- Note: Demonstrates column name mismatch side effects in NATURAL JOIN

SELECT
    delivery_id,
    farm_name,
    gross_weight_kg
FROM buy.deliveries
NATURAL JOIN farm.farms
WHERE delivery_id LIKE 'DLV-20260930-%'
ORDER BY delivery_id ASC;

/*
 

     delivery_id     |    farm_name     | gross_weight_kg
---------------------+------------------+-----------------
 DLV-20260930-000001 | El Cafetal       |           51.53
 DLV-20260930-000002 | La Selva         |          124.98
 DLV-20260930-000003 | El Cedro         |          112.33
 DLV-20260930-000004 | La Isabela       |          138.29
 DLV-20260930-000005 | Las Brisas       |          256.42
 DLV-20260930-000006 | Santa Clara      |          139.81
 DLV-20260930-000007 | La Argentina     |          404.97
 DLV-20260930-000008 | La Aurora        |          175.92
 DLV-20260930-000009 | Las Delicias     |           56.80
 DLV-20260930-000010 | La Esperanza     |          269.43
 DLV-20260930-000011 | El Tesoro        |          166.55
 DLV-20260930-000012 | El Placer        |           47.86
 DLV-20260930-000013 | El Cedro         |           47.40
 DLV-20260930-000014 | El Mango         |          164.91
 DLV-20260930-000015 | El Retiro        |          136.77
 DLV-20260930-000016 | El Encanto       |          171.44
 DLV-20260930-000017 | La Monta├▒a       |          545.69
 DLV-20260930-000018 | Los Guaduales    |          247.11
 DLV-20260930-000019 | Los Arrayanes    |          106.26
 DLV-20260930-000020 | El Nogal         |          115.75
 DLV-20260930-000021 | El Refugio       |          143.29
 DLV-20260930-000022 | La Florida       |          247.73
 DLV-20260930-000023 | La Primavera     |          221.51
 DLV-20260930-000024 | Santa Clara      |          222.49
 DLV-20260930-000025 | Santa B├írbara    |          176.53
 DLV-20260930-000026 | El Horizonte     |          162.24
 DLV-20260930-000027 | El Guayabo       |          184.59
 DLV-20260930-000028 | El Refugio       |          258.00
 DLV-20260930-000029 | Cafetal Viejo    |          231.40
 DLV-20260930-000030 | El Guamo         |          124.95
 DLV-20260930-000031 | El Danubio       |          107.99
 DLV-20260930-000032 | La Uni├│n         |          213.33
 DLV-20260930-000033 | La Palma         |           49.13
 DLV-20260930-000034 | Tierra Linda     |          174.83
 DLV-20260930-000035 | Bella Vista Alta |          235.65
 DLV-20260930-000036 | Agua Bonita      |          200.54
 DLV-20260930-000037 | La Gaitana       |           64.16
 DLV-20260930-000038 | Bella Vista Alta |          136.73
 DLV-20260930-000039 | Buenavista       |           86.92
 DLV-20260930-000040 | Bella Vista Alta |          321.49
 DLV-20260930-000041 | Santa Clara      |           45.97
 DLV-20260930-000042 | La Ceiba         |          166.41
 DLV-20260930-000043 | El Ed├®n          |          239.46
 DLV-20260930-000044 | El Guamo         |          119.26
 DLV-20260930-000045 | La Floresta      |           60.79
 DLV-20260930-000046 | Las Orqu├¡deas    |          186.73
 DLV-20260930-000047 | Las Mercedes     |           80.07
 DLV-20260930-000048 | El Mes├│n         |          419.65
 DLV-20260930-000049 | La Holanda       |           95.73
 DLV-20260930-000050 | Monte Alto       |          373.90
 DLV-20260930-000051 | El Mirador       |          310.22
 DLV-20260930-000052 | Agua Bonita      |          154.42
 DLV-20260930-000053 | San Jos├®         |           59.86
 DLV-20260930-000054 | El Danubio       |          167.57
 DLV-20260930-000055 | La Monta├▒a       |          124.05
 DLV-20260930-000056 | El Cedro         |           38.62
 DLV-20260930-000057 | La Carolina      |          201.14
 DLV-20260930-000058 | Las Margaritas   |          166.64
 DLV-20260930-000059 | Villa Hermosa    |           60.59
 DLV-20260930-000060 | El Nogal         |          162.92
 DLV-20260930-000061 | El Rosal         |          178.16
 DLV-20260930-000062 | Las Margaritas   |          259.10
 DLV-20260930-000063 | La Florida       |          184.83
 DLV-20260930-000064 | El Danubio       |           50.43
 DLV-20260930-000065 | San Luis         |          278.44
 DLV-20260930-000066 | La Isabela       |          123.97
 DLV-20260930-000067 | La Isabela       |          147.87
 DLV-20260930-000068 | El Oasis         |          113.93
 DLV-20260930-000069 | Las Margaritas   |           45.38
 DLV-20260930-000070 | La Carolina      |          147.13
 DLV-20260930-000071 | La Cumbre        |          123.86
 DLV-20260930-000072 | La Caba├▒a        |          176.20
 DLV-20260930-000073 | Monte Alto       |          228.36
 DLV-20260930-000074 | La Isabela       |          291.69
 DLV-20260930-000075 | La Primavera     |           61.99
 DLV-20260930-000076 | El Encanto       |           59.16
 DLV-20260930-000077 | La Palma         |          114.72
 DLV-20260930-000078 | La Florida       |          311.98
 DLV-20260930-000079 | Las Brisas       |          176.91
 DLV-20260930-000080 | El Array├ín       |          120.11
 DLV-20260930-000081 | La Esperanza     |          475.13
 DLV-20260930-000082 | Las Acacias      |          137.90
 DLV-20260930-000083 | La Floresta      |           89.95
 DLV-20260930-000084 | La Uni├│n         |          131.42
 DLV-20260930-000085 | El Triunfo       |          239.20
 DLV-20260930-000086 | La Caba├▒a        |           84.05
 DLV-20260930-000087 | La Floresta      |          116.95
 DLV-20260930-000088 | Monteverde       |          220.61
 DLV-20260930-000089 | La Selva         |          229.80
 DLV-20260930-000090 | La Uni├│n         |          154.09
 DLV-20260930-000091 | La Estrella      |          139.14
 DLV-20260930-000092 | El Horizonte     |           59.23
 DLV-20260930-000093 | Las Acacias      |           39.42
 DLV-20260930-000094 | El Refugio       |          246.96
 DLV-20260930-000095 | El Refugio       |          116.81
 DLV-20260930-000096 | Las Mercedes     |           53.57
 DLV-20260930-000097 | El Bosque        |          146.99
 DLV-20260930-000098 | La Siberia       |           92.63
 DLV-20260930-000099 | Miraflores       |          103.07
 DLV-20260930-000100 | La Cascada       |          106.62
 DLV-20260930-000101 | Santa Clara      |          198.24
 DLV-20260930-000102 | El Recreo        |           94.30
 DLV-20260930-000103 | La Selva         |          250.86
 DLV-20260930-000104 | La Gaitana       |          246.47
 DLV-20260930-000105 | Villa Rosa       |          277.63
 DLV-20260930-000106 | El Retiro        |          308.32
 DLV-20260930-000107 | La Holanda       |           46.82
 DLV-20260930-000108 | Santa B├írbara    |          298.73
 DLV-20260930-000109 | El Danubio       |          311.88
 DLV-20260930-000110 | La Gloria        |          374.46
 DLV-20260930-000111 | El Caney         |          294.56
 DLV-20260930-000112 | Cafetal Viejo    |           47.40
 DLV-20260930-000113 | Las Mercedes     |          225.97
 DLV-20260930-000114 | La Siberia       |          128.15
 DLV-20260930-000115 | Santa B├írbara    |          230.48
 DLV-20260930-000116 | Los Laureles     |          243.35
 DLV-20260930-000117 | El Porvenir      |          342.43
 DLV-20260930-000118 | El Cafetal       |          111.64
 DLV-20260930-000119 | San Rafael       |           93.84
 DLV-20260930-000120 | El Rosal         |           59.56
 DLV-20260930-000121 | Buenavista       |          171.53
 DLV-20260930-000122 | La Gaitana       |          235.59
 DLV-20260930-000123 | El Caney         |           81.10
 DLV-20260930-000124 | La Gaitana       |          352.50
 DLV-20260930-000125 | El Oasis         |          427.10
 DLV-20260930-000126 | La Fortuna       |          107.79
 DLV-20260930-000127 | Las Palmas       |          122.11
 DLV-20260930-000128 | Bella Vista Alta |           49.28
 DLV-20260930-000129 | Cafetal Viejo    |          206.71
 DLV-20260930-000130 | El Refugio       |          290.55
 DLV-20260930-000131 | Los Arrayanes    |          219.85
 DLV-20260930-000132 | El Manantial     |           49.97
 DLV-20260930-000133 | Las Brisas       |          254.83
 DLV-20260930-000134 | Las Brisas       |          231.81
 DLV-20260930-000135 | Los Arrayanes    |          210.75
 DLV-20260930-000136 | Las Orqu├¡deas    |          122.17
 DLV-20260930-000137 | San Rafael       |          209.02
 DLV-20260930-000138 | La Monta├▒a       |          160.82
 DLV-20260930-000139 | El Bosque        |          294.33
 DLV-20260930-000140 | Santa Clara      |          112.33
 DLV-20260930-000141 | El Guamo         |          179.04
 DLV-20260930-000142 | El Rosal         |          248.91
 DLV-20260930-000143 | El Placer        |          331.30
 DLV-20260930-000144 | El Cafetal       |          242.47
 DLV-20260930-000145 | El Cafetal       |          182.53
 DLV-20260930-000146 | La Estrella      |          290.98
 DLV-20260930-000147 | La Loma          |           66.42
 DLV-20260930-000148 | Tierra Linda     |          121.69
 DLV-20260930-000149 | La Esperanza     |          226.18
 DLV-20260930-000150 | La Soledad       |           51.31
 DLV-20260930-000151 | Los Naranjos     |          181.29
 DLV-20260930-000152 | El Diamante      |          214.44
 DLV-20260930-000153 | Las Delicias     |          123.01
 DLV-20260930-000154 | Los Guaduales    |           53.22
 DLV-20260930-000155 | La Cristalina    |          115.43
 DLV-20260930-000156 | La Isabela       |          155.70
 DLV-20260930-000157 | Las Margaritas   |          169.11
 DLV-20260930-000158 | Los Naranjos     |          177.58
 DLV-20260930-000159 | San Antonio      |          111.28
 DLV-20260930-000160 | Altamira         |          221.38
 DLV-20260930-000161 | El Recuerdo      |          197.04
 DLV-20260930-000162 | San Jos├®         |          178.36
 DLV-20260930-000163 | Las Margaritas   |          200.63
 DLV-20260930-000164 | La Divisa        |           48.18
 DLV-20260930-000165 | La Gaitana       |          348.59
 DLV-20260930-000166 | El Oasis         |          245.94
 DLV-20260930-000167 | El Rosal         |          209.25
 DLV-20260930-000168 | La Loma          |          173.46
 DLV-20260930-000169 | Villa Hermosa    |           49.26
 DLV-20260930-000170 | El Brillante     |          262.86
 DLV-20260930-000171 | El Placer        |          169.97
 DLV-20260930-000172 | El Ed├®n          |          114.47
 DLV-20260930-000173 | Las Mercedes     |          201.74
 DLV-20260930-000174 | La Aurora        |          302.24
 DLV-20260930-000175 | La Floresta      |          109.78
 DLV-20260930-000176 | Altamira         |          162.41
 DLV-20260930-000177 | El Manantial     |          176.78
 DLV-20260930-000178 | La Caba├▒a        |          196.09
 DLV-20260930-000179 | San Jos├®         |          190.22
 DLV-20260930-000180 | El Refugio       |          120.64
 DLV-20260930-000181 | Santa Elena      |          114.63
 DLV-20260930-000182 | El Ed├®n          |           42.15
 DLV-20260930-000183 | El Nogal         |          119.34
 DLV-20260930-000184 | La Holanda       |          109.64
 DLV-20260930-000185 | El Guayabo       |           79.08
 DLV-20260930-000186 | Santa Elena      |          209.37
 DLV-20260930-000187 | La Reserva       |          339.30
 DLV-20260930-000188 | El Placer        |           40.13
 DLV-20260930-000189 | El Placer        |          184.52
 DLV-20260930-000190 | San Luis         |           61.12
 DLV-20260930-000191 | La Carolina      |          155.90
 DLV-20260930-000192 | Bella Vista Alta |          123.73
 DLV-20260930-000193 | El Recuerdo      |          267.39
 DLV-20260930-000194 | Santa B├írbara    |          223.71
 DLV-20260930-000195 | La Siberia       |          118.94
 DLV-20260930-000196 | San Jos├®         |          223.01
 DLV-20260930-000197 | La Gloria        |          137.57
 DLV-20260930-000198 | El Refugio       |          204.01
 DLV-20260930-000199 | El Vergel        |          113.87
 DLV-20260930-000200 | La Esperanza     |          118.17
 DLV-20260930-000201 | San Jos├®         |          245.78
 DLV-20260930-000202 | Los Guaduales    |          246.62
 DLV-20260930-000203 | El Horizonte     |          166.57
 DLV-20260930-000204 | El Guayabo       |          234.22
 DLV-20260930-000205 | La Ceiba         |           40.23
 DLV-20260930-000206 | La Fortuna       |          224.53
 DLV-20260930-000207 | El Recreo        |           79.00
 DLV-20260930-000208 | La Siberia       |          116.97
 DLV-20260930-000209 | Los Laureles     |          120.19
 DLV-20260930-000210 | Bella Vista Alta |           78.07
 DLV-20260930-000211 | La Milagrosa     |           93.48
 DLV-20260930-000212 | La Isabela       |          168.86
 DLV-20260930-000213 | Cafetal Viejo    |          264.45
 DLV-20260930-000214 | La Aurora        |          177.63
 DLV-20260930-000215 | El Encanto       |          210.61
 DLV-20260930-000216 | El Guayabo       |          220.60
 DLV-20260930-000217 | Altamira         |          132.86
 DLV-20260930-000218 | Bella Vista Alta |          164.43
 DLV-20260930-000219 | La Floresta      |          242.20
 DLV-20260930-000220 | La Quebrada      |          120.85
 DLV-20260930-000221 | El Para├¡so       |          322.31
 DLV-20260930-000222 | La Esperanza     |          237.37
 DLV-20260930-000223 | El Bosque        |          338.32
 DLV-20260930-000224 | El Horizonte     |          272.86
 DLV-20260930-000225 | La Esperanza     |           89.49
 DLV-20260930-000226 | La Divisa        |          119.31
 DLV-20260930-000227 | Las Brisas       |          154.74
 DLV-20260930-000228 | Cafetal Viejo    |          127.88
 DLV-20260930-000229 | El Caney         |          296.94
 DLV-20260930-000230 | El Horizonte     |          132.59
 DLV-20260930-000231 | La Palma         |          128.21
 DLV-20260930-000232 | La Siberia       |          135.93
 DLV-20260930-000233 | El Oasis         |          371.40
 DLV-20260930-000234 | El Rosal         |          364.57
 DLV-20260930-000235 | La Estrella      |          317.64
 DLV-20260930-000236 | La Monta├▒a       |          215.39
 DLV-20260930-000237 | La Soledad       |          128.69
 DLV-20260930-000238 | San Rafael       |          296.58
 DLV-20260930-000239 | El Mango         |          141.33
 DLV-20260930-000240 | La Primavera     |          304.69
 DLV-20260930-000241 | La Selva         |          181.74
 DLV-20260930-000242 | La Cristalina    |           98.23
 DLV-20260930-000243 | La Florida       |           82.10
 DLV-20260930-000244 | El Ed├®n          |          164.55
 DLV-20260930-000245 | La Soledad       |           48.86
 DLV-20260930-000246 | Los Alpes        |          247.42
 DLV-20260930-000247 | Las Delicias     |          104.84
 DLV-20260930-000248 | El Ed├®n          |          159.89
 DLV-20260930-000249 | La Monta├▒a       |          244.21
 DLV-20260930-000250 | La Carolina      |          256.26
 DLV-20260930-000251 | Santa B├írbara    |          173.91
 DLV-20260930-000252 | El Recuerdo      |          310.14
 DLV-20260930-000253 | La Argentina     |          253.15
 DLV-20260930-000254 | El Horizonte     |          119.19
 DLV-20260930-000255 | El Higuer├│n      |          120.83
 DLV-20260930-000256 | La Soledad       |          285.51
 DLV-20260930-000257 | La Cristalina    |          144.44
 DLV-20260930-000258 | El Guayabo       |          244.96
 DLV-20260930-000259 | Los Alpes        |          148.90
 DLV-20260930-000260 | San Antonio      |          149.08
 DLV-20260930-000261 | La Cumbre        |           92.89
 DLV-20260930-000262 | La Caba├▒a        |          155.02
 DLV-20260930-000263 | El Vergel        |          125.40
 DLV-20260930-000264 | Buenavista       |           98.85
 DLV-20260930-000265 | La Gloria        |           48.15
 DLV-20260930-000266 | Altamira         |          115.13
 DLV-20260930-000267 | El Tesoro        |           86.13
 DLV-20260930-000268 | El Silencio      |          208.05
 DLV-20260930-000269 | San Rafael       |          132.62
 DLV-20260930-000270 | Santa Clara      |           88.69
 DLV-20260930-000271 | El Danubio       |          273.16
 DLV-20260930-000272 | El Mango         |           59.63
 DLV-20260930-000273 | El Refugio       |          210.28
 DLV-20260930-000274 | Las Mercedes     |          174.06
 DLV-20260930-000275 | La Carolina      |          461.11
 DLV-20260930-000276 | El Diamante      |          173.32
 DLV-20260930-000277 | Mi Ranchito      |          223.11
 DLV-20260930-000278 | El Rosal         |           56.01
 DLV-20260930-000279 | La Milagrosa     |          122.36
 DLV-20260930-000280 | La Isabela       |           99.14
 DLV-20260930-000281 | Cafetal Viejo    |          255.06
 DLV-20260930-000282 | El Para├¡so       |          156.67
 DLV-20260930-000283 | El Recreo        |          113.47
 DLV-20260930-000284 | La Primavera     |          193.97
 DLV-20260930-000285 | La Isabela       |           80.88
 DLV-20260930-000286 | Las Acacias      |          194.68
 DLV-20260930-000287 | El Rosal         |          180.72
 DLV-20260930-000288 | El Array├ín       |          255.07
 DLV-20260930-000289 | El Diamante      |           56.97
 DLV-20260930-000290 | La Ceiba         |          156.21
 DLV-20260930-000291 | El Manantial     |          192.22
 DLV-20260930-000292 | La Florida       |          122.13
 DLV-20260930-000293 | La Primavera     |          312.35
 DLV-20260930-000294 | La Gloria        |           92.61
 DLV-20260930-000295 | El Silencio      |           61.82
 DLV-20260930-000296 | La Loma          |          271.91
 DLV-20260930-000297 | Buenavista       |           98.35
 DLV-20260930-000298 | La Florida       |          124.92
 DLV-20260930-000299 | La Primavera     |           97.03
 DLV-20260930-000300 | La Cristalina    |          130.74
*/