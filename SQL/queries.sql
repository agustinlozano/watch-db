-- 1) Listado de marcas que posean relojes con caja de acero 
-- inoxidable, movimientos automáticos y complicación de 
-- ventana de día que tengan su casa central en Suiza.
-- Listado de marcas que posean relojes con caja de acero 
-- inoxidable, movimientos automáticos y complicación de 
-- ventana de día que tengan su casa central en Suiza.

-- 1.1)
SELECT
  id_case AS "Watch ID",
  model AS "Model",
  brand_name AS "Brand",
  material_type AS "Material",
  movement_name AS "Movement",
  country_name AS "Manufactured in",
  complication_name AS "Compication"
FROM
  "Case" C,
  "Basic_info" BI,
  "Brand" B,
  "Material" MT,
  "Movement" M,
  "Movement_type" MT,
  "Manufactured_in" MI,
  "Complication" CMP,
  "may_have_a_complication" MHC
WHERE
  C.id_material = 3 AND
  MT.material_type = "Stainless steel" AND
  C.id_case = BI.id_watch AND
  B.id_brand = BI.id_brand AND
  C.id_movement = M.id_movement AND
  M.id_movement_type = 2 AND
  MT.id_movement_type = M.id_movement_type AND
  BI.id_manufactured_in = 1 AND
  BI.id_manufactured_in = MI.id_country AND
  MHC.id_watch = BI.id_watch AND
  MHC.id_complication = 1 AND
  CMP.id_complication = MHC.id_complication;

-- 1.2)
SELECT
  id_case AS "Watch ID",
  model AS "Model",
  brand_name AS "Brand",
  material_type AS "Material",
  movement_name AS "Movement",
  country_name AS "Manufactured in",
  complication_name AS "Compication"
FROM
  "Case" C,
  "Brand" B,
  "Material" MT,
  "Movement_type" MT,
  "Manufactured_in" MI,
  "Complication" CMP,
  "may_have_a_complication" MHC
INNER JOIN "Basic_info" BI ON
  BI.id_watch = C.id_case AND
  BI.id_brand = B.id_brand AND
  BI.id_watch = MHC.id_watch AND
  BI.id_manufactured_in = MI.id_country AND
  BI.id_manufactured_in = 1
INNER JOIN "Movement" M on
  M.id_movement_type = MT.id_movement_type AND
  M.id_movement = C.id_movement AND
  M.id_movement_type = 2
WHERE
  C.id_material = 3 AND
  MT.material_type = "Stainless steel" AND
  MHC.id_complication = 1 AND
  CMP.id_complication = MHC.id_complication;

-- 2) La cantidad de relojes agrupados por tipo de cristal.

-- 2.1)
SELECT crystal_type as "Glass types", count(*) as "Watches with"
FROM "Case", "Crystal"
WHERE "Case".id_crystal = "Crystal".id_crystal
GROUP by crystal_type;

-- 2.2)
SELECT crystal_type as "Glass types", count(*) as "Watches with"
FROM "Crystal"
INNER JOIN "Case" ON "Case".id_crystal = "Crystal".id_crystal
GROUP by crystal_type;

-- 3) El listado de relojes que tengan más de 40 horas de reserva de carga en sus
-- movimientos automáticos.

-- 3.1)
SELECT model, power_reserve
FROM "Basic_info", "Case", "Movement"
WHERE
	"Basic_info".id_watch = "Case".id_case AND
	"Case".id_movement = "Movement".id_movement AND
	"Movement".power_reserve > 40;

-- 3.2)
SELECT model, power_reserve
FROM "Basic_info", "Movement"
INNER JOIN "Case" ON
  "Case".id_case = "Basic_info".id_watch AND
  "Case".id_movement = "Movement".id_movement
WHERE
  "Movement".power_reserve > 40;

-- 4) Todos los modelos Seiko que tengan una medida lug-to-lug menor a 47mm

-- Esta consulta no trae ninguna tabla o registro porque
-- el unico reloj Seiko en la BD tiene 47.5 de lug_to_lug
SELECT model, lug_to_lug
FROM "Basic_info", "Case"
WHERE
	"Basic_info".id_brand = 6 AND
	"Case".lug_to_lug < 47 AND
	"Case".id_case = "Basic_info".id_watch;

-- 5) a lista de relojes de marca Casio que usan correa de resina ordenados
-- alfabéticamente por marca.
SELECT id_watch, model, band_name
FROM "Basic_info", "Case", "Band", "Band_type"
WHERE
	"Basic_info".id_watch = "Case".id_case AND
	"Basic_info".id_brand = 2 AND
	"Case".id_band = "Band".id_band AND
	"Band".id_band_type = "Band_type".id_band_type AND
	"Band".id_band_type = 15
ORDER BY model ASC;

-- 6) La lista de todos los colores de dial disponibles de los relojes 
-- en la base de datos, sin repetir.
SELECT color_name as "Dial colors", count(*) as "Watches with"
FROM "Case", "Dial", "Color"
WHERE
	"Case".id_dial = "Dial".id_dial
	AND
	"Dial".id_color = "Color".id_color
GROUP by color_name;

-- 7) La lista de relojes que tengan alarmas pero no 
-- tengan caja de acero inoxidable
SELECT
	model,
	complication_name AS "Complication",
	material_type AS "Material"
FROM
	"Basic_info" B,
	"Case" C,
  "may_have_a_complication" R,
	"Complication" C,
	"Material" M
WHERE
	B.id_watch = C.id_case AND
	C.id_complication = R.id_complication AND
	C.id_material = M.id_material AND
	R.id_complication = 6 AND
	C.id_material != 3 AND
	C.id_case = R.id_watch;

-- 8) Los nombres de las marcas que no tengan trabajen con relojes digitales.
-- ESTA QUERY PUEDE NO FUNCIONAR COMO ESPERA: 
--    - Motivo: muestra las marcas que no tengan relojes
--              digitales (en el sistema).
--    - Output: 7 registros de 10.
SELECT
	brand_name AS "Brands"
FROM
	"Basic_info" BI,
	"Case" C,
	"Dial" D,
	"Brand" B,
	"Style" S,
	"Index" I,
	"Dial_type" DT
WHERE
	-- enlazo Basic_info con sus
	-- correspondientes tablas
	BI.id_watch = C.id_case AND
	BI.id_brand = B.id_brand AND
	BI.id_style = S.id_style AND
	-- enlazo Case con su
	-- correspondiente tabla
	C.id_dial = D.id_dial AND
	-- enlazo Dial con sus
	-- correspondientes tablas
	D.id_index = I.id_index AND
	D.id_dial_type = DT.id_dial_type AND
	
	-- condiciones especificas
	S.id_style != 10 AND
	I.id_index != 10 AND
	DT.id_dial_type != 13 AND
	DT.id_dial_type != 15;

-- 9) La lista de las marcas que tengan al menos 2 
-- relojes en el sistema con un diámetro de menos de 39mm.

-- 9.1) Esta consulta no devulve ninguna tabla o registro porque
-- solo Hamimton y Lorus tienen relojes con diametros menores
-- a 39mm, y ambos solo tienen un modelo con esas caracteristicas.
SELECT
	brand_name AS "Brands",
	count(*) as "Watches with a diameter of <= 39mm"
FROM
	"Basic_info" BI,
	"Case" C,
	"Brand" B 
WHERE
	BI.id_watch = C.id_case AND
	BI.id_brand = B.id_brand AND
	C.diameter <= 39
GROUP BY brand_name
HAVING count(*) >= 2;

-- 9.2) Esta consulta devulve devuleve dos filas, una con la marca
-- Hamilton y otra con la marca Lorus.
SELECT
	brand_name AS "Brands",
	count(*) as "Watches with a diameter of <= 39mm"
FROM
	"Basic_info" BI,
	"Case" C,
	"Brand" B 
WHERE
	BI.id_watch = C.id_case AND
	BI.id_brand = B.id_brand AND
	C.diameter <= 39
GROUP BY brand_name
HAVING count(*) >= 1;

-- 10.1) El listado de relojes con más de 100 metros de
-- resistencia al agua.
SELECT
	model AS "Model", 
	brand_name AS "Brand",
	water_resistance AS "Water resistance"
FROM
	"Basic_info" BI,
	"Brand"
WHERE
	BI.water_resistance > 100 AND
	BI.id_brand = Brand.id_brand;
	
-- 10.2) El listado de relojes con al menos 100 metros
-- de resistencia al agua.
SELECT
	model AS "Model", 
	brand_name AS "Brand",
	water_resistance AS "Water resistance"
FROM
	"Basic_info" BI,
	"Brand"
WHERE
	BI.water_resistance >= 100 AND
	BI.id_brand = Brand.id_brand;
