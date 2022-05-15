-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Case'
-- 
-- ---

DROP TABLE IF EXISTS `Case`;
		
CREATE TABLE `Case` (
  `id_case` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_crystal` INTEGER NULL DEFAULT NULL,
  `id_material` INTEGER NULL DEFAULT NULL,
  `id_color` INTEGER NULL DEFAULT NULL,
  `id_pushers` INTEGER NULL DEFAULT NULL,
  `id_shape` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id_case`)
);

-- ---
-- Table 'Crystal'
-- 
-- ---

DROP TABLE IF EXISTS `Crystal`;
		
CREATE TABLE `Crystal` (
  `id_crystal` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `crystal_type` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_crystal`)
);

-- ---
-- Table 'Material'
-- 
-- ---

DROP TABLE IF EXISTS `Material`;
		
CREATE TABLE `Material` (
  `id_material` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `material_type` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_material`)
);

-- ---
-- Table 'Color'
-- 
-- ---

DROP TABLE IF EXISTS `Color`;
		
CREATE TABLE `Color` (
  `id_color` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `color_type` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_color`)
);

-- ---
-- Table 'Pusher'
-- 
-- ---

DROP TABLE IF EXISTS `Pusher`;
		
CREATE TABLE `Pusher` (
  `id_pusher` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `pusher_type` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_pusher`)
);

-- ---
-- Table 'Shape'
-- 
-- ---

DROP TABLE IF EXISTS `Shape`;
		
CREATE TABLE `Shape` (
  `id_shape` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `shape_type` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_shape`)
);

-- ---
-- Table 'Dial'
-- 
-- ---

DROP TABLE IF EXISTS `Dial`;
		
CREATE TABLE `Dial` (
  `id_dial` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_dial_type` INTEGER NULL DEFAULT NULL,
  `id_index` INTEGER NULL DEFAULT NULL,
  `id_material` INTEGER NULL DEFAULT NULL,
  `id_hand` INTEGER NULL DEFAULT NULL,
  `id_color` INTEGER NULL DEFAULT NULL,
  `luminance` BINARY NULL DEFAULT NULL,
  PRIMARY KEY (`id_dial`)
);

-- ---
-- Table 'Dial_type'
-- 
-- ---

DROP TABLE IF EXISTS `Dial_type`;
		
CREATE TABLE `Dial_type` (
  `id_dial_type` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dial_name` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_dial_type`)
);

-- ---
-- Table 'Index'
-- 
-- ---

DROP TABLE IF EXISTS `Index`;
		
CREATE TABLE `Index` (
  `id_index` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `index_type` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_index`)
);

-- ---
-- Table 'Hand'
-- 
-- ---

DROP TABLE IF EXISTS `Hand`;
		
CREATE TABLE `Hand` (
  `id_hand` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `hand_type` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_hand`)
);

-- ---
-- Table 'Band'
-- 
-- ---

DROP TABLE IF EXISTS `Band`;
		
CREATE TABLE `Band` (
  `id_band` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_band_type` INTEGER NULL DEFAULT NULL,
  `id_clasp` INTEGER NULL DEFAULT NULL,
  `id_material` INTEGER NULL DEFAULT NULL,
  `id_color` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id_band`)
);

-- ---
-- Table 'Clasp'
-- 
-- ---

DROP TABLE IF EXISTS `Clasp`;
		
CREATE TABLE `Clasp` (
  `id_clasp` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `clasp_type` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_clasp`)
);

-- ---
-- Table 'Band_type'
-- 
-- ---

DROP TABLE IF EXISTS `Band_type`;
		
CREATE TABLE `Band_type` (
  `id_band_type` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `band_name` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_band_type`)
);

-- ---
-- Table 'Movement'
-- 
-- ---

DROP TABLE IF EXISTS `Movement`;
		
CREATE TABLE `Movement` (
  `id_movement` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_owner` INTEGER NULL DEFAULT NULL,
  `id_movement_type` INTEGER NULL DEFAULT NULL,
  `id_battery` INTEGER NULL DEFAULT NULL,
  `bettery_life` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id_movement`)
);

-- ---
-- Table 'Battery'
-- 
-- ---

DROP TABLE IF EXISTS `Battery`;
		
CREATE TABLE `Battery` (
  `id_battery` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `battery_type` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_battery`)
);

-- ---
-- Table 'Owner'
-- 
-- ---

DROP TABLE IF EXISTS `Owner`;
		
CREATE TABLE `Owner` (
  `id_owner` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `owner_name` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_owner`)
);

-- ---
-- Table 'Movement_type'
-- 
-- ---

DROP TABLE IF EXISTS `Movement_type`;
		
CREATE TABLE `Movement_type` (
  `id_movement_type` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `movement_name` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_movement_type`)
);

-- ---
-- Table 'Caseback'
-- 
-- ---

DROP TABLE IF EXISTS `Caseback`;
		
CREATE TABLE `Caseback` (
  `id_caseback` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_shape` INTEGER NULL DEFAULT NULL,
  `id_backcase_design` INTEGER NULL DEFAULT NULL,
  `id_opening_system` INTEGER NULL DEFAULT NULL,
  `id_material` INTEGER NULL DEFAULT NULL,
  `id_color` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id_caseback`)
);

-- ---
-- Table 'Backcase_design'
-- 
-- ---

DROP TABLE IF EXISTS `Backcase_design`;
		
CREATE TABLE `Backcase_design` (
  `id_backcase_design` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `backcase_design_type` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_backcase_design`)
);

-- ---
-- Table 'Opening_system'
-- 
-- ---

DROP TABLE IF EXISTS `Opening_system`;
		
CREATE TABLE `Opening_system` (
  `id_opening_system` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `opening_system_type` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_opening_system`)
);

-- ---
-- Table 'Dimension'
-- 
-- ---

DROP TABLE IF EXISTS `Dimension`;
		
CREATE TABLE `Dimension` (
  `id_dimension` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_dimension_type` INTEGER NULL DEFAULT NULL,
  `id_length_unit` INTEGER NULL DEFAULT NULL,
  `value` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id_dimension`)
);

-- ---
-- Table 'Dimension_type'
-- 
-- ---

DROP TABLE IF EXISTS `Dimension_type`;
		
CREATE TABLE `Dimension_type` (
  `id_dimension_type` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dimension_name` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_dimension_type`)
);

-- ---
-- Table 'Length_unit'
-- 
-- ---

DROP TABLE IF EXISTS `Length_unit`;
		
CREATE TABLE `Length_unit` (
  `id_length_unit` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `length_unit` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id_length_unit`)
);

-- ---
-- Table 'Basic_info'
-- 
-- ---

DROP TABLE IF EXISTS `Basic_info`;
		
CREATE TABLE `Basic_info` (
  `id_info` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_manufacturer_county` INTEGER NULL DEFAULT NULL,
  `id_brand` INTEGER NULL DEFAULT NULL,
  `id_style` INTEGER NULL DEFAULT NULL,
  `id_gender` INTEGER NULL DEFAULT NULL,
  `water_resistance` BINARY NULL DEFAULT NULL,
  PRIMARY KEY (`id_info`)
);

-- ---
-- Table 'Manufacturer_country'
-- 
-- ---

DROP TABLE IF EXISTS `Manufacturer_country`;
		
CREATE TABLE `Manufacturer_country` (
  `id_manufacturer_country` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `country_name` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_manufacturer_country`)
);

-- ---
-- Table 'Style'
-- 
-- ---

DROP TABLE IF EXISTS `Style`;
		
CREATE TABLE `Style` (
  `id_style` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `style_type` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_style`)
);

-- ---
-- Table 'Brand'
-- 
-- ---

DROP TABLE IF EXISTS `Brand`;
		
CREATE TABLE `Brand` (
  `id_brand` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `brand_name` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_brand`)
);

-- ---
-- Table 'Gender'
-- 
-- ---

DROP TABLE IF EXISTS `Gender`;
		
CREATE TABLE `Gender` (
  `id_gender` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `gender_type` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_gender`)
);

-- ---
-- Table 'Complication'
-- 
-- ---

DROP TABLE IF EXISTS `Complication`;
		
CREATE TABLE `Complication` (
  `id_complication` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_complication_type` INTEGER NULL DEFAULT NULL,
  `complication_name` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_complication`)
);

-- ---
-- Table 'Complication_type'
-- 
-- ---

DROP TABLE IF EXISTS `Complication_type`;
		
CREATE TABLE `Complication_type` (
  `id_complication_type` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `complication_name` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_complication_type`)
);

-- ---
-- Table 'Crown'
-- 
-- ---

DROP TABLE IF EXISTS `Crown`;
		
CREATE TABLE `Crown` (
  `id_crown` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_crown_type` INTEGER NULL DEFAULT NULL,
  `id_crown_function` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id_crown`)
);

-- ---
-- Table 'Crown_type'
-- 
-- ---

DROP TABLE IF EXISTS `Crown_type`;
		
CREATE TABLE `Crown_type` (
  `id_crown_type` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `crown_name` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_crown_type`)
);

-- ---
-- Table 'Crown_function'
-- 
-- ---

DROP TABLE IF EXISTS `Crown_function`;
		
CREATE TABLE `Crown_function` (
  `id_crown_function` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `function_name` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_crown_function`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Case` ADD FOREIGN KEY (id_crystal) REFERENCES `Crystal` (`id_crystal`);
ALTER TABLE `Case` ADD FOREIGN KEY (id_material) REFERENCES `Material` (`id_material`);
ALTER TABLE `Case` ADD FOREIGN KEY (id_color) REFERENCES `Color` (`id_color`);
ALTER TABLE `Case` ADD FOREIGN KEY (id_pushers) REFERENCES `Pusher` (`id_pusher`);
ALTER TABLE `Case` ADD FOREIGN KEY (id_shape) REFERENCES `Shape` (`id_shape`);
ALTER TABLE `Dial` ADD FOREIGN KEY (id_dial_type) REFERENCES `Dial_type` (`id_dial_type`);
ALTER TABLE `Dial` ADD FOREIGN KEY (id_index) REFERENCES `Index` (`id_index`);
ALTER TABLE `Dial` ADD FOREIGN KEY (id_material) REFERENCES `Material` (`id_material`);
ALTER TABLE `Dial` ADD FOREIGN KEY (id_hand) REFERENCES `Hand` (`id_hand`);
ALTER TABLE `Dial` ADD FOREIGN KEY (id_color) REFERENCES `Color` (`id_color`);
ALTER TABLE `Band` ADD FOREIGN KEY (id_band_type) REFERENCES `Band_type` (`id_band_type`);
ALTER TABLE `Band` ADD FOREIGN KEY (id_clasp) REFERENCES `Clasp` (`id_clasp`);
ALTER TABLE `Band` ADD FOREIGN KEY (id_material) REFERENCES `Material` (`id_material`);
ALTER TABLE `Band` ADD FOREIGN KEY (id_color) REFERENCES `Color` (`id_color`);
ALTER TABLE `Movement` ADD FOREIGN KEY (id_owner) REFERENCES `Owner` (`id_owner`);
ALTER TABLE `Movement` ADD FOREIGN KEY (id_movement_type) REFERENCES `Movement_type` (`id_movement_type`);
ALTER TABLE `Movement` ADD FOREIGN KEY (id_battery) REFERENCES `Battery` (`id_battery`);
ALTER TABLE `Caseback` ADD FOREIGN KEY (id_shape) REFERENCES `Shape` (`id_shape`);
ALTER TABLE `Caseback` ADD FOREIGN KEY (id_backcase_design) REFERENCES `Backcase_design` (`id_backcase_design`);
ALTER TABLE `Caseback` ADD FOREIGN KEY (id_opening_system) REFERENCES `Opening_system` (`id_opening_system`);
ALTER TABLE `Caseback` ADD FOREIGN KEY (id_material) REFERENCES `Material` (`id_material`);
ALTER TABLE `Caseback` ADD FOREIGN KEY (id_color) REFERENCES `Color` (`id_color`);
ALTER TABLE `Dimension` ADD FOREIGN KEY (id_dimension_type) REFERENCES `Dimension_type` (`id_dimension_type`);
ALTER TABLE `Dimension` ADD FOREIGN KEY (id_length_unit) REFERENCES `Length_unit` (`id_length_unit`);
ALTER TABLE `Basic_info` ADD FOREIGN KEY (id_manufacturer_county) REFERENCES `Manufacturer_country` (`id_manufacturer_country`);
ALTER TABLE `Basic_info` ADD FOREIGN KEY (id_brand) REFERENCES `Brand` (`id_brand`);
ALTER TABLE `Basic_info` ADD FOREIGN KEY (id_style) REFERENCES `Style` (`id_style`);
ALTER TABLE `Basic_info` ADD FOREIGN KEY (id_gender) REFERENCES `Gender` (`id_gender`);
ALTER TABLE `Complication` ADD FOREIGN KEY (id_complication_type) REFERENCES `Complication_type` (`id_complication_type`);
ALTER TABLE `Crown` ADD FOREIGN KEY (id_crown_type) REFERENCES `Crown_type` (`id_crown_type`);
ALTER TABLE `Crown` ADD FOREIGN KEY (id_crown_function) REFERENCES `Crown_function` (`id_crown_function`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Case` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Crystal` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Material` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Color` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Pusher` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Shape` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Dial` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Dial_type` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Index` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Hand` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Band` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Clasp` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Band_type` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Movement` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Battery` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Owner` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Movement_type` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Caseback` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Backcase_design` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Opening_system` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Dimension` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Dimension_type` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Length_unit` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Basic_info` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Manufacturer_country` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Style` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Brand` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Gender` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Complication` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Complication_type` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Crown` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Crown_type` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Crown_function` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Case` (`id_case`,`id_crystal`,`id_material`,`id_color`,`id_pushers`,`id_shape`) VALUES
-- ('','','','','','');
-- INSERT INTO `Crystal` (`id_crystal`,`crystal_type`) VALUES
-- ('','');
-- INSERT INTO `Material` (`id_material`,`material_type`) VALUES
-- ('','');
-- INSERT INTO `Color` (`id_color`,`color_type`) VALUES
-- ('','');
-- INSERT INTO `Pusher` (`id_pusher`,`pusher_type`) VALUES
-- ('','');
-- INSERT INTO `Shape` (`id_shape`,`shape_type`) VALUES
-- ('','');
-- INSERT INTO `Dial` (`id_dial`,`id_dial_type`,`id_index`,`id_material`,`id_hand`,`id_color`,`luminance`) VALUES
-- ('','','','','','','');
-- INSERT INTO `Dial_type` (`id_dial_type`,`dial_name`) VALUES
-- ('','');
-- INSERT INTO `Index` (`id_index`,`index_type`) VALUES
-- ('','');
-- INSERT INTO `Hand` (`id_hand`,`hand_type`) VALUES
-- ('','');
-- INSERT INTO `Band` (`id_band`,`id_band_type`,`id_clasp`,`id_material`,`id_color`) VALUES
-- ('','','','','');
-- INSERT INTO `Clasp` (`id_clasp`,`clasp_type`) VALUES
-- ('','');
-- INSERT INTO `Band_type` (`id_band_type`,`band_name`) VALUES
-- ('','');
-- INSERT INTO `Movement` (`id_movement`,`id_owner`,`id_movement_type`,`id_battery`,`bettery_life`) VALUES
-- ('','','','','');
-- INSERT INTO `Battery` (`id_battery`,`battery_type`) VALUES
-- ('','');
-- INSERT INTO `Owner` (`id_owner`,`owner_name`) VALUES
-- ('','');
-- INSERT INTO `Movement_type` (`id_movement_type`,`movement_name`) VALUES
-- ('','');
-- INSERT INTO `Caseback` (`id_caseback`,`id_shape`,`id_backcase_design`,`id_opening_system`,`id_material`,`id_color`) VALUES
-- ('','','','','','');
-- INSERT INTO `Backcase_design` (`id_backcase_design`,`backcase_design_type`) VALUES
-- ('','');
-- INSERT INTO `Opening_system` (`id_opening_system`,`opening_system_type`) VALUES
-- ('','');
-- INSERT INTO `Dimension` (`id_dimension`,`id_dimension_type`,`id_length_unit`,`value`) VALUES
-- ('','','','');
-- INSERT INTO `Dimension_type` (`id_dimension_type`,`dimension_name`) VALUES
-- ('','');
-- INSERT INTO `Length_unit` (`id_length_unit`,`length_unit`) VALUES
-- ('','');
-- INSERT INTO `Basic_info` (`id_info`,`id_manufacturer_county`,`id_brand`,`id_style`,`id_gender`,`water_resistance`) VALUES
-- ('','','','','','');
-- INSERT INTO `Manufacturer_country` (`id_manufacturer_country`,`country_name`) VALUES
-- ('','');
-- INSERT INTO `Style` (`id_style`,`style_type`) VALUES
-- ('','');
-- INSERT INTO `Brand` (`id_brand`,`brand_name`) VALUES
-- ('','');
-- INSERT INTO `Gender` (`id_gender`,`gender_type`) VALUES
-- ('','');
-- INSERT INTO `Complication` (`id_complication`,`id_complication_type`,`complication_name`) VALUES
-- ('','','');
-- INSERT INTO `Complication_type` (`id_complication_type`,`complication_name`) VALUES
-- ('','');
-- INSERT INTO `Crown` (`id_crown`,`id_crown_type`,`id_crown_function`) VALUES
-- ('','','');
-- INSERT INTO `Crown_type` (`id_crown_type`,`crown_name`) VALUES
-- ('','');
-- INSERT INTO `Crown_function` (`id_crown_function`,`function_name`) VALUES
-- ('','');