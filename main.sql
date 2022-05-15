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
