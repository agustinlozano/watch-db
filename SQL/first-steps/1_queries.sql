-- Consulta sobre una sola tabla: "table_name"
SELECT "field_name"
FROM "table_name"
WHERE "field_name" like "reloj%"
ORDER BY "field_name" ASC;

-- Cuando una consulta se complejiza a veces es necesario 
-- involucrar mas de una tabla

-- Modelos con caja de acero inoxidable
SELECT id_case, model, material_type
FROM
  "Case" C,
  "Basic_info" BI,
  "Material" M
WHERE
  C.id_case = BI.id_watch
  AND
  C.id_material = 3
  AND
  M.material_type = "Stainless steel"


-- Marcas y modelos con caja de acero inoxidable
SELECT id_case, model, brand_name, material_type
FROM
  "Case",
  "Basic_info",
  "Brand",
  "Material"
WHERE
  "Case".id_material = 3 AND
  "Material".material_type = "Stainless steel" AND
  "Case".id_case = "Basic_info".id_watch AND
  "Brand".id_brand = "Basic_info".id_brand

-- Marcas y modelos con caja de acero inoxidable
-- y movimientos automaticos
SELECT
  id_case,
  model,
  brand_name,
  material_type,
  movement_name
FROM
  "Case",
  "Basic_info",
  "Brand",
  "Material",
  "Movement",
  "Movement_type"
WHERE
  "Case".id_material = 3 AND
  "Material".material_type = "Stainless steel" AND
  "Case".id_case = "Basic_info".id_watch AND
  "Brand".id_brand = "Basic_info".id_brand AND
  "Case".id_movement = "Movement".id_movement AND
  "Movement".id_movement_type = 2 AND
  "Movement_type".id_movement_type = "Movement".id_movement_type

-- Marcas y modelos con caja de acero inoxidable
-- y movimientos automaticos con casa central en Suiza
SELECT
  id_case, 
  model, 
  brand_name, 
  material_type, 
  movement_name, 
  country_name
FROM
  "Case",
  "Basic_info",
  "Brand",
  "Material",
  "Movement",
  "Movement_type",
  "Manufactured_in"
WHERE
  "Case".id_material = 3 AND
  "Material".material_type = "Stainless steel" AND
  "Case".id_case = "Basic_info".id_watch AND
  "Brand".id_brand = "Basic_info".id_brand AND
  "Case".id_movement = "Movement".id_movement AND
  "Movement".id_movement_type = 2 AND
  "Movement_type".id_movement_type = "Movement".id_movement_type AND
  "Basic_info".id_manufactured_in = 1 AND
  "Basic_info".id_manufactured_in = "Manufactured_in".id_country