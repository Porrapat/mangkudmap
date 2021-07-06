CREATE DATABASE IF NOT EXISTS mangkudmap;
USE mangkudmap;

DROP TABLE thailand_province;

CREATE TABLE `thailand_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(12,8) NOT NULL,
  `longtitude` decimal(12,8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;