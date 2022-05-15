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

DROP TABLE IF EXISTS `Material`;g
		
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
  `id_indexes` INTEGER NULL DEFAULT NULL,
  `id_material` INTEGER NULL DEFAULT NULL,
  `id_hands` INTEGER NULL DEFAULT NULL,
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
-- Table 'Indexes'
-- 
-- ---

DROP TABLE IF EXISTS `Indexes`;
		
CREATE TABLE `Indexes` (
  `id_indexes` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `indexes_type` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_indexes`)
);

-- ---
-- Table 'Hands'
-- 
-- ---

DROP TABLE IF EXISTS `Hands`;
		
CREATE TABLE `Hands` (
  `id_hands` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `hands_type` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_hands`)
);