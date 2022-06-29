BEGIN TRANSACTION;

-- ---
-- Secondary tables
-- 
-- ---
CREATE TABLE IF NOT EXISTS "Pusher" (
	"id_pusher"	INTEGER NOT NULL,
	"pusher_type"	TEXT NOT NULL,
	PRIMARY KEY("id_pusher")
);

CREATE TABLE IF NOT EXISTS "Crystal" (
	"id_crystal"	INTEGER NOT NULL,
	"crystal_type"	TEXT NOT NULL,
	PRIMARY KEY("id_crystal")
);

CREATE TABLE IF NOT EXISTS "Shape" (
	"id_shape"	INTEGER NOT NULL,
	"shape_type"	TEXT NOT NULL,
	PRIMARY KEY("id_shape")
);

CREATE TABLE IF NOT EXISTS "Material" (
	"id_material"	INTEGER NOT NULL,
	"material_type"	TEXT NOT NULL,
	PRIMARY KEY("id_material")
);

CREATE TABLE IF NOT EXISTS "Color" (
	"id_color"	INTEGER NOT NULL,
	"color_name"	TEXT NOT NULL,
	PRIMARY KEY("id_color")
);

CREATE TABLE IF NOT EXISTS "Band_type" (
	"id_band_type"	INTEGER NOT NULL,
	"band_name"	TEXT NOT NULL,
	PRIMARY KEY("id_band_type")
);

CREATE TABLE IF NOT EXISTS "Clasp" (
	"id_clasp"	INTEGER NOT NULL,
	"clasp_type"	TEXT NOT NULL,
	PRIMARY KEY("id_clasp")
);

CREATE TABLE IF NOT EXISTS "Dial_type" (
	"id_dial_type"	INTEGER NOT NULL,
	"dial_name"	TEXT NOT NULL,
	PRIMARY KEY("id_dial_type")
);

CREATE TABLE IF NOT EXISTS "Index" (
	"id_index"	INTEGER NOT NULL,
	"index_type"	TEXT NOT NULL,
	PRIMARY KEY("id_index")
);

CREATE TABLE IF NOT EXISTS "Hand" (
	"id_hand"	INTEGER NOT NULL,
	"hand_type"	TEXT NOT NULL,
	PRIMARY KEY("id_hand")
);

CREATE TABLE IF NOT EXISTS "Owner" (
	"id_owner"	INTEGER NOT NULL,
	"owner_name"	TEXT NOT NULL,
	PRIMARY KEY("id_owner" AUTOINCREMENT)
);

CREATE TABLE IF NOT EXISTS "Movement_type" (
	"id_movement_type"	INTEGER NOT NULL,
	"movement_name"	TEXT NOT NULL,
	PRIMARY KEY("id_movement_type" AUTOINCREMENT)
);

CREATE TABLE IF NOT EXISTS "Battery" (
	"id_battery"	INTEGER NOT NULL,
	"battery_type"	TEXT NOT NULL,
	PRIMARY KEY("id_battery" AUTOINCREMENT)
);

CREATE TABLE IF NOT EXISTS "Manufactured_in" (
	"id_country"	INTEGER NOT NULL,
	"country_name"	TEXT NOT NULL,
	PRIMARY KEY("id_country" AUTOINCREMENT)
);

CREATE TABLE IF NOT EXISTS "Style" (
	"id_style"	INTEGER NOT NULL,
	"style_name"	TEXT NOT NULL,
	PRIMARY KEY("id_style" AUTOINCREMENT)
);

CREATE TABLE IF NOT EXISTS "Gender" (
	"id_gender"	INTEGER NOT NULL,
	"gender_type"	TEXT NOT NULL,
	PRIMARY KEY("id_gender" AUTOINCREMENT)
);

CREATE TABLE IF NOT EXISTS "Backcase_design" (
	"id_backcase_design"	INTEGER NOT NULL,
	"backcase_design_type"	TEXT NOT NULL,
	PRIMARY KEY("id_backcase_design" AUTOINCREMENT)
);

CREATE TABLE IF NOT EXISTS "Brand" (
	"id_brand"	INTEGER NOT NULL,
	"brand_name"	TEXT NOT NULL,
	PRIMARY KEY("id_brand" AUTOINCREMENT)
);

CREATE TABLE IF NOT EXISTS "Complication" (
	"id_complication"	INTEGER NOT NULL,
	"id_complication_name"	TEXT NOT NULL,
	PRIMARY KEY("id_complication" AUTOINCREMENT)
);

CREATE TABLE IF NOT EXISTS "Crown_type" (
	"id_crown_type"	INTEGER NOT NULL,
	"crown_name"	TEXT NOT NULL,
	PRIMARY KEY("id_crown_type" AUTOINCREMENT)
);

CREATE TABLE IF NOT EXISTS "Crown_function" (
	"id_crown_function"	INTEGER NOT NULL,
	"function_name"	TEXT NOT NULL,
	PRIMARY KEY("id_crown_function" AUTOINCREMENT)
);

CREATE TABLE IF NOT EXISTS "Crown" (
	"id_crown"	INTEGER NOT NULL,
	"id_crown_type"	INTEGER NOT NULL,
	PRIMARY KEY("id_crown" AUTOINCREMENT),
	FOREIGN KEY("id_crown_type") REFERENCES "Crown_type"("id_crown_type")
);

-- ---
-- Relation tables
-- 
-- ---
CREATE TABLE IF NOT EXISTS "may_have_a_complication" (
	"id_watch"	INTEGER NOT NULL,
	"id_complication"	INTEGER NOT NULL,
	PRIMARY KEY("id_watch","id_complication"),
	FOREIGN KEY("id_watch") REFERENCES "Basic_info"("id_watch"),
	FOREIGN KEY("id_complication") REFERENCES "Complication"("id_complication")
);

CREATE TABLE IF NOT EXISTS "may_have_a_crown" (
	"id_watch"	INTEGER NOT NULL,
	"id_crown"	INTEGER NOT NULL,
	PRIMARY KEY("id_watch","id_crown"),
	FOREIGN KEY("id_watch") REFERENCES "Case"("id_case"),
	FOREIGN KEY("id_crown") REFERENCES "Crown"("id_crown")
);

CREATE TABLE IF NOT EXISTS "has_a_crown_func" (
	"id_crown"	INTEGER NOT NULL,
	"id_function"	INTEGER NOT NULL,
	PRIMARY KEY("id_function","id_crown"),
	FOREIGN KEY("id_function") REFERENCES "Crown_function"("id_crown_function"),
	FOREIGN KEY("id_crown") REFERENCES "Crown"("id_crown")
);

-- ---
-- Main tables
-- 
-- ---
CREATE TABLE IF NOT EXISTS "Case" (
	"id_case"	INTEGER NOT NULL,
	"id_crystal"	INTEGER NOT NULL,
	"id_material"	INTEGER NOT NULL,
	"id_color"	INTEGER NOT NULL,
	"id_pusher"	INTEGER NOT NULL,
	"id_shape"	INTEGER NOT NULL,
	"thickness"	REAL,
	"lug_width"	REAL,
	"lug_to_lug"	REAL,
	"diameter"	REAL,
	"id_movement"	INTEGER NOT NULL,
	"id_caseback"	INTEGER NOT NULL,
	"id_dial"	INTEGER NOT NULL,
	"id_band"	INTEGER NOT NULL,
	PRIMARY KEY("id_case" AUTOINCREMENT),
	FOREIGN KEY("id_color") REFERENCES "Color"("id_color"),
	FOREIGN KEY("id_shape") REFERENCES "Shape"("id_shape"),
	FOREIGN KEY("id_crystal") REFERENCES "Crystal"("id_crystal"),
	FOREIGN KEY("id_pusher") REFERENCES "Pusher"("id_pusher"),
	FOREIGN KEY("id_material") REFERENCES "Material"("id_material"),
	FOREIGN KEY("id_caseback") REFERENCES "Caseback"("id_caseback"),
	FOREIGN KEY("id_band") REFERENCES "Band"("id_band"),
	FOREIGN KEY("id_case") REFERENCES "Basic_info"("id_watch"),
	FOREIGN KEY("id_movement") REFERENCES "Movement"("id_movement"),
	FOREIGN KEY("id_dial") REFERENCES "Dial"("id_dial")
);

CREATE TABLE IF NOT EXISTS "Basic_info" (
	"id_watch"	INTEGER NOT NULL,
	"model"	TEXT,
	"id_manufactured_in"	INTEGER NOT NULL,
	"id_brand"	INTEGER NOT NULL,
	"id_style"	INTEGER NOT NULL,
	"id_gender"	INTEGER NOT NULL,
	"water_resistance"	INTEGER NOT NULL,
	"weight"	REAL,
	PRIMARY KEY("id_watch" AUTOINCREMENT),
	FOREIGN KEY("id_gender") REFERENCES "Gender"("id_gender"),
	FOREIGN KEY("id_brand") REFERENCES "Brand"("id_brand"),
	FOREIGN KEY("id_manufactured_in") REFERENCES "Manufactured_in"("id_country"),
	FOREIGN KEY("id_style") REFERENCES "Style"("id_style")
);

CREATE TABLE IF NOT EXISTS "Movement" (
	"id_movement"	INTEGER NOT NULL,
	"id_movement_type"	INTEGER NOT NULL,
	"id_battery"	INTEGER NOT NULL,
	"battery_life"	INTEGER,
	"power_reserve"	INTEGER,
	PRIMARY KEY("id_movement" AUTOINCREMENT),
	FOREIGN KEY("id_movement_type") REFERENCES "Movement_type"("id_movement_type"),
	FOREIGN KEY("id_battery") REFERENCES "Battery"("id_battery")
);

CREATE TABLE IF NOT EXISTS "Dial" (
	"id_dial"	INTEGER NOT NULL,
	"id_dial_type"	INTEGER NOT NULL,
	"id_index"	INTEGER NOT NULL,
	"id_hand"	INTEGER NOT NULL,
	"id_color"	INTEGER NOT NULL,
	"luminance"	INTEGER NOT NULL,
	PRIMARY KEY("id_dial" AUTOINCREMENT),
	FOREIGN KEY("id_index") REFERENCES "Index"("id_index"),
	FOREIGN KEY("id_dial_type") REFERENCES "Dial_type"("id_dial_type"),
	FOREIGN KEY("id_hand") REFERENCES "Hand"("id_hand"),
	FOREIGN KEY("id_color") REFERENCES "Color"("id_color")
);

CREATE TABLE IF NOT EXISTS "Caseback" (
	"id_caseback"	INTEGER NOT NULL,
	"id_shape"	INTEGER NOT NULL,
	"id_caseback_design"	INTEGER NOT NULL,
	"id_material"	INTEGER NOT NULL,
	PRIMARY KEY("id_caseback" AUTOINCREMENT),
	FOREIGN KEY("id_material") REFERENCES "Material"("id_material"),
	FOREIGN KEY("id_shape") REFERENCES "Shape"("id_shape"),
	FOREIGN KEY("id_caseback_design") REFERENCES "Backcase_design"("id_backcase_design")
);

CREATE TABLE IF NOT EXISTS "Band" (
	"id_band"	INTEGER NOT NULL,
	"id_band_type"	INTEGER NOT NULL,
	"id_clasp"	INTEGER NOT NULL,
	"id_material"	INTEGER NOT NULL,
	"id_color"	INTEGER NOT NULL,
	PRIMARY KEY("id_band" AUTOINCREMENT),
	FOREIGN KEY("id_clasp") REFERENCES "Clasp"("id_clasp"),
	FOREIGN KEY("id_band_type") REFERENCES "Band_type"("id_band_type"),
	FOREIGN KEY("id_material") REFERENCES "Material"("id_material"),
	FOREIGN KEY("id_color") REFERENCES "Color"("id_color")
);

-- ---
-- Data inserted into the DB
-- 
-- ---

COMMIT;
