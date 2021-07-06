/*
Navicat MySQL Data Transfer

Source Server         : 00_Localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : mangkudmap

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-06-27 00:05:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `plant`
-- ----------------------------
DROP TABLE IF EXISTS `plant`;
CREATE TABLE `plant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plant_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of plant
-- ----------------------------
INSERT INTO `plant` VALUES ('1', 'มังคุด');
INSERT INTO `plant` VALUES ('2', 'ทุเรียน');
INSERT INTO `plant` VALUES ('3', 'ข้าวโพดเลี้ยงสัตว์');
INSERT INTO `plant` VALUES ('4', 'กระเทียม');
INSERT INTO `plant` VALUES ('5', 'หัวหอมใหญ่');

-- ----------------------------
-- Table structure for `plant_production`
-- ----------------------------
DROP TABLE IF EXISTS `plant_production`;
CREATE TABLE `plant_production` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plant_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `production_ton` int(11) NOT NULL,
  `ratio` decimal(16,2) NOT NULL,
  `land_rai` int(11) NOT NULL,
  `production_per_land_kg` decimal(16,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `plant_id` (`plant_id`),
  KEY `province_id` (`province_id`),
  CONSTRAINT `plant_production_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `plant_production_ibfk_2` FOREIGN KEY (`province_id`) REFERENCES `thailand_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of plant_production
-- ----------------------------
INSERT INTO `plant_production` VALUES ('1', '1', '13', '2562', '125834', '0.37', '130133', '966.96');
INSERT INTO `plant_production` VALUES ('2', '1', '63', '2562', '55584', '0.16', '90528', '614.00');
INSERT INTO `plant_production` VALUES ('3', '1', '69', '2562', '46669', '0.14', '50182', '929.99');
INSERT INTO `plant_production` VALUES ('4', '1', '14', '2562', '34627', '0.10', '37233', '930.01');
INSERT INTO `plant_production` VALUES ('5', '1', '12', '2562', '19149', '0.06', '27594', '693.96');
INSERT INTO `plant_production` VALUES ('6', '1', '76', '2562', '11287', '0.03', '19836', '569.02');
INSERT INTO `plant_production` VALUES ('7', '1', '68', '2562', '9605', '0.03', '13920', '690.01');
INSERT INTO `plant_production` VALUES ('8', '1', '67', '2562', '8673', '0.03', '12698', '683.02');
INSERT INTO `plant_production` VALUES ('9', '1', '65', '2562', '7845', '0.02', '12915', '607.43');
INSERT INTO `plant_production` VALUES ('10', '1', '73', '2562', '6429', '0.02', '11299', '568.99');
INSERT INTO `plant_production` VALUES ('11', '1', '75', '2562', '3848', '0.01', '6933', '555.03');
INSERT INTO `plant_production` VALUES ('12', '1', '70', '2562', '2520', '0.01', '4052', '621.92');
INSERT INTO `plant_production` VALUES ('13', '1', '72', '2562', '1536', '0.00', '3227', '475.98');
INSERT INTO `plant_production` VALUES ('14', '1', '74', '2562', '1191', '0.00', '2295', '518.95');
INSERT INTO `plant_production` VALUES ('15', '1', '71', '2562', '928', '0.00', '1594', '582.18');
INSERT INTO `plant_production` VALUES ('16', '1', '16', '2562', '677', '0.00', '1367', '495.25');
INSERT INTO `plant_production` VALUES ('17', '1', '64', '2562', '394', '0.00', '971', '405.77');
INSERT INTO `plant_production` VALUES ('18', '1', '11', '2562', '284', '0.00', '594', '478.11');
INSERT INTO `plant_production` VALUES ('19', '1', '62', '2562', '254', '0.00', '528', '481.06');
INSERT INTO `plant_production` VALUES ('20', '1', '66', '2562', '252', '0.00', '467', '539.61');
INSERT INTO `plant_production` VALUES ('21', '1', '17', '2562', '235', '0.00', '479', '490.61');
INSERT INTO `plant_production` VALUES ('22', '1', '45', '2562', '113', '0.00', '396', '285.35');
INSERT INTO `plant_production` VALUES ('23', '1', '3', '2562', '19', '0.00', '75', '253.33');
INSERT INTO `plant_production` VALUES ('24', '2', '13', '2562', '339292', '0.35', '190728', '1778.93');
INSERT INTO `plant_production` VALUES ('25', '2', '69', '2562', '212764', '0.22', '157837', '1348.00');
INSERT INTO `plant_production` VALUES ('26', '2', '12', '2562', '108093', '0.11', '64469', '1676.67');
INSERT INTO `plant_production` VALUES ('27', '2', '14', '2562', '48158', '0.05', '26133', '1842.80');
INSERT INTO `plant_production` VALUES ('28', '2', '67', '2562', '47550', '0.05', '39039', '1218.01');
INSERT INTO `plant_production` VALUES ('29', '2', '63', '2562', '45632', '0.05', '44958', '1014.99');
INSERT INTO `plant_production` VALUES ('30', '2', '75', '2562', '39615', '0.04', '48018', '825.00');
INSERT INTO `plant_production` VALUES ('31', '2', '41', '2562', '31086', '0.03', '35405', '878.01');
INSERT INTO `plant_production` VALUES ('32', '2', '68', '2562', '26522', '0.03', '30948', '856.99');
INSERT INTO `plant_production` VALUES ('33', '2', '76', '2562', '16968', '0.02', '25709', '660.00');
INSERT INTO `plant_production` VALUES ('34', '2', '70', '2562', '11462', '0.01', '14382', '796.97');
INSERT INTO `plant_production` VALUES ('35', '2', '51', '2562', '4766', '0.01', '6142', '775.97');
INSERT INTO `plant_production` VALUES ('36', '2', '22', '2562', '4108', '0.00', '2953', '1391.13');
INSERT INTO `plant_production` VALUES ('37', '2', '74', '2562', '4031', '0.00', '7059', '571.04');
INSERT INTO `plant_production` VALUES ('38', '2', '65', '2562', '3986', '0.00', '6161', '646.97');
INSERT INTO `plant_production` VALUES ('39', '2', '62', '2562', '2862', '0.00', '4383', '652.98');
INSERT INTO `plant_production` VALUES ('40', '2', '73', '2562', '2018', '0.00', '3346', '603.11');
INSERT INTO `plant_production` VALUES ('41', '2', '16', '2562', '1274', '0.00', '1577', '807.86');
INSERT INTO `plant_production` VALUES ('42', '2', '72', '2562', '1198', '0.00', '2080', '575.96');
INSERT INTO `plant_production` VALUES ('43', '2', '66', '2562', '912', '0.00', '2258', '403.90');
INSERT INTO `plant_production` VALUES ('44', '2', '64', '2562', '904', '0.00', '2194', '412.03');
INSERT INTO `plant_production` VALUES ('45', '2', '71', '2562', '773', '0.00', '1249', '618.90');
INSERT INTO `plant_production` VALUES ('46', '2', '56', '2562', '522', '0.00', '1095', '476.71');
INSERT INTO `plant_production` VALUES ('47', '2', '52', '2562', '452', '0.00', '864', '523.15');
INSERT INTO `plant_production` VALUES ('48', '2', '17', '2562', '424', '0.00', '454', '933.92');
INSERT INTO `plant_production` VALUES ('49', '2', '61', '2562', '396', '0.00', '656', '603.66');
INSERT INTO `plant_production` VALUES ('50', '2', '42', '2562', '297', '0.00', '673', '441.31');
INSERT INTO `plant_production` VALUES ('51', '2', '19', '2562', '188', '0.00', '499', '376.75');
INSERT INTO `plant_production` VALUES ('52', '2', '23', '2562', '185', '0.00', '270', '685.19');
INSERT INTO `plant_production` VALUES ('53', '2', '11', '2562', '156', '0.00', '216', '722.22');
INSERT INTO `plant_production` VALUES ('54', '2', '3', '2562', '8', '0.00', '114', '70.18');
INSERT INTO `plant_production` VALUES ('55', '2', '34', '2562', '3', '0.00', '3', '1000.00');
INSERT INTO `plant_production` VALUES ('56', '3', '54', '2562', '663268', '0.13', '848251', '781.92');
INSERT INTO `plant_production` VALUES ('57', '3', '19', '2562', '549088', '0.11', '707300', '776.32');
INSERT INTO `plant_production` VALUES ('58', '3', '43', '2562', '460954', '0.09', '665244', '692.91');
INSERT INTO `plant_production` VALUES ('59', '3', '50', '2562', '416351', '0.08', '565063', '736.82');
INSERT INTO `plant_production` VALUES ('60', '3', '30', '2562', '345580', '0.07', '484694', '712.99');
INSERT INTO `plant_production` VALUES ('61', '3', '45', '2562', '294008', '0.06', '388569', '756.64');
INSERT INTO `plant_production` VALUES ('62', '3', '47', '2562', '224467', '0.04', '289450', '775.49');
INSERT INTO `plant_production` VALUES ('63', '3', '52', '2562', '209044', '0.04', '272847', '766.16');
INSERT INTO `plant_production` VALUES ('64', '3', '42', '2562', '206123', '0.04', '284617', '724.21');
INSERT INTO `plant_production` VALUES ('65', '3', '44', '2562', '193006', '0.04', '252405', '764.67');
INSERT INTO `plant_production` VALUES ('66', '3', '7', '2562', '185063', '0.04', '251634', '735.45');
INSERT INTO `plant_production` VALUES ('67', '3', '10', '2562', '145693', '0.03', '180264', '808.22');
INSERT INTO `plant_production` VALUES ('68', '3', '40', '2562', '141228', '0.03', '190972', '739.52');
INSERT INTO `plant_production` VALUES ('69', '3', '41', '2562', '140447', '0.03', '196955', '713.09');
INSERT INTO `plant_production` VALUES ('70', '3', '38', '2562', '131366', '0.03', '173910', '755.37');
INSERT INTO `plant_production` VALUES ('71', '3', '48', '2562', '110763', '0.02', '126075', '878.55');
INSERT INTO `plant_production` VALUES ('72', '3', '18', '2562', '85931', '0.02', '106915', '803.73');
INSERT INTO `plant_production` VALUES ('73', '3', '25', '2562', '78162', '0.02', '107132', '729.59');
INSERT INTO `plant_production` VALUES ('74', '3', '49', '2562', '63371', '0.01', '84667', '748.47');
INSERT INTO `plant_production` VALUES ('75', '3', '56', '2562', '62179', '0.01', '83951', '740.66');
INSERT INTO `plant_production` VALUES ('76', '3', '39', '2562', '59602', '0.01', '79532', '749.41');
INSERT INTO `plant_production` VALUES ('77', '3', '23', '2562', '55998', '0.01', '74848', '748.16');
INSERT INTO `plant_production` VALUES ('78', '3', '51', '2562', '47390', '0.01', '66960', '707.74');
INSERT INTO `plant_production` VALUES ('79', '3', '46', '2562', '45809', '0.01', '63098', '726.00');
INSERT INTO `plant_production` VALUES ('80', '3', '57', '2562', '36400', '0.01', '46947', '775.34');
INSERT INTO `plant_production` VALUES ('81', '3', '53', '2562', '30918', '0.01', '42565', '726.37');
INSERT INTO `plant_production` VALUES ('82', '3', '22', '2562', '27742', '0.01', '35446', '782.66');
INSERT INTO `plant_production` VALUES ('83', '3', '27', '2562', '17717', '0.00', '25028', '707.89');
INSERT INTO `plant_production` VALUES ('84', '3', '16', '2562', '17502', '0.00', '22338', '783.51');
INSERT INTO `plant_production` VALUES ('85', '3', '13', '2562', '8589', '0.00', '11737', '731.79');
INSERT INTO `plant_production` VALUES ('86', '3', '9', '2562', '7479', '0.00', '10127', '738.52');
INSERT INTO `plant_production` VALUES ('87', '3', '28', '2562', '6963', '0.00', '10475', '664.73');
INSERT INTO `plant_production` VALUES ('88', '3', '33', '2562', '3954', '0.00', '5924', '667.45');
INSERT INTO `plant_production` VALUES ('89', '3', '34', '2562', '3572', '0.00', '5970', '598.32');
INSERT INTO `plant_production` VALUES ('90', '3', '61', '2562', '2844', '0.00', '4325', '657.57');
INSERT INTO `plant_production` VALUES ('91', '3', '29', '2562', '1973', '0.00', '2727', '723.51');
INSERT INTO `plant_production` VALUES ('92', '3', '15', '2562', '1402', '0.00', '1923', '729.07');
INSERT INTO `plant_production` VALUES ('93', '3', '26', '2562', '1321', '0.00', '1881', '702.29');
INSERT INTO `plant_production` VALUES ('94', '3', '35', '2562', '1282', '0.00', '1905', '672.97');
INSERT INTO `plant_production` VALUES ('95', '3', '20', '2562', '1202', '0.00', '1774', '677.56');
INSERT INTO `plant_production` VALUES ('96', '3', '21', '2562', '1094', '0.00', '1601', '683.32');
INSERT INTO `plant_production` VALUES ('97', '3', '55', '2562', '1086', '0.00', '1719', '631.76');
INSERT INTO `plant_production` VALUES ('98', '3', '31', '2562', '1034', '0.00', '2286', '452.32');
INSERT INTO `plant_production` VALUES ('99', '3', '37', '2562', '605', '0.00', '863', '701.04');
INSERT INTO `plant_production` VALUES ('100', '3', '36', '2562', '558', '0.00', '812', '687.19');
INSERT INTO `plant_production` VALUES ('101', '3', '62', '2562', '554', '0.00', '865', '640.46');
INSERT INTO `plant_production` VALUES ('102', '3', '24', '2562', '529', '0.00', '764', '692.41');
INSERT INTO `plant_production` VALUES ('103', '3', '32', '2562', '479', '0.00', '703', '681.37');
INSERT INTO `plant_production` VALUES ('104', '4', '38', '2562', '33631', '0.44', '28176', '1193.60');
INSERT INTO `plant_production` VALUES ('105', '4', '46', '2562', '20703', '0.27', '18751', '1104.10');
INSERT INTO `plant_production` VALUES ('106', '4', '44', '2562', '5124', '0.07', '6709', '763.75');
INSERT INTO `plant_production` VALUES ('107', '4', '40', '2562', '4831', '0.06', '5915', '816.74');
INSERT INTO `plant_production` VALUES ('108', '4', '39', '2562', '4552', '0.06', '4565', '997.15');
INSERT INTO `plant_production` VALUES ('109', '4', '50', '2562', '2619', '0.03', '3421', '765.57');
INSERT INTO `plant_production` VALUES ('110', '4', '45', '2562', '2335', '0.03', '2646', '882.46');
INSERT INTO `plant_production` VALUES ('111', '4', '54', '2562', '1360', '0.02', '1440', '944.44');
INSERT INTO `plant_production` VALUES ('112', '4', '43', '2562', '533', '0.01', '911', '585.07');
INSERT INTO `plant_production` VALUES ('113', '4', '22', '2562', '346', '0.00', '557', '621.18');
INSERT INTO `plant_production` VALUES ('114', '4', '42', '2562', '199', '0.00', '374', '532.09');
INSERT INTO `plant_production` VALUES ('115', '4', '25', '2562', '138', '0.00', '172', '802.33');
INSERT INTO `plant_production` VALUES ('116', '4', '36', '2562', '56', '0.00', '90', '622.22');
INSERT INTO `plant_production` VALUES ('117', '4', '41', '2562', '50', '0.00', '67', '746.27');
INSERT INTO `plant_production` VALUES ('118', '4', '19', '2562', '34', '0.00', '45', '755.56');
INSERT INTO `plant_production` VALUES ('119', '5', '38', '2562', '25085', '0.71', '7496', '3346.45');
INSERT INTO `plant_production` VALUES ('120', '5', '45', '2562', '5732', '0.16', '1646', '3482.38');
INSERT INTO `plant_production` VALUES ('121', '5', '47', '2562', '2873', '0.08', '741', '3877.19');
INSERT INTO `plant_production` VALUES ('122', '5', '56', '2562', '1555', '0.04', '335', '4641.79');

-- ----------------------------
-- Table structure for `thailand_province`
-- ----------------------------
DROP TABLE IF EXISTS `thailand_province`;
CREATE TABLE `thailand_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(12,8) NOT NULL,
  `longtitude` decimal(12,8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of thailand_province
-- ----------------------------
INSERT INTO `thailand_province` VALUES ('1', '10', 'กรุงเทพมหานคร', '13.75233520', '100.50159060');
INSERT INTO `thailand_province` VALUES ('2', '11', 'สมุทรปราการ', '13.59676900', '100.59997600');
INSERT INTO `thailand_province` VALUES ('3', '12', 'นนทบุรี', '13.85943300', '100.51655600');
INSERT INTO `thailand_province` VALUES ('4', '13', 'ปทุมธานี', '14.01712300', '100.53786000');
INSERT INTO `thailand_province` VALUES ('5', '14', 'พระนครศรีอยุธยา', '14.36545500', '100.57672000');
INSERT INTO `thailand_province` VALUES ('6', '15', 'อ่างทอง', '14.58565400', '100.45560000');
INSERT INTO `thailand_province` VALUES ('7', '16', 'ลพบุรี', '14.79491000', '100.65579000');
INSERT INTO `thailand_province` VALUES ('8', '17', 'สิงห์บุรี', '14.88514200', '100.40740000');
INSERT INTO `thailand_province` VALUES ('9', '18', 'ชัยนาท', '15.18501800', '100.12362000');
INSERT INTO `thailand_province` VALUES ('10', '19', 'สระบุรี', '14.52815900', '100.90985000');
INSERT INTO `thailand_province` VALUES ('11', '20', 'ชลบุรี', '13.35892100', '100.98306000');
INSERT INTO `thailand_province` VALUES ('12', '21', 'ระยอง', '12.66529300', '101.27694000');
INSERT INTO `thailand_province` VALUES ('13', '22', 'จันทบุรี', '12.60692100', '102.10642000');
INSERT INTO `thailand_province` VALUES ('14', '23', 'ตราด', '12.22884500', '102.51546500');
INSERT INTO `thailand_province` VALUES ('15', '24', 'ฉะเชิงเทรา', '13.68581600', '101.07356000');
INSERT INTO `thailand_province` VALUES ('16', '25', 'ปราจีนบุรี', '14.04783000', '101.36861400');
INSERT INTO `thailand_province` VALUES ('17', '26', 'นครนายก', '14.20013900', '101.22015000');
INSERT INTO `thailand_province` VALUES ('18', '27', 'สระแก้ว', '13.80783500', '102.07560000');
INSERT INTO `thailand_province` VALUES ('19', '30', 'นครราชสีมา', '14.96781000', '102.10318000');
INSERT INTO `thailand_province` VALUES ('20', '31', 'บุรีรัมย์', '14.99022500', '103.12151000');
INSERT INTO `thailand_province` VALUES ('21', '32', 'สุรินทร์', '14.87821700', '103.49606000');
INSERT INTO `thailand_province` VALUES ('22', '33', 'ศรีสะเกษ', '15.11721500', '104.32535000');
INSERT INTO `thailand_province` VALUES ('23', '34', 'อุบลราชธานี', '15.22757400', '104.85668000');
INSERT INTO `thailand_province` VALUES ('24', '35', 'ยโสธร', '15.79098000', '104.14297500');
INSERT INTO `thailand_province` VALUES ('25', '36', 'ชัยภูมิ', '15.71439100', '102.00251000');
INSERT INTO `thailand_province` VALUES ('26', '37', 'อำนาจเจริญ', '15.85388500', '104.66385000');
INSERT INTO `thailand_province` VALUES ('27', '39', 'หนองบัวลำภู', '17.14759600', '102.45802000');
INSERT INTO `thailand_province` VALUES ('28', '40', 'ขอนแก่น', '16.42568800', '102.83805000');
INSERT INTO `thailand_province` VALUES ('29', '41', 'อุดรธานี', '17.41070400', '102.78915000');
INSERT INTO `thailand_province` VALUES ('30', '42', 'เลย', '17.48799300', '101.71854000');
INSERT INTO `thailand_province` VALUES ('31', '43', 'หนองคาย', '17.87590200', '102.74353000');
INSERT INTO `thailand_province` VALUES ('32', '44', 'มหาสารคาม', '16.17735300', '103.30332000');
INSERT INTO `thailand_province` VALUES ('33', '45', 'ร้อยเอ็ด', '16.04973400', '103.65768400');
INSERT INTO `thailand_province` VALUES ('34', '46', 'กาฬสินธุ์', '16.42923500', '103.50902600');
INSERT INTO `thailand_province` VALUES ('35', '47', 'สกลนคร', '17.17585600', '104.16306000');
INSERT INTO `thailand_province` VALUES ('36', '48', 'นครพนม', '17.40791000', '104.78175000');
INSERT INTO `thailand_province` VALUES ('37', '49', 'มุกดาหาร', '16.53468500', '104.71705000');
INSERT INTO `thailand_province` VALUES ('38', '50', 'เชียงใหม่', '18.74217400', '98.98862000');
INSERT INTO `thailand_province` VALUES ('39', '51', 'ลำพูน', '18.57497000', '99.01327000');
INSERT INTO `thailand_province` VALUES ('40', '52', 'ลำปาง', '18.29186000', '99.50450000');
INSERT INTO `thailand_province` VALUES ('41', '53', 'อุตรดิตถ์', '17.62196000', '100.09905000');
INSERT INTO `thailand_province` VALUES ('42', '54', 'แพร่', '18.14224600', '100.14480000');
INSERT INTO `thailand_province` VALUES ('43', '55', 'น่าน', '18.79017800', '100.73160000');
INSERT INTO `thailand_province` VALUES ('44', '56', 'พะเยา', '19.18833200', '99.88077500');
INSERT INTO `thailand_province` VALUES ('45', '57', 'เชียงราย', '19.90513000', '99.83500000');
INSERT INTO `thailand_province` VALUES ('46', '58', 'แม่ฮ่องสอน', '19.30056200', '97.97967000');
INSERT INTO `thailand_province` VALUES ('47', '60', 'นครสวรรค์', '15.70198300', '100.14040000');
INSERT INTO `thailand_province` VALUES ('48', '61', 'อุทัยธานี', '15.37621400', '100.02775000');
INSERT INTO `thailand_province` VALUES ('49', '62', 'กำแพงเพชร', '16.48086700', '99.52373500');
INSERT INTO `thailand_province` VALUES ('50', '63', 'ตาก', '16.87833200', '99.12675000');
INSERT INTO `thailand_province` VALUES ('51', '64', 'สุโขทัย', '17.00505800', '99.82579000');
INSERT INTO `thailand_province` VALUES ('52', '65', 'พิษณุโลก', '16.82116100', '100.26231000');
INSERT INTO `thailand_province` VALUES ('53', '66', 'พิจิตร', '16.43887000', '100.35197400');
INSERT INTO `thailand_province` VALUES ('54', '67', 'เพชรบูรณ์', '16.43975000', '101.15124000');
INSERT INTO `thailand_province` VALUES ('55', '70', 'ราชบุรี', '13.53544200', '99.82526400');
INSERT INTO `thailand_province` VALUES ('56', '71', 'กาญจนบุรี', '14.00094000', '99.55282000');
INSERT INTO `thailand_province` VALUES ('57', '72', 'สุพรรณบุรี', '14.47178300', '100.12180000');
INSERT INTO `thailand_province` VALUES ('58', '73', 'นครปฐม', '13.81659500', '100.06864000');
INSERT INTO `thailand_province` VALUES ('59', '74', 'สมุทรสาคร', '13.54553300', '100.27666500');
INSERT INTO `thailand_province` VALUES ('60', '75', 'สมุทรสงคราม', '13.41091800', '100.00587000');
INSERT INTO `thailand_province` VALUES ('61', '76', 'เพชรบุรี', '13.10826000', '99.94651000');
INSERT INTO `thailand_province` VALUES ('62', '77', 'ประจวบคีรีขันธ์', '11.80848800', '99.79586000');
INSERT INTO `thailand_province` VALUES ('63', '80', 'นครศรีธรรมราช', '8.41673400', '99.96557600');
INSERT INTO `thailand_province` VALUES ('64', '81', 'กระบี่', '8.05790300', '98.92104000');
INSERT INTO `thailand_province` VALUES ('65', '82', 'พังงา', '8.46287300', '98.53757500');
INSERT INTO `thailand_province` VALUES ('66', '83', 'ภูเก็ต', '7.88650200', '98.38765000');
INSERT INTO `thailand_province` VALUES ('67', '84', 'สุราษฎร์ธานี', '9.13990400', '99.33994000');
INSERT INTO `thailand_province` VALUES ('68', '85', 'ระนอง', '9.96441500', '98.63598000');
INSERT INTO `thailand_province` VALUES ('69', '86', 'ชุมพร', '10.49004400', '99.18185400');
INSERT INTO `thailand_province` VALUES ('70', '90', 'สงขลา', '7.17508500', '100.61652000');
INSERT INTO `thailand_province` VALUES ('71', '91', 'สตูล', '6.64375600', '100.08920000');
INSERT INTO `thailand_province` VALUES ('72', '92', 'ตรัง', '7.55627200', '99.60570500');
INSERT INTO `thailand_province` VALUES ('73', '93', 'พัทลุง', '7.61605500', '100.07519000');
INSERT INTO `thailand_province` VALUES ('74', '94', 'ปัตตานี', '6.86600100', '101.26268000');
INSERT INTO `thailand_province` VALUES ('75', '95', 'ยะลา', '6.53844800', '101.28422500');
INSERT INTO `thailand_province` VALUES ('76', '96', 'นราธิวาส', '6.42275500', '101.82576000');
INSERT INTO `thailand_province` VALUES ('77', '38', 'บึงกาฬ', '18.35365700', '103.65629000');
