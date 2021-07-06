USE mangkudmap;
SET NAMES utf8;

CREATE TABLE `plant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plant_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `plant` VALUES(NULL, 'มังคุด');
INSERT INTO `plant` VALUES(NULL, 'ทุเรียน');
INSERT INTO `plant` VALUES(NULL, 'ข้าวโพดเลี้ยงสัตว์');
INSERT INTO `plant` VALUES(NULL, 'กระเทียม');
INSERT INTO `plant` VALUES(NULL, 'หัวหอมใหญ่');