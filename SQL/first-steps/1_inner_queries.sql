-- INNER JOIN

SELECT *
FROM "table_1"
INNER JOIN "table_2"

-- Es una forma de combinar todas las filas de
-- la table_1 con otra tabla (table_2).

-- En definitiva, es un producto cartesiano entre
-- amblas tablas en cuestion.

SELECT *
FROM "table_1" T1
INNER JOIN "table_2" T2 ON T2.id = T1.id

-- Para que la consulta sea mas util se
-- utiliza la condicion dada por la keyword ON
-- en el caso anterior estamos enlazando
-- atraves de los ID de ambas tablas. 

-- Otro ejemplo
SELECT id_case, model, material_type
FROM "Case" C
INNER JOIN "Basic_info" BI ON 
	BI.id_watch = C.id_case AND
	C.id_material = 3
INNER JOIN "Material" M on
	M.material_type = "Stainless steel"

--
SELECT model, power_reserve
FROM "Basic_info", "Movement"
INNER JOIN "Case" ON
  "Case".id_case = "Basic_info".id_watch AND
  "Case".id_movement = "Movement".id_movement
WHERE
  "Movement".power_reserve > 40
