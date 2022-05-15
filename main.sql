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
