USE mangkudmap;
SET NAMES utf8;

CREATE TABLE `plant_production` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plant_id` int(11) NOT NULL ,
  `province_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `production_ton` int(11) NOT NULL,
  `ratio` decimal(16,2) NOT NULL,
  `land_rai` int(11) NOT NULL,
  `production_per_land_kg` decimal(16,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;