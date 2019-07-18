# MySQL dump 7.1
#
# Host: localhost    Database: penarol
#--------------------------------------------------------
# Server version	3.22.32

#
# Table structure for table 'amonestados'
#
CREATE TABLE amonestados (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  minuto int(2) DEFAULT '0' NOT NULL,
  jugador_id int(8) DEFAULT '0' NOT NULL,
  partido_id int(8) DEFAULT '0' NOT NULL,
  campeonato set('l','i') DEFAULT '' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,minuto,jugador_id,partido_id,campeonato),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'amonestados'
#

INSERT INTO amonestados VALUES (1,79,10,1,'l');
INSERT INTO amonestados VALUES (2,91,21,1,'l');
INSERT INTO amonestados VALUES (3,0,15,2,'l');
INSERT INTO amonestados VALUES (4,0,7,2,'l');
INSERT INTO amonestados VALUES (5,0,10,3,'l');
INSERT INTO amonestados VALUES (6,0,15,3,'l');
INSERT INTO amonestados VALUES (7,0,22,3,'l');
INSERT INTO amonestados VALUES (8,29,24,4,'l');
INSERT INTO amonestados VALUES (9,53,23,4,'l');
INSERT INTO amonestados VALUES (11,0,2,6,'l');
INSERT INTO amonestados VALUES (12,0,15,6,'l');
INSERT INTO amonestados VALUES (13,0,22,7,'l');

#
# Table structure for table 'amonestadosr'
#
CREATE TABLE amonestadosr (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  minuto int(2) DEFAULT '0' NOT NULL,
  jugador_id int(8) DEFAULT '0' NOT NULL,
  partido_id int(8) DEFAULT '0' NOT NULL,
  campeonato set('l','i') DEFAULT '' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,minuto,jugador_id,partido_id,campeonato),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'amonestadosr'
#

INSERT INTO amonestadosr VALUES (1,0,22,7,'l');
INSERT INTO amonestadosr VALUES (2,0,18,7,'l');
INSERT INTO amonestadosr VALUES (3,0,31,1,'l');
INSERT INTO amonestadosr VALUES (4,0,47,2,'l');
INSERT INTO amonestadosr VALUES (5,0,43,2,'l');
INSERT INTO amonestadosr VALUES (6,0,53,2,'l');
INSERT INTO amonestadosr VALUES (7,0,58,6,'l');
INSERT INTO amonestadosr VALUES (8,0,78,4,'l');
INSERT INTO amonestadosr VALUES (9,0,90,3,'l');

#
# Table structure for table 'arbitros'
#
CREATE TABLE arbitros (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  nombres varchar(128) DEFAULT '' NOT NULL,
  partido_id int(8) DEFAULT '0' NOT NULL,
  PRIMARY KEY (id),
  UNIQUE id (id),
  KEY id_2 (id),
  KEY partido_id (partido_id)
);

#
# Dumping data for table 'arbitros'
#

INSERT INTO arbitros VALUES (1,'Saúl Feldman. Líneas: Jorge Galati y Carlos Pastorino',1);
INSERT INTO arbitros VALUES (2,'Gustavo Méndez. Líneas: Carlos López y Adrián Climent.',2);
INSERT INTO arbitros VALUES (3,'Jorge Larrionda. Líneas: Marcelo Costa y Edgardo Acosta.',3);
INSERT INTO arbitros VALUES (4,'Martín Vázquez. Líneas: Fernando Cresci y Mauricio Espinosa.',4);
INSERT INTO arbitros VALUES (5,'Jorge Larrionda. Líneas: Ruben Meneses y Alvaro Sacarello.',5);

#
# Table structure for table 'cambios'
#
CREATE TABLE cambios (
  id int(8) DEFAULT '0' NOT NULL,
  minuto int(2) DEFAULT '0' NOT NULL,
  entra_id int(8) DEFAULT '0' NOT NULL,
  sale_id int(8) DEFAULT '0' NOT NULL,
  partido_id int(8) DEFAULT '0' NOT NULL,
  campeonato set('l','i') DEFAULT '' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id),
  UNIQUE id_2 (id),
  KEY minuto (minuto),
  KEY entra_id (entra_id),
  KEY sale_id (sale_id),
  KEY partido_id (partido_id),
  KEY penarol (campeonato)
);

#
# Dumping data for table 'cambios'
#

INSERT INTO cambios VALUES (1,70,16,23,1,'l');
INSERT INTO cambios VALUES (2,70,22,6,1,'l');
INSERT INTO cambios VALUES (3,85,26,15,1,'l');
INSERT INTO cambios VALUES (4,36,16,6,2,'l');
INSERT INTO cambios VALUES (5,45,14,22,2,'l');
INSERT INTO cambios VALUES (6,60,4,10,2,'l');
INSERT INTO cambios VALUES (7,66,14,22,3,'l');
INSERT INTO cambios VALUES (8,80,5,15,3,'l');
INSERT INTO cambios VALUES (9,61,15,24,4,'l');
INSERT INTO cambios VALUES (10,78,14,6,4,'l');
INSERT INTO cambios VALUES (11,87,0,3,4,'l');
INSERT INTO cambios VALUES (12,66,15,24,6,'l');
INSERT INTO cambios VALUES (13,66,6,14,6,'l');
INSERT INTO cambios VALUES (14,86,6,16,7,'l');
INSERT INTO cambios VALUES (15,77,15,22,7,'l');
INSERT INTO cambios VALUES (16,82,24,16,8,'l');
INSERT INTO cambios VALUES (17,79,15,22,8,'l');
INSERT INTO cambios VALUES (18,72,6,14,8,'l');

#
# Table structure for table 'cambiosr'
#
CREATE TABLE cambiosr (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  minuto int(2) DEFAULT '0' NOT NULL,
  entra_id int(8) DEFAULT '0' NOT NULL,
  sale_id int(8) DEFAULT '0' NOT NULL,
  partido_id int(8) DEFAULT '0' NOT NULL,
  campeonato set('l','i') DEFAULT '' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id),
  UNIQUE id_2 (id),
  KEY minuto (minuto),
  KEY entra_id (entra_id),
  KEY sale_id (sale_id),
  KEY partido_id (partido_id),
  KEY penarol (campeonato)
);

#
# Dumping data for table 'cambiosr'
#

INSERT INTO cambiosr VALUES (1,52,12,9,8,'l');
INSERT INTO cambiosr VALUES (2,61,13,11,8,'l');
INSERT INTO cambiosr VALUES (3,45,25,18,7,'l');
INSERT INTO cambiosr VALUES (4,45,26,21,7,'l');
INSERT INTO cambiosr VALUES (5,45,27,22,7,'l');
INSERT INTO cambiosr VALUES (6,57,40,30,1,'l');
INSERT INTO cambiosr VALUES (7,80,39,32,1,'l');
INSERT INTO cambiosr VALUES (8,54,41,37,1,'l');
INSERT INTO cambiosr VALUES (9,45,52,42,2,'l');
INSERT INTO cambiosr VALUES (10,45,53,43,2,'l');
INSERT INTO cambiosr VALUES (11,45,54,48,2,'l');
INSERT INTO cambiosr VALUES (12,88,67,61,6,'l');
INSERT INTO cambiosr VALUES (13,72,68,65,6,'l');
INSERT INTO cambiosr VALUES (14,59,69,66,6,'l');
INSERT INTO cambiosr VALUES (15,45,81,71,4,'l');
INSERT INTO cambiosr VALUES (23,55,96,94,3,'l');
INSERT INTO cambiosr VALUES (18,45,82,77,4,'l');
INSERT INTO cambiosr VALUES (21,77,95,90,3,'l');
INSERT INTO cambiosr VALUES (20,64,83,80,4,'l');

#
# Table structure for table 'campeonatos'
#
CREATE TABLE campeonatos (
  id tinyint(8) DEFAULT '0' NOT NULL,
  nombre varchar(24) DEFAULT '' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,nombre),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'campeonatos'
#


#
# Table structure for table 'configuracion'
#
CREATE TABLE configuracion (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  nombre varchar(24) DEFAULT '' NOT NULL,
  valor varchar(24) DEFAULT '' NOT NULL,
  KEY id (id,nombre,valor),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'configuracion'
#

INSERT INTO configuracion VALUES (2,'char_entrevista','180');
INSERT INTO configuracion VALUES (3,'char_noticia','160');
INSERT INTO configuracion VALUES (4,'char_unoticia','40');

#
# Table structure for table 'encuesta'
#
CREATE TABLE encuesta (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  valor int(2) DEFAULT '0' NOT NULL,
  time int(16) DEFAULT '0' NOT NULL,
  ip varchar(16) DEFAULT '0' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,valor,time,ip),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'encuesta'
#

INSERT INTO encuesta VALUES (1,3,968539485,'10.10.10.10');
INSERT INTO encuesta VALUES (2,1,968539496,'10.10.10.10');
INSERT INTO encuesta VALUES (3,2,968539508,'10.10.10.10');
INSERT INTO encuesta VALUES (4,1,968540544,'10.10.10.10');
INSERT INTO encuesta VALUES (5,4,968540554,'10.10.10.10');
INSERT INTO encuesta VALUES (6,4,968540561,'10.10.10.10');
INSERT INTO encuesta VALUES (7,2,968540608,'10.10.10.10');
INSERT INTO encuesta VALUES (8,1,968580129,'10.10.10.10');
INSERT INTO encuesta VALUES (9,1,968605821,'10.10.10.10');
INSERT INTO encuesta VALUES (10,2,968612774,'10.10.10.10');
INSERT INTO encuesta VALUES (11,4,968653195,'10.10.10.10');
INSERT INTO encuesta VALUES (12,2,968664596,'10.10.10.10');
INSERT INTO encuesta VALUES (13,3,968664635,'10.10.10.10');
INSERT INTO encuesta VALUES (14,3,968664653,'10.10.10.10');
INSERT INTO encuesta VALUES (15,4,968786327,'10.10.10.10');
INSERT INTO encuesta VALUES (16,1,968868548,'63.82.41.108');
INSERT INTO encuesta VALUES (17,1,968868624,'63.82.41.108');
INSERT INTO encuesta VALUES (18,1,968868635,'63.82.41.108');
INSERT INTO encuesta VALUES (19,1,968868647,'63.82.41.108');
INSERT INTO encuesta VALUES (20,1,968868651,'63.82.41.108');
INSERT INTO encuesta VALUES (21,1,968868657,'63.82.41.108');
INSERT INTO encuesta VALUES (22,3,0,'');
INSERT INTO encuesta VALUES (23,1,968963693,'200.5.85.15');
INSERT INTO encuesta VALUES (24,1,968963700,'200.5.85.15');
INSERT INTO encuesta VALUES (25,1,968963703,'200.5.85.15');
INSERT INTO encuesta VALUES (26,1,968963707,'200.5.85.15');
INSERT INTO encuesta VALUES (27,2,968963710,'200.5.85.15');
INSERT INTO encuesta VALUES (28,2,968963714,'200.5.85.15');
INSERT INTO encuesta VALUES (29,2,968963803,'63.82.41.109');
INSERT INTO encuesta VALUES (30,1,968963817,'63.82.41.109');
INSERT INTO encuesta VALUES (31,1,968963826,'63.82.41.109');
INSERT INTO encuesta VALUES (32,1,968963829,'63.82.41.109');
INSERT INTO encuesta VALUES (33,1,968963832,'63.82.41.109');
INSERT INTO encuesta VALUES (34,1,968963835,'63.82.41.109');
INSERT INTO encuesta VALUES (35,1,968963839,'63.82.41.109');
INSERT INTO encuesta VALUES (36,1,968963842,'63.82.41.109');
INSERT INTO encuesta VALUES (37,1,968963845,'63.82.41.109');
INSERT INTO encuesta VALUES (38,1,968963848,'63.82.41.109');
INSERT INTO encuesta VALUES (39,1,968963851,'63.82.41.109');
INSERT INTO encuesta VALUES (40,3,968963856,'63.82.41.109');
INSERT INTO encuesta VALUES (41,4,968969276,'63.82.41.108');
INSERT INTO encuesta VALUES (42,4,968969284,'63.82.41.108');
INSERT INTO encuesta VALUES (43,4,968969290,'63.82.41.108');
INSERT INTO encuesta VALUES (44,4,968969336,'63.82.41.108');
INSERT INTO encuesta VALUES (45,4,968969342,'63.82.41.108');
INSERT INTO encuesta VALUES (46,4,968969349,'63.82.41.108');
INSERT INTO encuesta VALUES (47,4,968974034,'209.13.5.181');
INSERT INTO encuesta VALUES (48,1,968983587,'63.82.41.70');
INSERT INTO encuesta VALUES (49,2,968983600,'63.82.41.70');
INSERT INTO encuesta VALUES (50,2,968983609,'63.82.41.70');
INSERT INTO encuesta VALUES (51,2,968983615,'63.82.41.70');
INSERT INTO encuesta VALUES (52,2,968983626,'63.82.41.70');
INSERT INTO encuesta VALUES (53,2,968983630,'63.82.41.70');
INSERT INTO encuesta VALUES (54,2,968983637,'63.82.41.109');
INSERT INTO encuesta VALUES (55,2,968983641,'63.82.41.70');
INSERT INTO encuesta VALUES (56,1,968983644,'63.82.41.109');
INSERT INTO encuesta VALUES (57,4,968983648,'63.82.41.70');
INSERT INTO encuesta VALUES (58,1,968983651,'63.82.41.109');
INSERT INTO encuesta VALUES (59,1,968988357,'63.82.41.70');
INSERT INTO encuesta VALUES (60,1,968988363,'63.82.41.70');
INSERT INTO encuesta VALUES (61,1,968988371,'63.82.41.70');
INSERT INTO encuesta VALUES (62,1,968988379,'63.82.41.70');
INSERT INTO encuesta VALUES (63,1,968988381,'63.82.41.70');
INSERT INTO encuesta VALUES (64,1,968988382,'63.82.41.70');
INSERT INTO encuesta VALUES (65,1,968988382,'63.82.41.70');
INSERT INTO encuesta VALUES (66,1,968988383,'63.82.41.70');
INSERT INTO encuesta VALUES (67,1,968988390,'63.82.41.70');
INSERT INTO encuesta VALUES (68,1,968988391,'63.82.41.70');
INSERT INTO encuesta VALUES (69,1,969011132,'63.82.41.81');
INSERT INTO encuesta VALUES (70,4,969011144,'63.82.41.81');
INSERT INTO encuesta VALUES (71,2,969019320,'63.82.41.70');
INSERT INTO encuesta VALUES (72,4,969020712,'63.82.41.70');
INSERT INTO encuesta VALUES (73,4,969020718,'63.82.41.70');
INSERT INTO encuesta VALUES (74,1,969022048,'63.82.41.81');
INSERT INTO encuesta VALUES (75,2,969022057,'63.82.41.81');
INSERT INTO encuesta VALUES (76,2,969022067,'63.82.41.81');
INSERT INTO encuesta VALUES (77,1,969032776,'63.82.41.69');
INSERT INTO encuesta VALUES (78,1,969033153,'209.13.104.82');
INSERT INTO encuesta VALUES (79,1,969033168,'209.13.104.82');
INSERT INTO encuesta VALUES (80,1,969033175,'209.13.104.82');
INSERT INTO encuesta VALUES (81,1,969033207,'209.13.104.82');
INSERT INTO encuesta VALUES (82,1,969033328,'209.13.104.82');
INSERT INTO encuesta VALUES (83,1,969033332,'209.13.104.82');
INSERT INTO encuesta VALUES (84,1,969042922,'209.13.104.82');
INSERT INTO encuesta VALUES (85,2,969046132,'208.171.104.235');
INSERT INTO encuesta VALUES (86,2,969046148,'208.171.104.235');
INSERT INTO encuesta VALUES (87,1,969051141,'63.82.41.101');
INSERT INTO encuesta VALUES (88,1,969051434,'63.82.41.123');
INSERT INTO encuesta VALUES (89,2,969135707,'152.163.205.69');
INSERT INTO encuesta VALUES (90,2,969373302,'208.171.104.235');
INSERT INTO encuesta VALUES (91,1,969373766,'63.82.41.109');
INSERT INTO encuesta VALUES (92,2,969384327,'63.82.41.107');
INSERT INTO encuesta VALUES (93,1,969388016,'63.82.41.109');
INSERT INTO encuesta VALUES (94,3,969388033,'63.82.41.109');
INSERT INTO encuesta VALUES (95,3,969388036,'63.82.41.109');
INSERT INTO encuesta VALUES (96,3,969388037,'63.82.41.109');
INSERT INTO encuesta VALUES (97,3,969388038,'63.82.41.109');
INSERT INTO encuesta VALUES (98,3,969388041,'63.82.41.109');
INSERT INTO encuesta VALUES (99,3,969388042,'63.82.41.109');
INSERT INTO encuesta VALUES (100,3,969388047,'63.82.41.109');
INSERT INTO encuesta VALUES (101,3,969388050,'63.82.41.109');
INSERT INTO encuesta VALUES (102,3,969388054,'63.82.41.109');
INSERT INTO encuesta VALUES (103,3,969388058,'63.82.41.109');
INSERT INTO encuesta VALUES (104,3,969388062,'63.82.41.109');
INSERT INTO encuesta VALUES (105,1,969388069,'63.82.41.109');
INSERT INTO encuesta VALUES (106,3,969388075,'63.82.41.109');
INSERT INTO encuesta VALUES (107,1,969388083,'63.82.41.109');
INSERT INTO encuesta VALUES (108,1,969392030,'208.171.104.235');
INSERT INTO encuesta VALUES (109,1,969992947,'63.82.41.123');
INSERT INTO encuesta VALUES (110,1,969992955,'63.82.41.123');
INSERT INTO encuesta VALUES (111,2,969995978,'63.82.41.123');
INSERT INTO encuesta VALUES (112,3,969997542,'63.82.41.123');
INSERT INTO encuesta VALUES (113,2,969997552,'63.82.41.123');
INSERT INTO encuesta VALUES (114,3,969997559,'63.82.41.123');
INSERT INTO encuesta VALUES (115,4,969997566,'63.82.41.123');
INSERT INTO encuesta VALUES (116,4,969997573,'63.82.41.123');
INSERT INTO encuesta VALUES (117,4,969997589,'63.82.41.123');
INSERT INTO encuesta VALUES (118,4,969997594,'63.82.41.123');
INSERT INTO encuesta VALUES (119,2,969997602,'63.82.41.123');
INSERT INTO encuesta VALUES (120,2,969997612,'63.82.41.123');
INSERT INTO encuesta VALUES (121,2,969997616,'63.82.41.123');
INSERT INTO encuesta VALUES (122,2,969997622,'63.82.41.123');
INSERT INTO encuesta VALUES (123,2,969997627,'63.82.41.123');
INSERT INTO encuesta VALUES (124,4,969997636,'63.82.41.123');
INSERT INTO encuesta VALUES (125,4,969997637,'63.82.41.123');
INSERT INTO encuesta VALUES (126,4,969997637,'63.82.41.123');
INSERT INTO encuesta VALUES (127,4,969997638,'63.82.41.123');
INSERT INTO encuesta VALUES (128,4,969997638,'63.82.41.123');
INSERT INTO encuesta VALUES (129,4,969997639,'63.82.41.123');
INSERT INTO encuesta VALUES (130,4,969997640,'63.82.41.123');
INSERT INTO encuesta VALUES (131,4,969997640,'63.82.41.123');
INSERT INTO encuesta VALUES (132,4,969997640,'63.82.41.123');
INSERT INTO encuesta VALUES (133,4,969997641,'63.82.41.123');
INSERT INTO encuesta VALUES (134,4,969997641,'63.82.41.123');
INSERT INTO encuesta VALUES (135,4,969997641,'63.82.41.123');
INSERT INTO encuesta VALUES (136,4,969997642,'63.82.41.123');
INSERT INTO encuesta VALUES (137,4,969997642,'63.82.41.123');
INSERT INTO encuesta VALUES (138,4,969997642,'63.82.41.123');
INSERT INTO encuesta VALUES (139,4,969997643,'63.82.41.123');
INSERT INTO encuesta VALUES (140,4,969997643,'63.82.41.123');
INSERT INTO encuesta VALUES (141,4,969997643,'63.82.41.123');
INSERT INTO encuesta VALUES (142,4,969997644,'63.82.41.123');
INSERT INTO encuesta VALUES (143,4,969997644,'63.82.41.123');
INSERT INTO encuesta VALUES (144,4,969997645,'63.82.41.123');
INSERT INTO encuesta VALUES (145,4,969997645,'63.82.41.123');
INSERT INTO encuesta VALUES (146,4,969997645,'63.82.41.123');
INSERT INTO encuesta VALUES (147,4,969997646,'63.82.41.123');
INSERT INTO encuesta VALUES (148,4,969997646,'63.82.41.123');
INSERT INTO encuesta VALUES (149,4,969997646,'63.82.41.123');
INSERT INTO encuesta VALUES (150,4,969997647,'63.82.41.123');
INSERT INTO encuesta VALUES (151,4,969997647,'63.82.41.123');
INSERT INTO encuesta VALUES (152,4,969997648,'63.82.41.123');
INSERT INTO encuesta VALUES (153,4,969997648,'63.82.41.123');
INSERT INTO encuesta VALUES (154,4,969997648,'63.82.41.123');
INSERT INTO encuesta VALUES (155,4,969997649,'63.82.41.123');
INSERT INTO encuesta VALUES (156,4,969997650,'63.82.41.123');
INSERT INTO encuesta VALUES (157,4,969997650,'63.82.41.123');
INSERT INTO encuesta VALUES (158,4,969997651,'63.82.41.123');
INSERT INTO encuesta VALUES (159,4,969997655,'63.82.41.123');
INSERT INTO encuesta VALUES (160,4,969997655,'63.82.41.123');
INSERT INTO encuesta VALUES (161,4,969997656,'63.82.41.123');
INSERT INTO encuesta VALUES (162,4,969997656,'63.82.41.123');
INSERT INTO encuesta VALUES (163,4,969997657,'63.82.41.123');
INSERT INTO encuesta VALUES (164,4,969997657,'63.82.41.123');
INSERT INTO encuesta VALUES (165,4,969997657,'63.82.41.123');
INSERT INTO encuesta VALUES (166,4,969997658,'63.82.41.123');
INSERT INTO encuesta VALUES (167,4,969997658,'63.82.41.123');
INSERT INTO encuesta VALUES (168,4,969997658,'63.82.41.123');
INSERT INTO encuesta VALUES (169,4,969997659,'63.82.41.123');
INSERT INTO encuesta VALUES (170,4,969997659,'63.82.41.123');
INSERT INTO encuesta VALUES (171,4,969997660,'63.82.41.123');
INSERT INTO encuesta VALUES (172,4,969997660,'63.82.41.123');
INSERT INTO encuesta VALUES (173,4,969997661,'63.82.41.123');
INSERT INTO encuesta VALUES (174,4,969997661,'63.82.41.123');
INSERT INTO encuesta VALUES (175,4,969997661,'63.82.41.123');
INSERT INTO encuesta VALUES (176,4,969997662,'63.82.41.123');
INSERT INTO encuesta VALUES (177,4,969997662,'63.82.41.123');
INSERT INTO encuesta VALUES (178,4,969997663,'63.82.41.123');
INSERT INTO encuesta VALUES (179,4,969997664,'63.82.41.123');
INSERT INTO encuesta VALUES (180,4,969997664,'63.82.41.123');
INSERT INTO encuesta VALUES (181,4,969997664,'63.82.41.123');
INSERT INTO encuesta VALUES (182,4,969997665,'63.82.41.123');
INSERT INTO encuesta VALUES (183,4,969997665,'63.82.41.123');
INSERT INTO encuesta VALUES (184,4,969997666,'63.82.41.123');
INSERT INTO encuesta VALUES (185,4,969997666,'63.82.41.123');
INSERT INTO encuesta VALUES (186,4,969997666,'63.82.41.123');
INSERT INTO encuesta VALUES (187,4,969997667,'63.82.41.123');
INSERT INTO encuesta VALUES (188,4,969997667,'63.82.41.123');
INSERT INTO encuesta VALUES (189,4,969997668,'63.82.41.123');
INSERT INTO encuesta VALUES (190,4,969997668,'63.82.41.123');
INSERT INTO encuesta VALUES (191,4,969997669,'63.82.41.123');
INSERT INTO encuesta VALUES (192,4,969997669,'63.82.41.123');
INSERT INTO encuesta VALUES (193,4,969997669,'63.82.41.123');
INSERT INTO encuesta VALUES (194,4,969997670,'63.82.41.123');
INSERT INTO encuesta VALUES (195,4,969997670,'63.82.41.123');
INSERT INTO encuesta VALUES (196,4,969997671,'63.82.41.123');
INSERT INTO encuesta VALUES (197,4,969997671,'63.82.41.123');
INSERT INTO encuesta VALUES (198,4,969997672,'63.82.41.123');
INSERT INTO encuesta VALUES (199,4,969997672,'63.82.41.123');
INSERT INTO encuesta VALUES (200,4,969997672,'63.82.41.123');
INSERT INTO encuesta VALUES (201,4,969997673,'63.82.41.123');
INSERT INTO encuesta VALUES (202,4,969997673,'63.82.41.123');
INSERT INTO encuesta VALUES (203,4,969997674,'63.82.41.123');
INSERT INTO encuesta VALUES (204,4,969997674,'63.82.41.123');
INSERT INTO encuesta VALUES (205,4,969997675,'63.82.41.123');
INSERT INTO encuesta VALUES (206,4,969997675,'63.82.41.123');
INSERT INTO encuesta VALUES (207,4,969997675,'63.82.41.123');
INSERT INTO encuesta VALUES (208,4,969997676,'63.82.41.123');
INSERT INTO encuesta VALUES (209,4,969997676,'63.82.41.123');
INSERT INTO encuesta VALUES (210,4,969997681,'63.82.41.123');
INSERT INTO encuesta VALUES (211,4,969997681,'63.82.41.123');
INSERT INTO encuesta VALUES (212,4,969997681,'63.82.41.123');
INSERT INTO encuesta VALUES (213,4,969997682,'63.82.41.123');
INSERT INTO encuesta VALUES (214,4,969997682,'63.82.41.123');
INSERT INTO encuesta VALUES (215,4,969997683,'63.82.41.123');
INSERT INTO encuesta VALUES (216,4,969997683,'63.82.41.123');
INSERT INTO encuesta VALUES (217,4,969997684,'63.82.41.123');
INSERT INTO encuesta VALUES (218,4,969997684,'63.82.41.123');
INSERT INTO encuesta VALUES (219,4,969997685,'63.82.41.123');
INSERT INTO encuesta VALUES (220,4,969997685,'63.82.41.123');
INSERT INTO encuesta VALUES (221,4,969997686,'63.82.41.123');
INSERT INTO encuesta VALUES (222,4,969997686,'63.82.41.123');
INSERT INTO encuesta VALUES (223,4,969997687,'63.82.41.123');
INSERT INTO encuesta VALUES (224,4,969997687,'63.82.41.123');
INSERT INTO encuesta VALUES (225,4,969997688,'63.82.41.123');
INSERT INTO encuesta VALUES (226,4,969997688,'63.82.41.123');
INSERT INTO encuesta VALUES (227,4,969997688,'63.82.41.123');
INSERT INTO encuesta VALUES (228,4,969997689,'63.82.41.123');
INSERT INTO encuesta VALUES (229,4,969997689,'63.82.41.123');
INSERT INTO encuesta VALUES (230,4,969997690,'63.82.41.123');
INSERT INTO encuesta VALUES (231,4,969997690,'63.82.41.123');
INSERT INTO encuesta VALUES (232,4,969997690,'63.82.41.123');
INSERT INTO encuesta VALUES (233,4,969997691,'63.82.41.123');
INSERT INTO encuesta VALUES (234,4,969997691,'63.82.41.123');
INSERT INTO encuesta VALUES (235,4,969997692,'63.82.41.123');
INSERT INTO encuesta VALUES (236,4,969997692,'63.82.41.123');
INSERT INTO encuesta VALUES (237,4,969997693,'63.82.41.123');
INSERT INTO encuesta VALUES (238,4,969997694,'63.82.41.123');
INSERT INTO encuesta VALUES (239,4,969997694,'63.82.41.123');
INSERT INTO encuesta VALUES (240,4,969997695,'63.82.41.123');
INSERT INTO encuesta VALUES (241,4,969997695,'63.82.41.123');
INSERT INTO encuesta VALUES (242,4,969997696,'63.82.41.123');
INSERT INTO encuesta VALUES (243,4,969997696,'63.82.41.123');
INSERT INTO encuesta VALUES (244,4,969997697,'63.82.41.123');
INSERT INTO encuesta VALUES (245,4,969997697,'63.82.41.123');
INSERT INTO encuesta VALUES (246,4,969997698,'63.82.41.123');
INSERT INTO encuesta VALUES (247,4,969997699,'63.82.41.123');
INSERT INTO encuesta VALUES (248,1,969997710,'63.82.41.123');
INSERT INTO encuesta VALUES (249,1,969997711,'63.82.41.123');
INSERT INTO encuesta VALUES (250,1,969997711,'63.82.41.123');
INSERT INTO encuesta VALUES (251,1,969997712,'63.82.41.123');
INSERT INTO encuesta VALUES (252,1,969997712,'63.82.41.123');
INSERT INTO encuesta VALUES (253,1,969997713,'63.82.41.123');
INSERT INTO encuesta VALUES (254,1,969997713,'63.82.41.123');
INSERT INTO encuesta VALUES (255,1,969997713,'63.82.41.123');
INSERT INTO encuesta VALUES (256,1,969997714,'63.82.41.123');
INSERT INTO encuesta VALUES (257,1,969997715,'63.82.41.123');
INSERT INTO encuesta VALUES (258,1,969997715,'63.82.41.123');
INSERT INTO encuesta VALUES (259,1,969997715,'63.82.41.123');
INSERT INTO encuesta VALUES (260,1,969997716,'63.82.41.123');
INSERT INTO encuesta VALUES (261,1,969997716,'63.82.41.123');
INSERT INTO encuesta VALUES (262,1,969997716,'63.82.41.123');
INSERT INTO encuesta VALUES (263,1,969997717,'63.82.41.123');
INSERT INTO encuesta VALUES (264,1,969997717,'63.82.41.123');
INSERT INTO encuesta VALUES (265,1,969997718,'63.82.41.123');
INSERT INTO encuesta VALUES (266,1,969997718,'63.82.41.123');
INSERT INTO encuesta VALUES (267,1,969997719,'63.82.41.123');
INSERT INTO encuesta VALUES (268,1,969997719,'63.82.41.123');
INSERT INTO encuesta VALUES (269,1,969997720,'63.82.41.123');
INSERT INTO encuesta VALUES (270,1,969997720,'63.82.41.123');
INSERT INTO encuesta VALUES (271,1,969997720,'63.82.41.123');
INSERT INTO encuesta VALUES (272,1,969997721,'63.82.41.123');
INSERT INTO encuesta VALUES (273,1,969997722,'63.82.41.123');
INSERT INTO encuesta VALUES (274,1,969997729,'63.82.41.123');
INSERT INTO encuesta VALUES (275,1,969997730,'63.82.41.123');
INSERT INTO encuesta VALUES (276,1,969997730,'63.82.41.123');
INSERT INTO encuesta VALUES (277,1,969997730,'63.82.41.123');
INSERT INTO encuesta VALUES (278,1,969997731,'63.82.41.123');
INSERT INTO encuesta VALUES (279,1,969997731,'63.82.41.123');
INSERT INTO encuesta VALUES (280,1,969997733,'63.82.41.123');
INSERT INTO encuesta VALUES (281,1,969997734,'63.82.41.123');
INSERT INTO encuesta VALUES (282,1,969997735,'63.82.41.123');
INSERT INTO encuesta VALUES (283,1,969997736,'63.82.41.123');
INSERT INTO encuesta VALUES (284,1,969997737,'63.82.41.123');
INSERT INTO encuesta VALUES (285,1,969997744,'63.82.41.123');
INSERT INTO encuesta VALUES (286,1,969997745,'63.82.41.123');
INSERT INTO encuesta VALUES (287,2,969997748,'63.82.41.123');
INSERT INTO encuesta VALUES (288,2,969997750,'63.82.41.123');
INSERT INTO encuesta VALUES (289,2,969997751,'63.82.41.123');
INSERT INTO encuesta VALUES (290,2,969997752,'63.82.41.123');
INSERT INTO encuesta VALUES (291,2,969997752,'63.82.41.123');
INSERT INTO encuesta VALUES (292,2,969997753,'63.82.41.123');
INSERT INTO encuesta VALUES (293,2,969997753,'63.82.41.123');
INSERT INTO encuesta VALUES (294,2,969997754,'63.82.41.123');
INSERT INTO encuesta VALUES (295,2,969997754,'63.82.41.123');
INSERT INTO encuesta VALUES (296,2,969997754,'63.82.41.123');
INSERT INTO encuesta VALUES (297,2,969997755,'63.82.41.123');
INSERT INTO encuesta VALUES (298,3,969997757,'63.82.41.123');
INSERT INTO encuesta VALUES (299,3,969997758,'63.82.41.123');
INSERT INTO encuesta VALUES (300,3,969997758,'63.82.41.123');
INSERT INTO encuesta VALUES (301,3,969997758,'63.82.41.123');
INSERT INTO encuesta VALUES (302,3,969997759,'63.82.41.123');
INSERT INTO encuesta VALUES (303,1,969997774,'63.82.41.123');
INSERT INTO encuesta VALUES (304,1,969997775,'63.82.41.123');
INSERT INTO encuesta VALUES (305,1,969997775,'63.82.41.123');
INSERT INTO encuesta VALUES (306,1,970090696,'63.82.41.109');
INSERT INTO encuesta VALUES (307,2,970163473,'63.82.41.108');
INSERT INTO encuesta VALUES (308,2,970163488,'63.82.41.108');

#
# Table structure for table 'entrevistas'
#
CREATE TABLE entrevistas (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  titulo varchar(128) DEFAULT '' NOT NULL,
  contenido text NOT NULL,
  imagenchica varchar(128) DEFAULT '' NOT NULL,
  imagengrande varchar(128) DEFAULT '' NOT NULL,
  fecha int(14) DEFAULT '0' NOT NULL,
  nivel int(1) DEFAULT '0' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,titulo),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'entrevistas'
#

INSERT INTO entrevistas VALUES (1,'Campaña del Bronce','En sólo diez días de iniciada  la campaña del bronce para perpetuar a nuestro capitán Pablo Javier Bengoechea y más de mil personas ya habían concurrido al palacio “Cr.Gastón Guelfi” con su aporte.<br>\r\n\r\nCausa singular emoción ver que todas las generaciones han estado ya representadas en los hinchas aurinegros, desde los niños pequeños que vienen cargando su bronce hasta los veteranos que, con piezas de todo tipo, no dejan pasar la oportunidad de quedar en la historia como colaboradores de tan importante obra. <br>\r\n\r\nPor otra parte cabe destacar que no sólo Montevideo está participando de la campaña sino que ya han venido peñarolenses del interior del país exclusivamente a traer sus donaciones y en algunos lugares ya se han formado campañas para recibirlo y luego enviarlo. <br>\r\n\r\nTodos quienes concurren se llevan un certificado que avala que han sido colaboradores en la campaña del bronce para Pablo Javier Bengoechea. <p>\r\nPróximamente se llamará a concurso de artistas peñarolenses, con el fin de que se expongan todas las obras que puedan perpetuar para siempre al capitán. <br>\r\n\r\nLa prof. Martha Canessa de Sanguinetti será quien tendrá a su cargo, junto a otros destacados artistas, el llamado a concurso. <br>\r\n\r\nEl sentimiento aurinegro ha quedado una vez más de  manifiesto. El capitán de Peñarol es  ídolo, símbolo y fiel representante de lo que los hinchas quieren de sus futbolistas,  sólo por eso es que ya está en marcha la campaña del bronce en su honor. Para perpetuar al ídolo, al capitán , o simplemente Pablo para quienes le queremos y respetamos.   <br><br>\r\n                                           \r\n<b>María José Riaño</b>','entrevista.jpg','entrevista_grande.jpg',970087156,1);

#
# Table structure for table 'expulsados'
#
CREATE TABLE expulsados (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  minuto int(2) DEFAULT '0' NOT NULL,
  jugador_id int(8) DEFAULT '0' NOT NULL,
  partido_id int(8) DEFAULT '0' NOT NULL,
  campeonato set('l','i') DEFAULT '' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,minuto,jugador_id,partido_id,campeonato),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'expulsados'
#


#
# Table structure for table 'expulsadosr'
#
CREATE TABLE expulsadosr (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  minuto int(2) DEFAULT '0' NOT NULL,
  jugador_id int(8) DEFAULT '0' NOT NULL,
  partido_id int(8) DEFAULT '0' NOT NULL,
  campeonato set('l','i') DEFAULT '' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,minuto,jugador_id,partido_id,campeonato),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'expulsadosr'
#

INSERT INTO expulsadosr VALUES (1,78,47,2,'l');

#
# Table structure for table 'goles'
#
CREATE TABLE goles (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  minuto int(2) DEFAULT '0' NOT NULL,
  jugador_id int(4) DEFAULT '0' NOT NULL,
  partido_id int(8) DEFAULT '0' NOT NULL,
  campeonato set('l','i') DEFAULT 'l' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id),
  UNIQUE id_2 (id),
  KEY minuto (minuto),
  KEY plantel_id (jugador_id),
  KEY partido_id (partido_id),
  KEY penarol (campeonato)
);

#
# Dumping data for table 'goles'
#

INSERT INTO goles VALUES (1,23,10,1,'l');
INSERT INTO goles VALUES (2,50,15,1,'l');
INSERT INTO goles VALUES (3,10,3,2,'l');
INSERT INTO goles VALUES (4,30,15,2,'l');
INSERT INTO goles VALUES (5,41,21,2,'l');
INSERT INTO goles VALUES (6,68,14,2,'l');
INSERT INTO goles VALUES (7,35,22,3,'l');
INSERT INTO goles VALUES (8,22,3,4,'l');
INSERT INTO goles VALUES (9,61,21,4,'l');
INSERT INTO goles VALUES (10,85,7,4,'l');
INSERT INTO goles VALUES (11,26,14,7,'l');
INSERT INTO goles VALUES (12,37,3,7,'l');
INSERT INTO goles VALUES (13,33,7,8,'l');
INSERT INTO goles VALUES (14,44,3,8,'l');
INSERT INTO goles VALUES (15,49,14,8,'l');

#
# Table structure for table 'golesrivales'
#
CREATE TABLE golesrivales (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  minuto int(2) DEFAULT '0' NOT NULL,
  jugador_id int(4) DEFAULT '0' NOT NULL,
  partido_id int(8) DEFAULT '0' NOT NULL,
  campeonato set('l','i') DEFAULT 'l' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id),
  UNIQUE id_2 (id),
  KEY minuto (minuto),
  KEY plantel_id (jugador_id),
  KEY partido_id (partido_id),
  KEY penarol (campeonato)
);

#
# Dumping data for table 'golesrivales'
#

INSERT INTO golesrivales VALUES (1,66,25,7,'l');
INSERT INTO golesrivales VALUES (2,85,23,7,'l');
INSERT INTO golesrivales VALUES (3,6,55,2,'l');
INSERT INTO golesrivales VALUES (4,55,50,2,'l');
INSERT INTO golesrivales VALUES (5,77,83,4,'l');

#
# Table structure for table 'jugadores'
#
CREATE TABLE jugadores (
  id int(4) DEFAULT '0' NOT NULL auto_increment,
  nombre varchar(24) DEFAULT '' NOT NULL,
  apellido varchar(24) DEFAULT '' NOT NULL,
  lugarnac varchar(32) DEFAULT '' NOT NULL,
  fechanac date DEFAULT '0000-00-00' NOT NULL,
  condicion varchar(24) DEFAULT '' NOT NULL,
  puesto varchar(24) DEFAULT '' NOT NULL,
  estatura varchar(24) DEFAULT '' NOT NULL,
  peso varchar(8) DEFAULT '' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,nombre),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'jugadores'
#

INSERT INTO jugadores VALUES (1,'Oscar','Aguirregaray','Artigas, Uruguay','1953-05-25','A préstamo','Zaguero','1.80 mts','80 kg');
INSERT INTO jugadores VALUES (2,'Luciano','Barbosa','Río de Janeiro, Brasil','1972-05-25','Del Club','Zaguero','1.82 mts.','74kg.');
INSERT INTO jugadores VALUES (3,'Pablo','Bengoechea','Rivera, Uruguay','1965-06-27','Del Club','Mediocampista','1.74 mts.','75 kg.');
INSERT INTO jugadores VALUES (4,'Joe','Bizera','Departamento de Artigas, Uruguay','1980-05-17','Del Club','Zaguero','1.85 mts.','81 kg.');
INSERT INTO jugadores VALUES (5,'Daniel','Borjas','Migues, Canelones, Uruguay','1974-08-08','Del Club','Mediocampista','1.75 mts.','73 kg.');
INSERT INTO jugadores VALUES (6,'Carlos','Bueno','Departamento de Artigas, Uruguay','1980-05-10','Del Club','Delantero','1.83 mts.','68 kg.');
INSERT INTO jugadores VALUES (7,'Néstor','Cedrés','Lavalleja, Uruguay','1970-03-03','A préstamo','Mediocampista','1.81 mts.','89 kg.');
INSERT INTO jugadores VALUES (8,'Fabián','Cesaro','Buenos Aires, Argentina','1973-05-07','Del Club','Volante','1.84 mts.','85 kg.');
INSERT INTO jugadores VALUES (9,'José','de los Santos','Salto, Uruguay','1968-10-16','Del Club','Zaguero - Mediocampo','1.83 mts.','80 kg.');
INSERT INTO jugadores VALUES (10,'Marcelo','De Souza','Montevideo, Uruguay','1975-09-30','Del Club','Volante - Zaguero','1.84 mts.','87 kg.');
INSERT INTO jugadores VALUES (11,'Luis','de Agustini','Montevideo, Uruguay','1976-04-05','Del Club','Arquero','1.86 mts.','80 kg.');
INSERT INTO jugadores VALUES (12,'Enrique','De Los Santos','Montevideo, Uruguay','1976-02-26','Del Club','Zaguero','1.82 mts.','77 kg.');
INSERT INTO jugadores VALUES (13,'Federico','Elduayen','Fray Bentos , Uruguay','1977-06-25','Del Club','Arquero','1.83 mts.','80 kg.');
INSERT INTO jugadores VALUES (14,'José','Franco','Montevideo, Uruguay','1978-09-28','Del club','Delantero','1.86 mts.','81 kg.');
INSERT INTO jugadores VALUES (15,'Martín','García','Canelones, Uruguay','1976-03-26','Del Club','Volante','1.80 mts.','80 kg.');
INSERT INTO jugadores VALUES (16,'Guillermo','Giacomazzi','Montevideo, Uruguay','1977-11-21','Del Club','Volante','1.85 mts.','79,5 kg');
INSERT INTO jugadores VALUES (17,'Mario','Leguizamón','Montevideo, Uruguay','1982-07-07','Del Club','Delantero','1.78 mts.','75 kg.');
INSERT INTO jugadores VALUES (18,'Sergio','Martínez','Montevideo, Uruguay','1974-10-13','Del Club','Arquero','1.82 mts.','81 kg.');
INSERT INTO jugadores VALUES (19,'Nelson','Olveira','Tacuarembó, Uruguay','1974-06-16','Del Club','Zaguero','1.80 mts.','79.5 kg.');
INSERT INTO jugadores VALUES (20,'Antonio','Pacheco','Cerro Largo, Uruguay','1976-04-11','Del Club','Delantero','1.73 mts.','74 kg.');
INSERT INTO jugadores VALUES (21,'Darío','Rodríguez','Montevideo, Uruguay','1974-09-17','A préstamo','Zaguero','1,84 mts.','85 kg.');
INSERT INTO jugadores VALUES (22,'Luis','Romero','Montevideo, Uruguay','1975-06-15','Del Club','Delantero','1,79 mts.','78 kg.');
INSERT INTO jugadores VALUES (23,'Marcelo','Romero','Montevideo, Uruguay','1976-04-07','Del Club','Volante','1.75 mts.','73 kg.');
INSERT INTO jugadores VALUES (24,'Nicolás','Rotundo','Montevideo, Uruguay','1976-06-06','Del Club','Volante','1.80 mts.','82 kg.');
INSERT INTO jugadores VALUES (25,'Adrián','Berbia','Montevideo, Uruguay','1977-10-12','A préstamo','Arquero','1.94 mts.','85 kg.');
INSERT INTO jugadores VALUES (26,'Rubén','Dos Santos','Montevideo, Uruguay','1969-11-16','A préstamo','Zaguero','1.78 mts.','77 kg.');
INSERT INTO jugadores VALUES (27,'Pablo','Caetano','Cerro Largo, Uruguay','1981-04-29','Del Club','Zaguero','1.68 mts.','68 kg.');

#
# Table structure for table 'jugadoresr'
#
CREATE TABLE jugadoresr (
  id int(4) DEFAULT '0' NOT NULL auto_increment,
  numero int(2) DEFAULT '0' NOT NULL,
  nombre varchar(24) DEFAULT '' NOT NULL,
  partido_id tinyint(4) DEFAULT '0' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,nombre),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'jugadoresr'
#

INSERT INTO jugadoresr VALUES (1,0,'Carlos Díaz',8);
INSERT INTO jugadoresr VALUES (2,0,'Nicolás González',8);
INSERT INTO jugadoresr VALUES (3,0,'Pablo Forlán',8);
INSERT INTO jugadoresr VALUES (4,0,'Jesús Berta',8);
INSERT INTO jugadoresr VALUES (5,0,'Pablo Pallante',8);
INSERT INTO jugadoresr VALUES (6,0,'Germán Laluz',8);
INSERT INTO jugadoresr VALUES (7,0,'Gabriel Candia',8);
INSERT INTO jugadoresr VALUES (8,0,'Maximiliano Castro',8);
INSERT INTO jugadoresr VALUES (9,0,'Christian Alfaro',8);
INSERT INTO jugadoresr VALUES (10,0,'Carlos Márcora',8);
INSERT INTO jugadoresr VALUES (11,0,'Edicarlos Da Silva',8);
INSERT INTO jugadoresr VALUES (12,0,'Félix Hernández',0);
INSERT INTO jugadoresr VALUES (13,0,'Martín González',0);
INSERT INTO jugadoresr VALUES (14,0,'Álvaro Escames',7);
INSERT INTO jugadoresr VALUES (15,0,'Danilo Rivero',7);
INSERT INTO jugadoresr VALUES (16,0,'Fabían Pumar',7);
INSERT INTO jugadoresr VALUES (17,0,'Leonardo Rodríguez',7);
INSERT INTO jugadoresr VALUES (18,0,'Juan Morán',7);
INSERT INTO jugadoresr VALUES (19,0,'Gonzalo Romero',7);
INSERT INTO jugadoresr VALUES (20,0,'Diego Meijide',7);
INSERT INTO jugadoresr VALUES (21,0,'Rodrigo Lemos',7);
INSERT INTO jugadoresr VALUES (22,0,'Luis Gamarra',7);
INSERT INTO jugadoresr VALUES (23,0,'Diego Emanuele',7);
INSERT INTO jugadoresr VALUES (24,0,'Álvaro González',7);
INSERT INTO jugadoresr VALUES (25,0,'Henry Báez',0);
INSERT INTO jugadoresr VALUES (26,0,'Marcelo González',0);
INSERT INTO jugadoresr VALUES (27,0,'Adrían Paz',0);
INSERT INTO jugadoresr VALUES (28,0,'Carlos Aires',1);
INSERT INTO jugadoresr VALUES (29,0,'Adrián Romero',1);
INSERT INTO jugadoresr VALUES (30,0,'Fabián Avero',1);
INSERT INTO jugadoresr VALUES (31,0,'Pablo Melo',1);
INSERT INTO jugadoresr VALUES (32,0,'Guillermo Ubiña',1);
INSERT INTO jugadoresr VALUES (33,0,'Germán Pérez',1);
INSERT INTO jugadoresr VALUES (34,0,'Richard Pellejero',1);
INSERT INTO jugadoresr VALUES (35,0,'Jorge Artigas',1);
INSERT INTO jugadoresr VALUES (36,0,'Martín Liguera',1);
INSERT INTO jugadoresr VALUES (37,0,'Alberto Ortega',1);
INSERT INTO jugadoresr VALUES (38,0,'Álvaro Pintos',1);
INSERT INTO jugadoresr VALUES (39,0,'Washington Alonso',0);
INSERT INTO jugadoresr VALUES (40,0,'Hernán Pintos',0);
INSERT INTO jugadoresr VALUES (41,0,'Alejandro Loffiego',0);
INSERT INTO jugadoresr VALUES (42,0,'Darling Gayol',2);
INSERT INTO jugadoresr VALUES (43,0,'Matias González',2);
INSERT INTO jugadoresr VALUES (44,0,'Enrique Saravia',2);
INSERT INTO jugadoresr VALUES (45,0,'Ángelo Lamanna',2);
INSERT INTO jugadoresr VALUES (46,0,'Héctor Méndez',2);
INSERT INTO jugadoresr VALUES (47,0,'Mario Carballo',2);
INSERT INTO jugadoresr VALUES (48,0,'Edison Suárez',2);
INSERT INTO jugadoresr VALUES (49,0,'Juan R. Carrasco',2);
INSERT INTO jugadoresr VALUES (50,0,'Enrique Ferraro',2);
INSERT INTO jugadoresr VALUES (51,0,'Jairo Rosa',2);
INSERT INTO jugadoresr VALUES (52,0,'César Olivera',0);
INSERT INTO jugadoresr VALUES (53,0,'Néstor Rosa',0);
INSERT INTO jugadoresr VALUES (54,0,'Luis Mauregui',0);
INSERT INTO jugadoresr VALUES (55,0,'Luis A. Muniz',2);
INSERT INTO jugadoresr VALUES (56,0,'Fernando Baleato',6);
INSERT INTO jugadoresr VALUES (57,0,'Carlos Díaz',6);
INSERT INTO jugadoresr VALUES (58,0,'Christian González',6);
INSERT INTO jugadoresr VALUES (59,0,'Pablo Hernández',6);
INSERT INTO jugadoresr VALUES (60,0,'Alejandro Traversa',6);
INSERT INTO jugadoresr VALUES (61,0,'Fernando Fadeuille',6);
INSERT INTO jugadoresr VALUES (62,0,'Diego Pérez',6);
INSERT INTO jugadoresr VALUES (63,0,'Marcelo Tejera',6);
INSERT INTO jugadoresr VALUES (64,0,'Federico Magallanes',6);
INSERT INTO jugadoresr VALUES (65,0,'Eliomar',6);
INSERT INTO jugadoresr VALUES (66,0,'Heberley Sosa',6);
INSERT INTO jugadoresr VALUES (67,0,'Gustavo Díaz',0);
INSERT INTO jugadoresr VALUES (68,0,'Roberto Bobadilla',0);
INSERT INTO jugadoresr VALUES (69,0,'Walter Escobar',0);
INSERT INTO jugadoresr VALUES (70,0,'Jorge Seré',4);
INSERT INTO jugadoresr VALUES (71,0,'Fernando Marrero',4);
INSERT INTO jugadoresr VALUES (72,0,'Leonardo Sum',4);
INSERT INTO jugadoresr VALUES (73,0,'Alejandro Bertoldi',4);
INSERT INTO jugadoresr VALUES (74,0,'Martín Otero',4);
INSERT INTO jugadoresr VALUES (75,0,'Elbio Tolosa',4);
INSERT INTO jugadoresr VALUES (76,0,'Víctor Pacheco',4);
INSERT INTO jugadoresr VALUES (77,0,'Gustavo Da Silva',4);
INSERT INTO jugadoresr VALUES (78,0,'Daniel Pereira',4);
INSERT INTO jugadoresr VALUES (79,0,'Fabricio Cetraro',4);
INSERT INTO jugadoresr VALUES (80,0,'Oscar Garrasino',4);
INSERT INTO jugadoresr VALUES (81,0,'Carlos García',0);
INSERT INTO jugadoresr VALUES (82,0,'Pablo Rivero',0);
INSERT INTO jugadoresr VALUES (83,0,'Edgardo Simovic',0);
INSERT INTO jugadoresr VALUES (84,0,'Ignacio Bordad',3);
INSERT INTO jugadoresr VALUES (85,0,'Máximo Lucas',3);
INSERT INTO jugadoresr VALUES (86,0,'Walt Báez',3);
INSERT INTO jugadoresr VALUES (87,0,'Bruno Piano',3);
INSERT INTO jugadoresr VALUES (88,0,'Jorge Anchén',3);
INSERT INTO jugadoresr VALUES (89,0,'Marcelo Sosa',3);
INSERT INTO jugadoresr VALUES (90,0,'Omar Pouso',3);
INSERT INTO jugadoresr VALUES (91,0,'Christian Callejas',3);
INSERT INTO jugadoresr VALUES (92,0,'Richard Nuñez',3);
INSERT INTO jugadoresr VALUES (93,0,'Javier Chevantón',3);
INSERT INTO jugadoresr VALUES (94,0,'Ignacio Risso',3);
INSERT INTO jugadoresr VALUES (95,0,'Diego Perrone',0);
INSERT INTO jugadoresr VALUES (96,0,'Martín Ojeda',0);

#
# Table structure for table 'lafrase'
#
CREATE TABLE lafrase (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  titulo varchar(32) DEFAULT '' NOT NULL,
  contenido text NOT NULL,
  nivel set('0','1') DEFAULT '' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,titulo),
  UNIQUE id_2 (id),
  KEY nivel (nivel)
);

#
# Dumping data for table 'lafrase'
#

INSERT INTO lafrase VALUES (3,'JOSÉ PEDRO DAMIANI','Hablan de transparencia y cristalinidad y siempre digo que los que hablan de cristalinidad deben saber que el que vive en casa de vidrio no puede jugar a las pedradas.','1');
INSERT INTO lafrase VALUES (4,'Otro titulo','Hablan de transparencia y cristalinidad y siempre digo que los que hablan de cristalinidad deben saber que le que vive en casa de vidrio no puede jugar a las bolitas.','0');
INSERT INTO lafrase VALUES (5,'Hola','Hola','0');

#
# Table structure for table 'noticias'
#
CREATE TABLE noticias (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  titulo varchar(128) DEFAULT '' NOT NULL,
  contenido text NOT NULL,
  imagenchica varchar(128) DEFAULT '' NOT NULL,
  imagengrande varchar(128) DEFAULT '' NOT NULL,
  fecha int(14) DEFAULT '0' NOT NULL,
  nivel int(1) DEFAULT '0' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,titulo),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'noticias'
#

INSERT INTO noticias VALUES (1,'Gabriel Cedrés siente igual que a los 18 años.','Es uno de los nombres que provoca mayores comentarios. Porque lo piden para el plantel o porque lo ubican en el equipo titular, lo cierto es que todos hablan de Néstor Gabriel Cedrés.<p>\r\n¿Cómo estás? <br>\r\n- Contento de estar acá de vuelta y bueno, listo para aportar lo que pueda para la Selección. <br><br>\r\n¿Con qué expectativa llega Cedrés al plantel? <br>\r\n- Con la misma de siempre, con la que trae cada jugador uruguayo cuando lo citan para la Selección. Con las ganas enormes de que las cosas salgan bien, de tratar de aportar lo mejor para que Uruguay pueda estar en un Mundial, en una palabra, las mismas que cuando tenía 18 años y debuté en Peñarol, ya en ese momento soñaba con ponerme la celeste. <br><br>\r\nSereno. Reflexivo a la hora de responder. Sin poses. El \"Gaby\" es siempre igual. <br><br>\r\nEl momento deportivo de Cedrés, ¿puede catalogarse de muy bueno? <br>\r\n- Sí... en general, de mi vida, yo lo englobo todo. Es que creo mucho en eso, en que no podemos separar lo deportivo de lo afectivo de lo sicológico, todo lo que rodea tu vida personal. Y en ese sentido me siento muy bien, estoy muy feliz en todos esos momentos. <br><br>\r\nO sea entonces que el amor, la felicidad, la estabilidad en el propio país ¿son algunos de los ingredientes que ayudan al excelente rendimiento de Cedrés? <br>\r\n- Sí, seguro... igual no te garantizan nada tampoco a nivel de resultado, pero seguramente que viviendo así tenés más libertad para expresarte en la cancha y estando bien de arriba todo funciona mejor. <br><br>\r\nEl momento actual de la Selección respecto a la Eliminatoria ¿es crítico? <br>\r\n- No, creo que mirando bien, lo único lamentable que tuvo esta Selección son los dos puntos que se perdieron acá. Yo creo que, salvo eso, sería una Eliminatoria bárbara, empatamos con Brasil allá y los partidos que perdimos de visita uno sabe que normalmente son difíciles, Paraguay, Colombia. <br><br>\r\n¿Qué hay que tener para ganar a Ecuador? <br>\r\n- Tranquilidad, sin ninguna duda tranquilidad, serenidad. Tenemos que tratar de jugar como contra Perú pero con la diferencia que debemos convertir un gol, fijate que en aquel partido con un gol hubiera cambiado todo e incluso estábamos un poco más arriba en la tabla, con otro panorama, pero bueno, la realidad es otra y hay que afrontarla. <br><br>\r\nUno de los hombres en los que Passarella siempre confió está de vuelta con la celeste. Es que el técnico lo conoce por haberlo dirigido en el River argentino. Néstor Gabriel Cedrés está otra vez con la celeste. <br><br>','cedres1.jpg','cedres_2.jpg',970160378,1);
INSERT INTO noticias VALUES (2,'<b>Información Institucional</b>','Por medio de una iniciativa surgida en la audición oficial \"Peñarol Verdad\" la cual fue recogida por el Presidente Cr.José Pedro Damiani\" y el Pro-Secretario General José Carlos Domínguez, el Capitán de Peñarol Pablo Javier Bengoechea tendrá muy pronto una obra que representrá su figura, realizada en bronce con el aporte de todos los peñarolenses.<br><br>\r\n\r\nSeguramente en estos días ya podremos informar de que forma se estructará todo esto que según ya adelanto el Presidente Damiani  en los microfonos de CX 10 Radio Continente , se le entregará a todos aquello que concurran con el bronce un certificado como como contribuyente para perpetuar a Pablo Bengoechea.<br><br>\r\n\r\nEs importante informar que el próximo lunes será recibida por el Consejo Directivo de la Institución, la ex primera dama del país y socia vitalicia de Peñarol Prof. Marta Canessa quién tendrá a su cargo el llamado a concurso de artistas nacionales y extranjeros para realizar la mencionada obra.','bengoechea_ch.jpg','bengoechea_gr.jpg',969478862,0);
INSERT INTO noticias VALUES (3,'Peñarol - Deportivo Maldonado','\"No importa en qué cancha juguemos...\" dice un canto que muchas veces sentimos cuando juega Peñarol y que hace referencia a la consecuencia de una hinchada sin igual que acompaña en las buenas y en las malas, donde quiera que jueguen los colores oro y negro. Por eso el viernes en Maldonado, vimos con emoción cómo la gente de Peñarol se hizo presente llegando al Campus, a pesar de ser una noche fría y de un día laboral, en autos y ómnibus, no sólo provenientes de la Capital sino de varios lugares del país. Los aurinegros alentaron a su Peñarol desde todas las tribunas, en un partido que resultaba importante para los intereses del equipo en un torneo corto y tan parejo como el Clausura. Los niños con sus gorritos, los mayores con sus bufandas y las banderas que tapizaron de amarillo y negro todo Maldonado, demostraron una vez más que el equipo del pueblo, el más popular de todos, jugaba esa noche allí.','cedres.jpg','logo_penarol_gr.jpg',970087493,3);
INSERT INTO noticias VALUES (4,'De Lima fue clave para ganar el Quinquenio','(por Fernando Menck de Peñarol Verdad)<br><br>\r\n\r\n\"Los hinchas de Peñarol todavía me lo agradecen\"\r\n\r\nTodo el grupo que ganó el famoso Quinquenio 93-97 aportó lo suyo para lograrlo, pero entre ellos lo del floridense Juan Carlos De Lima fue superlativo. Convirtiéndole goles claves a Cerro y al tradicional rival para darnos una alegría que hoy todavía recordamos. Ahora, que anunció su retiro definitivo del fútbol, habló largo y tendido con Peñarol Verdad.<br><br>\r\n\r\nCon 38 años cumplidos, muchos goles en su haber y la pinta de siempre, el goleador floridense recibió a Peñarol Verdad cómodamente instalado en El Prado, en la calle Francisco Miranda, donde vive con su señora Carmen y sus dos hijos (Juan Marcelo, de 15 años) y Ximena (12). Cuando le preguntamos si Juan sale al padre, nos dice. \"El estudia, está haciendo cuarto de liceo y dicen que le pega muy bien. Juega en su colegio, en Nuestra Señora del Líbano\".<br><br>\r\n\r\n-<b>¿Hace ya cuánto que De Lima no viste oficialmente la camiseta de Peñarol?</b><br><br>\r\n\r\n-El último partido que jugué fue el 8 de diciembre del año pasado. No me olvido más. Fue contra el Flamengo en el Centenario, aquel partido del lío.<br><br>\r\n\r\nFue una oportunidad muy linda la que Ribas me dio porque veníamos de perder en Río de Janeiro 3 a 0 y teníamos que tratar de remontar en Montevideo ese tanteador tan adverso para ver si, por lo menos, íbamos a penales. <br><br>\r\n\r\n-<b>Un desafío tremendo, me imagino...</b><br><br>\r\n\r\n-Ni hablar que cuando Ribas me dijo que iba a ser titular, me moría de ganas por jugar y responderle. Pero lamentablemente las cosas no se dieron como hubiéramos querido. Me acuerdo que arrancamos perdiendo y las cosas se complicaron. Fue una lástima porque teníamos muchas esperanzas en esa Copa. Ojalá que se dé ahora... <br><br>\r\n\r\n-<b>¿Y cuál fue la lesión que ahora te decidió a decirle definitivamente adiós al fútbol?</b><br><br>\r\n\r\n-Tuve rotura del tendón de Aquiles, pero la recuperación la hice perfectamente con la ayuda del doctor Alfredo Rienzi. De aquella operación que me practicaron te puedo decir que quedé en forma notable. Después, lo que ocurrió fue que prácticamente estuve como 5 meses para empezar a volver a correr, despacito, y a los 7 meses de la intervención tuve el alta para jugar. ¿Qué pasó? Y pasó que de ahí en adelante para poder ponerme bien físicamente me llevó un tiempo largo, mes y medio aproximadamente, y finalizaba el año. Se iba todo el 2000, veía que iba a perder todo el año y yo, para jugar, quiero estar 10 puntos físicamente. Si no, no se puede...Y me iba a costar ponerme a punto nuevamente en ese aspecto, por lo que decidí retirarme.<br><br>\r\n\r\n\"SE TE HACE CUESTA ARRIBA\"\r\n\r\n-<b>¿Cómo que veías que no estabas para arrancar el 2001 de nuevo realizando trabajos especiales de recuperación para ponerte a punto?</b><br><br>\r\n\r\n-Se hace difícil, sin duda, pero no es imposible. Lo que pasa es que cuantos más años tenés, recuperarte de una lesión tan grave como la que tuve cuesta muchísimo más. Pero si hubiera querido, capaz que lo sacaba adelante, pero la idea del retiro, ya la venía manejando desde algunos años.<br><br>\r\n\r\n-<b>Como que algún día, De Lima le iba a tener que decir adiós al fútbol... </b><br><br>\r\n\r\n-Claro, pienso que este era el momento más adecuado. ¿Si me resultó difícil decir adiós? ¡Y cómo no te va a costar! No es una decisión nada fácil de tomar. Pero hay que ser realista y saber retirarse en el momento justo.<br><br>','escudo.jpg','logo_penarol_gr.jpg',969478465,0);
INSERT INTO noticias VALUES (5,'Peñarol Verdad','El 1° de septiembre de 2000 se cumplieron tres años en el aire de “Peñarol Verdad”, audición oficial del Consejo Directivo del Club A. Peñarol. El hecho de que una institución tenga una audición oficial, con la palabra diaria del presidente José Pedro Damiani en  comunicación constante con la gente y conducida por José Carlos Domínguez, ha sido un caso inédito en el mundo, que hoy se mantiene tan vigente como al principio. Cuenta con información, comentarios y opinión en la participación de los dirigentes, entrenadores y futbolistas del club, como así también la opinión de los socios y parciales. <br><br>\r\n“Peñarol Verdad” nació el 1° de septiembre de 1997 ante la proscripción, por parte del Círculo de Periodistas Deportivos del Uruguay y de todos los medios de comunicación vinculados al deporte, del presidente Cr. José Pedro Damiani,. Quisieron acallar la voz del presidente y por lo tanto la voz de Peñarol; esto que motivó que consejeros, cuerpo técnico, futbolistas y funcionarios de la institución se solidarizaran con el presidente Damiani. Así nació “Peñarol Verdad”, por un acto de unión y sentimiento, con la colaboración de cada sector de Peñarol, incluidos los socios. Así nació lo que denominamos “Todos Juntos” y que posteriormente nos diera la fuerza para conseguir el segundo quinquenio de oro. Hoy “Peñarol Verdad”, como desde hace tres años, se emite de lunes a viernes de 11:00 a 13:00 hs. en los micrófonos de CX 10- Radio Continente; con un resumen semanal, los sábados de 11:00 a 12:00 hs. <br><br>\r\nAgradecemos a todos aquellos periodistas que, desafiando la posición del Círculo y en defensa de los derechos de información, apoyaron a “Peñarol Verdad”.<br>\r\n','f4.jpg','logo_penarol_gr.jpg',970087590,2);
INSERT INTO noticias VALUES (6,'Información Institucional','Juan Carlos De Lima, futbolista aurinegro que se ganara un lugar en el corazón de todos los peñarolenses por su gran aporte para conseguir el segundo quinquenio de oro, fue recibido este lunes por el Consejo Directivo de la Institución para ser homenajeado tras tomar la decisión de abandonar la práctica activa del fútbol. <br><br>\r\nEl Presidente Cr. José Pedro Damiani, junto al Consejo Directivo, le entregaron a De Lima un obsequio que representa el agradecimiento y el cariño de todo Peñarol para un hombre que, con la humildad como característica principal de su personalidad y sus dotes de goleador nato, quedó en la historia aurinegra tras brindarle al club resultados muy importantes que permitieran, en 1997, conseguir el quinto título consecutivo de Campeón y ser nuevamente Campeón Uruguayo en 1999. <br><br>\r\nDe forma muy emotiva concluyó la reunión; dejando en claro en ella que las puertas han quedado para siempre abiertas, por ser un sentimiento mutuo de cariño y respeto entre la hinchada y un hombre que, con su entrega y su don de buena gente, se lo ganó. <br><br>\r\n','escudo.jpg','logo_penarol_gr.jpg',970158196,4);

#
# Table structure for table 'noticias_juveniles'
#
CREATE TABLE noticias_juveniles (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  link varchar(128) DEFAULT '' NOT NULL,
  titulo varchar(128) DEFAULT '' NOT NULL,
  contenido text NOT NULL,
  nivel int(11) DEFAULT '0' NOT NULL,
  chars int(11) DEFAULT '0' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,link),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'noticias_juveniles'
#

INSERT INTO noticias_juveniles VALUES (1,'Juveniles','Sebastián Álvarez','Las divisiones juveniles de Peñarol han hecho un muy buen trabajo en lo que va del año. Cabe destacar que en lo que refiere a cuarta y quinta división, el cuerpo técnico encabezado por Mario Saralegui, comenzó a trabajar con estas divisionales a comienzo de temporada, lo que les demandó un período de adaptación y también un tiempo de evaluación de los planteles en cuanto al conocimiento de los valores con los que se contaba y aquellos que se incorporaban desde el interior del país.\r\n\r\nPor otra parte, sexta y séptima división, dirigidas por Daniel Martínez, tuvieron también su espacio de tiempo en el que se conformó fundamentalmente el plantel de séptima, mientras que en sexta se vieron los frutos de un trabajo ya realizado en la obtención del torneo Apertura. \r\n\r\nActualmente y disputando el Clausura, Peñarol tiene tres divisionales que hacen punta, como son los casos de cuarta, sexta y séptima, que está invicta y cuenta con dos partidos menos que el ocasional puntero. \r\nQuinta división, tras haber tenido algún traspié ha logrado superarlo y ha levantado su rendimiento. No podemos olvidarnos que la cuarta participó en el mes de agosto de un importante torneo Sub 20 en España, el Torneo de L\'Alcudia, donde participaron grandes equipos -entre ellos el Real Madrid, Boca, Barcelona y Corinthians- y donde los botijas aurinegros dejaron una muy buena impresión. \r\n\r\nLos más chicos, en lo que a juveniles refiere, son las categorías dirigidas por Omar Caetano, octava novena y décima, las que no compiten oficialmente; Caetano tiene a su cargo una de las tareas más importantes que es la captación de valores para integrar los planteles. \r\n',1,180);
INSERT INTO noticias_juveniles VALUES (2,'La Tercera se afirma como líder','La Tercera se afirma como líder','La tercera división de Peñarol que disputa actualmente el torneo Clausura, viene puntera junto a Danubio en la tabla anual; debemos recordar que quedó a un punto del Campeón del Apertura. Por otra parte, aportó al plantel principal varios futbolistas, como es el caso de Carlos Bueno que ahora ya está integrado definitivamente a Primera, dando muy buenos resultados. \r\nUna de las bajas que tendrá esta divisional será Mario Leguisamón, quien convirtiera dos de los cuatro goles en el último partido, por haber sufrido un esguince de hombro.',2,180);
INSERT INTO noticias_juveniles VALUES (3,'Fernando Albermagger','Fernando Albermagger','\"El Mono\", como lo conocen sus amigos, hizo toda la carrera en Peñarol. Desde niño se colocó la amarilla y negra sobre el pecho. Es también un volante de ida y vuelta que marca goles. Debido a su marca aplicada y a su ductilidad con la pelota, Víctor Púa lo convocó a las Juveniles, una vez a la Sub-17 y dos a la Sub-20, como lateral derecho. A pesar de su corta edad tiene una experiencia internacional envidiable a la que le sumará las vividas con los jugadores de Primera. \r\n\r\n¿Cómo se siente que te den la oportunidad de entrenar con el primer equipo de Peñarol? \r\n\"Para mí es más que una experiencia, porque yo soñé con estar acá. Ahora trato de aprovecharlo por mí y por mi familia que esperó mucho de uno y es mi deseo algún día retribuirles\". \r\n\r\nHablábamos con Sebastián Álvarez, y a ti te pasa lo mismo, que este año se le dan un montón de sensaciones buenas y soñadas para cualquier chico, tú jugaste tu segundo Mundial Juvenil, ahora estás aquí en Los Aromos ¿Cómo hacés para sobrellevar todo eso? \r\n\"Antes de nada, tenemos la gran suerte de vivir esto. Ahora se lleva adelante con dedicación porque si uno se dedica a pleno a lo que hace, pueden llegar las cosas. También tranquilo porque tanto Álvarez como Carreño y como los demás muchachos, si estamos acá es porque algo bien hicimos, a pesar de que no logramos nada aún, el solo hecho de estar acá para nosotros es un logro muy importante al igual que los Mundiales y los Sudamericanos. Así que hay que seguir y aprender de personas que son muy buenas en todo sentido para sacar provecho de todo\". \r\n\r\nHace poco tiempo que estás acá, pero sirve para que nos des una opinión de cómo ves a Peñarol. \r\n\"Creo que se trabajó bien en la primera parte y también de cara a la segunda corrigiendo cosas. Basta con ver las prácticas para darse cuenta que se entrena al máximo. Peñarol va a hacer un buen Clausura.\r\n\r\n',3,180);
INSERT INTO noticias_juveniles VALUES (4,'Del Semillero Aurinegro','Buena Madera','Son jugadores salidos del Semillero Aurinegro. Savia nueva a la que Julio Rivas apuesta y que promete con ganarse un lugar y satisfacciones para todos los hinchas aurinegros. Están haciendo sus primeras armas y esto es lo que piensan... \r\n',4,180);

#
# Table structure for table 'noticias_primera'
#
CREATE TABLE noticias_primera (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  link varchar(128) DEFAULT '' NOT NULL,
  titulo varchar(128) DEFAULT '' NOT NULL,
  contenido text NOT NULL,
  nivel int(11) DEFAULT '0' NOT NULL,
  chars int(11) DEFAULT '0' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,link),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'noticias_primera'
#

INSERT INTO noticias_primera VALUES (1,'Fue claro el Cr. Damiani:','Fue claro el Cr. Damiani:','Si hacemos un balance de la campaña de Peñarol en el Apertura, vemos que hasta el momento hemos jugado 10 partidos; ganamos 5, empatamos 4 y perdimos 1, con un gol en contra, con una jugada desgraciada del zaguero Darío Rodríguez. Creo que los problemas, los tenemos en los últimos minutos, pues es ahí donde nos empatan los partidos. Ya he dicho que este año estamos pagando el precio del sexenio. En el \'98 hicimos todos los esfuerzos posibles para salir campeones por sexta vez consecutiva, no lo logramos, pero el esfuerzo se hizo. Hace poco dije que debíamos olvidarnos del Apertura y prepararnos para el Clausura, y fui criticado por todos los que hablan y opinan, pues no tienen acceso a las fuentes de información de Peñarol. Les diría que un día \"carnereen\" un rato y vengan por Peñarol y les contamos todo. Así no andan imaginando cosas como lo están haciendo ahora.<br><br>\r\nDicen cosas que realmente no corresponden. Nosotros en el \'98 hicimos gastos -buscando el sexenio- que estamos soportando actualmente. Cuando Gregorio Pérez dio el paso al costado, y contratamos a Ribas, quien fue elegido por 9 de los 10 consejeros que estaban en la sala, el décimo dirigente era yo, que no voté pues yo era quien iba a hacer el mandado de hablar con Ribas. Confieso que lo hubiera votado, así que el técnico fue elegido por unanimidad. Después de cuatro meses de trabajo no se puede hacer todo este lío que se está armando, porque la hinchada genuina de Peñarol fue la que disfrutó durante cinco años, y también sabe que no se pueden hacer tormentas con matracas y que nadie va a desafectar a Ribas por haber empatado 4 partidos y haber perdido 1, en un total de 10 partidos. Que quede claro, Peñarol no va a ser el Titanic. Vamos a seguir como siempre, navegando, y trataremos de llegar a buen puerto. Y para los desinformados que dicen que Ribas sigue porque tiene un contrato firmado, les decimos que el técnico de Peñarol no tiene ningún contrato firmado. Pero igual se sigue con la manija. <br><br>\r\n* Me extraña sobremanera que los ingeniosos de siempre no hablen de que Nacional fue históricamente el primer club de los \"grandes\" que pierde en el interior de la República, de eso no se dice nada. Me reuní con Ribas, y al parecer había gran expectativa por esta reunión. Había un montón de periodistas y fotógrafos queriendo tomar imágenes de nuestra reunión. Nosotros -de común acuerdo- les dijimos que no había fotos. Las fotos son para regalarle a la novia, cuando éramos jóvenes, o como aquel que dijo: \"qué hacemos con el retrato, si la mina está en Europa\". Está todo bajo control a pesar de que navegamos por aguas tumultuosas, con varios vientos de muchos lados, los alisios y los otros, los alisios deben ser de las fuerzas a favor de Peñarol pues siempre son buenos. De la reunión con Ribas, que era una reunión rutinaria, quisieron hacer todo un circo, pues no sé de dónde sacaron que íbamos a mandar a Ribas al cadalso. Seguiremos por el rumbo que nos hemos trazado.\r\n',1,180);
INSERT INTO noticias_primera VALUES (2,'Cada vez que Peñarol viaja al interior, se vive una gran fiesta','Cada vez que Peñarol viaja al interior, se vive una gran fiesta','Tanto en la cancha como en el hotel donde los aurinegros se alojen, los parciales, dando muestras de \"fe\" peñarolense, se agolpan en gran número. Por eso es que las fotos repletas de hinchas son una constante. Uno de los que no falta nunca en cada visita aurinegra a su ciudad es nuestro amigo y corresponsal, Luis Viviani. Él mismo, apenas llegado el ómnibus que transporta a la delegación, ya está a la orden por si puede ser útil en algo al equipo de sus amores. Como podemos apreciar en las fotos esta tradición se transmite con la sangre, ya que su hijo no desaprovechó la ocasión para también fotografiarse con algunos de los jugadores del equipo mirasol.',2,180);
INSERT INTO noticias_primera VALUES (3,'Editorial: Hubiera hecho lo mismo','Hubiera hecho lo mismo','Entrando en el segundo mes del año, y a dos meses de sucedido el hecho, todavía no se han acallado los ecos del partido Peñarol - Flamengo. Nos estamos refiriendo a los hechos que se produjeron en el final de aquel partido, con la \"gresca generalizada\" que se armó. Pensamos que ya pasó el tiempo suficiente como para hacer un análisis más profundo de lo sucedido. El paso inexorable del almanaque, nos da la calma y, ojalá, la sabiduría necesaria para tratar el tema. La lejanía en el tiempo permite que se aborden los hechos sin la pasión del momento, y con la mesura que requiere el caso. Aclaramos que quien esto escribe no está ni ahí con la violencia. Prefiere evitarla. Si hay un lío en la esquina, elijo dar vuelta la manzana evitando pasar por ese lugar. Creo que las diferencias entre personas no se arreglan con las piñas. Conversando, la gente se entiende. Así debe ser, o así debería ser. Porque reconozcamos que en determinadas circunstancias, las palabras pueden estar \"sobrando\", y la solución requiera emprender otras acciones. Como regla general, no nos parece que en el último año del siglo -según los astrólogos el año 2000 corresponde al siglo XX- los conflictos entre seres humanos se solucionen a las \"trompadas\" o con guerras. Aunque también es cierto que la sociedad toda, derogada la \"ley de duelos\", no ha encontrado la forma de salvar el honor de las personas. Tal vez la mencionada ley tampoco lo hacía, pero todos los días vemos, escuchamos y leemos agravios entre personas, y no hay forma de reparar el honor mancillado de las mismas. Volviendo al punto que nos atañe, partido Peñarol - Flamengo, decimos sin titubeos, que dadas las circunstancias, HUBIERAMOS HECHO LO MISMO QUE LOS JUGADORES DE PEÑAROL. No lo decimos porque nos sentimos parte de esta gran Institución, sino que lo expresamos como hombres, como deportistas. Cualquiera que haya pisado alguna vez una cancha de fútbol, sea en calidad de profesional, súper profesional, semi profesional, amateur, por el asado, o en un partido como los que se jugaba antaño entre solteros y casados, se agarró alguna \"calentura\" con el rival de turno que nos estaba \"pintando la cara\" o con los mismos compañeros. Una cosa es que te ganen bien, y otra muy distinta es que te \"tomen el pelo\", te \"saquen la pizarra\", o como en el caso que estamos tratando, no respeten la historia de Peñarol. Y los brasileros son expertos al arte de \"babosear\". Parecería que como estamos en un fútbol hiperprofesionalizado, hablo de la FIFA y de los torneos que ella desarrolla, no estoy hablando del profesionalismo \"de alpargata\" que tenemos en el Uruguay, el jugador profesional no podría tener reacciones humanas. Peñarol siempre se caracterizó por ser un equipo sanguíneo. Su gente, léase jugadores, técnicos, dirigentes, socios, hinchas o simples simpatizantes, se emocionan hasta las lágrimas recordando su historia y sus hazañas. Por algo, teniendo que remontar una diferencia de tres goles frente a un equipo brasilero, cuarenta mil personas se dieron cita en aquel partido. Porque Peñarol siempre alienta al milagro. Para nuestro equipo nunca hay imposibles. Y las personas que concurrieron al partido con Flamengo, aplaudieron en su enorme mayoría, la actitud de los jugadores de Peñarol. No fue sólo la Ámsterdam o la Colombes, también fue la Olímpica, la América, el Palco Oficial, y la Bancada de Prensa. Eso sí, el periodismo crucificó a los jugadores aurinegros. Son los mismos que nos dicen que en Maracaná ganamos poniendo H... <br>Contradicciones de este mundo.<br>Hasta la próxima. ',3,100);
INSERT INTO noticias_primera VALUES (4,'Carlos \"Pato\" Aguilera','El Pato Aguilera','\"Tengo un compromiso muy grande con Peñarol\"<br>\r\nDespués de sucesos por todos conocidos, Carlos \"Pato\" Aguilera volvió a lucir la camiseta aurinegra, tal cual era, según sus propias palabras, su más ferviente deseo. Peñarol Magazine optó por esperar para que las aguas se calmaran y recién entonces hablar con el jugador. A continuación la charla mantenida en Los Aromos luego de un día normal de entrenamiento. <br><br>\r\n¿Personalmente cómo te sentís, sobre todo luego de lo que ha demostrado la hinchada de Peñarol antes y luego de tu regreso?<br><br>\r\n- Yo soy un agradecido, como siempre digo estoy agradecido con las personas que me ayudaron en un momento muy difícil; nunca dejé de reconocer lo que fue la hinchada de Peñarol, los dirigentes; por algo estoy de vuelta en Peñarol. Soy un agradecido y me siento orgulloso de poder estar acá de vuelta y que me dieran otra oportunidad.',4,100);

#
# Table structure for table 'partidos'
#
CREATE TABLE partidos (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  rival varchar(24) DEFAULT '' NOT NULL,
  local set('0','1') DEFAULT '0' NOT NULL,
  resultado varchar(5) DEFAULT '' NOT NULL,
  date date DEFAULT '0000-00-00' NOT NULL,
  campeonato_id int(8) DEFAULT '0' NOT NULL,
  campeonato set('l','i') DEFAULT 'l' NOT NULL,
  arbitros varchar(64) DEFAULT '' NOT NULL,
  DT varchar(24) DEFAULT '' NOT NULL,
  DTrival varchar(24) DEFAULT '' NOT NULL,
  cargado set('0','1') DEFAULT '0' NOT NULL,
  PRIMARY KEY (id),
  UNIQUE id_2 (id),
  KEY rival (rival),
  KEY cancha (local),
  KEY campeonato (campeonato)
);

#
# Dumping data for table 'partidos'
#

INSERT INTO partidos VALUES (1,'Cerro','1','2-0','2000-07-30',1,'l','Saúl Feldman. Líneas: Jorge Galati y Carlos Pastorino','Julio Ribas','Jorge González','1');
INSERT INTO partidos VALUES (2,'Rocha','0','2-4','2000-08-05',1,'l','Gustavo Méndez. Líneas: Carlos López y Adrián Climent.','Julio Ribas','Juan R. Carrasco','1');
INSERT INTO partidos VALUES (3,'Danubio','1','1-0','2000-08-12',1,'l','Jorge Larrionda. Líneas: Marcelo Costa y Edgardo Acosta.','Julio Ribas','Jorge Fossati','1');
INSERT INTO partidos VALUES (4,'Liverpool','1','3-1','2000-08-19',1,'l','Martín Vázquez. Líneas: Fernando Cresci y Mauricio Espinosa.','Julio RIbas','Jorge Da Silva','1');
INSERT INTO partidos VALUES (5,'Libre','','','2000-08-27',0,'l','','','','1');
INSERT INTO partidos VALUES (6,'Defensor','0','0-0','2000-09-10',1,'l','Jorge Larrionda. Líneas: Ruben Meneses y Alvaro Sacarello.','Julio Ribas','Manuel Keosseián','1');
INSERT INTO partidos VALUES (7,'Bella Vista','0','2-2','2000-09-16',1,'l','Martín Vázquez. Líneas: Walter Rial y Marcelo Gadea.','Julio Ribas','Sergio Batista','1');
INSERT INTO partidos VALUES (8,'Maldonado','0','0-3','2000-09-22',1,'l','José Gijón. Líneas: Carlos López y Pablo Fandiño.','Julio Ribas','Eduardo Acevedo','1');
INSERT INTO partidos VALUES (9,'Paysandú','1','','2000-09-01',1,'l','','','','0');
INSERT INTO partidos VALUES (11,'Frontera R.','0','','2000-10-12',1,'l','','','','0');
INSERT INTO partidos VALUES (12,'Juventud','0','','2000-10-14',1,'l','','','','0');
INSERT INTO partidos VALUES (13,'Racing','1','','2000-10-22',1,'l','','','','0');
INSERT INTO partidos VALUES (14,'Rentistas','1','','2000-10-28',1,'l','','','','0');
INSERT INTO partidos VALUES (15,'Nacional','0','','2000-11-04',1,'l','','','','0');
INSERT INTO partidos VALUES (10,'Tacuarembó','0','','2000-10-07',0,'l','','','','0');
INSERT INTO partidos VALUES (16,'River Plate','0','','2000-11-09',0,'l','','','','0');
INSERT INTO partidos VALUES (17,'Huracán Buceo','1','','2000-11-19',0,'l','','','','0');

#
# Table structure for table 'posiciones'
#
CREATE TABLE posiciones (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  nombre varchar(32) DEFAULT '' NOT NULL,
  j int(3) DEFAULT '0' NOT NULL,
  g int(3) DEFAULT '0' NOT NULL,
  e int(3) DEFAULT '0' NOT NULL,
  p int(3) DEFAULT '0' NOT NULL,
  gf int(3) DEFAULT '0' NOT NULL,
  gc int(3) DEFAULT '0' NOT NULL,
  pts int(3) DEFAULT '0' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,nombre),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'posiciones'
#

INSERT INTO posiciones VALUES (1,'Bella Vista',7,2,3,2,12,11,9);
INSERT INTO posiciones VALUES (2,'Cerro',8,2,3,3,10,12,9);
INSERT INTO posiciones VALUES (3,'Danubio',8,3,4,1,14,6,13);
INSERT INTO posiciones VALUES (4,'Defensor Sp.',8,5,3,0,19,6,18);
INSERT INTO posiciones VALUES (5,'Dep. Maldonado',7,2,2,3,9,9,8);
INSERT INTO posiciones VALUES (6,'Frontera Rivera',8,1,1,6,7,19,4);
INSERT INTO posiciones VALUES (7,'Huracán Buceo',8,1,4,3,7,12,7);
INSERT INTO posiciones VALUES (8,'Juventud',7,2,2,3,6,8,8);
INSERT INTO posiciones VALUES (9,'Liverpool',8,1,3,4,5,12,6);
INSERT INTO posiciones VALUES (10,'Nacional',8,5,3,0,14,6,18);
INSERT INTO posiciones VALUES (11,'Paysandú B.V.',7,1,4,2,9,12,7);
INSERT INTO posiciones VALUES (12,'Peñarol',7,5,2,0,15,5,17);
INSERT INTO posiciones VALUES (13,'Racing',8,3,4,1,11,7,13);
INSERT INTO posiciones VALUES (14,'Rentistas',7,1,4,2,7,9,7);
INSERT INTO posiciones VALUES (15,'River Plate',7,2,3,2,10,11,9);
INSERT INTO posiciones VALUES (16,'Rocha F.C.',8,1,0,7,7,21,3);
INSERT INTO posiciones VALUES (17,'Tacuarembó',7,4,1,2,9,5,13);

#
# Table structure for table 'pruebados'
#
CREATE TABLE pruebados (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  clave varchar(24) DEFAULT '' NOT NULL,
  KEY id (id,clave)
);

#
# Dumping data for table 'pruebados'
#

INSERT INTO pruebados VALUES (1,'hola');
INSERT INTO pruebados VALUES (2,'saludo');

#
# Table structure for table 'pruebauno'
#
CREATE TABLE pruebauno (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  clave varchar(24) DEFAULT '' NOT NULL,
  KEY id (id,clave)
);

#
# Dumping data for table 'pruebauno'
#

INSERT INTO pruebauno VALUES (1,'chau');
INSERT INTO pruebauno VALUES (2,'no saludo');

#
# Table structure for table 'puntaje'
#
CREATE TABLE puntaje (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  puntos int(2) DEFAULT '0' NOT NULL,
  partido_id int(8) DEFAULT '0' NOT NULL,
  jugador_id int(8) DEFAULT '0' NOT NULL,
  campeonato set('l','i') DEFAULT '' NOT NULL,
  time int(16) DEFAULT '0' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,jugador_id,time),
  UNIQUE id_2 (id),
  KEY partido_id (partido_id)
);

#
# Dumping data for table 'puntaje'
#

INSERT INTO puntaje VALUES (1,7,6,10,'l',969009406);
INSERT INTO puntaje VALUES (2,9,6,10,'i',969009419);
INSERT INTO puntaje VALUES (3,3,6,10,'l',969009437);
INSERT INTO puntaje VALUES (4,4,6,10,'i',969009452);
INSERT INTO puntaje VALUES (5,10,6,10,'l',969009459);
INSERT INTO puntaje VALUES (6,5,6,11,'l',969009502);
INSERT INTO puntaje VALUES (7,9,6,11,'i',969009509);
INSERT INTO puntaje VALUES (8,6,6,11,'l',969009525);
INSERT INTO puntaje VALUES (9,3,6,11,'i',969009535);
INSERT INTO puntaje VALUES (10,10,6,11,'l',969009971);
INSERT INTO puntaje VALUES (11,5,6,11,'l',969010441);
INSERT INTO puntaje VALUES (12,3,6,11,'l',969010447);
INSERT INTO puntaje VALUES (13,2,6,11,'l',969010453);
INSERT INTO puntaje VALUES (14,10,6,12,'l',969010483);
INSERT INTO puntaje VALUES (15,5,6,12,'l',969010488);
INSERT INTO puntaje VALUES (16,8,6,13,'l',969010621);
INSERT INTO puntaje VALUES (17,6,6,13,'l',969010626);
INSERT INTO puntaje VALUES (18,7,6,14,'l',969010805);
INSERT INTO puntaje VALUES (19,10,6,15,'l',969010935);
INSERT INTO puntaje VALUES (20,7,6,19,'l',969010981);
INSERT INTO puntaje VALUES (21,2,6,16,'l',969011011);
INSERT INTO puntaje VALUES (22,5,6,9,'l',969011408);
INSERT INTO puntaje VALUES (23,6,6,9,'i',969011417);
INSERT INTO puntaje VALUES (24,7,6,6,'l',969011452);
INSERT INTO puntaje VALUES (25,3,6,17,'l',969011479);
INSERT INTO puntaje VALUES (26,7,6,3,'l',969016841);
INSERT INTO puntaje VALUES (27,9,6,3,'i',969016851);
INSERT INTO puntaje VALUES (28,9,6,15,'l',969016940);
INSERT INTO puntaje VALUES (29,10,6,16,'i',969018563);
INSERT INTO puntaje VALUES (30,9,6,16,'l',969018571);
INSERT INTO puntaje VALUES (31,8,6,16,'i',969018583);
INSERT INTO puntaje VALUES (32,7,6,16,'l',969018590);
INSERT INTO puntaje VALUES (33,9,6,7,'l',969019638);
INSERT INTO puntaje VALUES (34,9,6,10,'l',969020372);
INSERT INTO puntaje VALUES (35,6,6,1,'l',969033527);
INSERT INTO puntaje VALUES (36,9,6,1,'i',969033545);
INSERT INTO puntaje VALUES (37,8,6,3,'l',969043094);
INSERT INTO puntaje VALUES (38,9,6,1,'l',969191079);
INSERT INTO puntaje VALUES (39,10,6,5,'l',969191119);
INSERT INTO puntaje VALUES (40,7,6,5,'i',969191128);
INSERT INTO puntaje VALUES (41,4,6,1,'i',969191148);
INSERT INTO puntaje VALUES (42,7,6,4,'l',969224094);
INSERT INTO puntaje VALUES (43,2,6,4,'i',969224104);
INSERT INTO puntaje VALUES (44,7,6,19,'l',969224125);
INSERT INTO puntaje VALUES (45,4,6,19,'i',969224135);
INSERT INTO puntaje VALUES (46,9,6,21,'l',969224169);
INSERT INTO puntaje VALUES (47,6,6,21,'i',969224180);
INSERT INTO puntaje VALUES (48,8,6,12,'l',969224207);
INSERT INTO puntaje VALUES (49,2,6,12,'i',969224217);
INSERT INTO puntaje VALUES (50,4,6,19,'i',969224376);
INSERT INTO puntaje VALUES (51,3,6,19,'i',969224386);
INSERT INTO puntaje VALUES (52,3,6,19,'i',969224391);
INSERT INTO puntaje VALUES (53,3,6,19,'i',969224395);
INSERT INTO puntaje VALUES (54,3,6,19,'i',969224398);
INSERT INTO puntaje VALUES (55,3,6,19,'i',969224402);
INSERT INTO puntaje VALUES (56,6,6,1,'l',969296381);
INSERT INTO puntaje VALUES (57,3,6,1,'i',969296387);
INSERT INTO puntaje VALUES (58,4,6,2,'i',969296428);
INSERT INTO puntaje VALUES (59,10,6,2,'l',969322782);
INSERT INTO puntaje VALUES (60,7,6,2,'i',969322954);
INSERT INTO puntaje VALUES (61,9,6,10,'i',969324326);
INSERT INTO puntaje VALUES (62,7,6,22,'l',969385073);
INSERT INTO puntaje VALUES (63,8,6,1,'l',969385109);
INSERT INTO puntaje VALUES (64,4,8,14,'l',969999110);
INSERT INTO puntaje VALUES (65,6,8,23,'l',969999188);
INSERT INTO puntaje VALUES (66,10,8,12,'l',969999199);
INSERT INTO puntaje VALUES (67,10,8,13,'l',969999237);
INSERT INTO puntaje VALUES (68,10,8,5,'l',969999917);
INSERT INTO puntaje VALUES (69,10,8,27,'l',969999984);
INSERT INTO puntaje VALUES (70,9,8,1,'i',970000267);
INSERT INTO puntaje VALUES (71,9,8,1,'i',970000362);
INSERT INTO puntaje VALUES (72,10,8,3,'l',970092849);
INSERT INTO puntaje VALUES (73,6,8,2,'l',970172583);
INSERT INTO puntaje VALUES (74,6,8,2,'l',970172926);

#
# Table structure for table 'recomendados'
#
CREATE TABLE recomendados (
  id int(4) DEFAULT '0' NOT NULL auto_increment,
  titulo varchar(32) DEFAULT '' NOT NULL,
  url text NOT NULL,
  PRIMARY KEY (id),
  KEY id (id),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'recomendados'
#

INSERT INTO recomendados VALUES (1,'Entrevista a Damiani','http://capenarol.com/capenarol/primera_div/index.php3?page=damiani');
INSERT INTO recomendados VALUES (2,'El foro del Hincha','http://foros.capenarol.com/forumdisplay.php?forumid=1');
INSERT INTO recomendados VALUES (3,'Aguilera nos habla','http://capenarol.com/capenarol/primera_div/index.php3?page=aguilera');
INSERT INTO recomendados VALUES (4,'Los Juveniles','http://capenarol.com/capenarol/juveniles/index.php3');
INSERT INTO recomendados VALUES (5,'Campaña Local','http://capenarol.com/capenarol/primera_div/?mostrar=fixture');
INSERT INTO recomendados VALUES (6,'Las Autoridades','http://capenarol.com/capenarol/institucion/index.php3');
INSERT INTO recomendados VALUES (7,'La Historia Manya','http://capenarol.com/capenarol/institucion/index.php3?page=origenes/origenes_01');
INSERT INTO recomendados VALUES (8,'El Chat Aurinegro','http://capenarol.com/inde.html');

#
# Table structure for table 'recomienda'
#
CREATE TABLE recomienda (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  nombre varchar(128) DEFAULT '0' NOT NULL,
  destino varchar(128) DEFAULT '0' NOT NULL,
  fecha int(16) DEFAULT '0' NOT NULL,
  direccion varchar(128) DEFAULT '0' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'recomienda'
#

INSERT INTO recomienda VALUES (1,'lpapa','lpapa@satlink.com',967700626,'10.10.10.10');
INSERT INTO recomienda VALUES (2,'leopapa','root@athenas.infovia.com.ar',969437487,'200.5.85.15');
INSERT INTO recomienda VALUES (3,'leopapa','root@athenas.infovia.com.ar',969437703,'200.9.212.3');
INSERT INTO recomienda VALUES (4,'leopapa','root@athenas.infovia.com.ar',969437812,'200.9.212.3');
INSERT INTO recomienda VALUES (5,'Leonardo Papa','root@athenas.infovia.com.ar',969437852,'200.9.212.3');
INSERT INTO recomienda VALUES (6,'El trolin','hprincipe@sportsya.com',969476443,'63.82.41.108');
INSERT INTO recomienda VALUES (7,'Chuequen Berguen','hramirez@sportsya.com',969659736,'63.82.41.108');
INSERT INTO recomienda VALUES (8,'Esteban Raffo Q.','nak@sportsya.com',969896488,'63.82.41.109');

#
# Table structure for table 'swf'
#
CREATE TABLE swf (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  nombre varchar(24) DEFAULT '' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,nombre),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'swf'
#

INSERT INTO swf VALUES (1,'capenarol.swf');

#
# Table structure for table 'tecnicos'
#
CREATE TABLE tecnicos (
  id int(8) DEFAULT '0' NOT NULL,
  nombre varchar(64) DEFAULT '' NOT NULL,
  apellido varchar(64) DEFAULT '' NOT NULL,
  cargo varchar(64) DEFAULT '' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,nombre,apellido,cargo),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'tecnicos'
#


#
# Table structure for table 'titulares'
#
CREATE TABLE titulares (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  numero int(2) DEFAULT '0' NOT NULL,
  jugador_id int(8) DEFAULT '0' NOT NULL,
  partido_id int(8) DEFAULT '0' NOT NULL,
  campeonato set('l','i') DEFAULT '' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,numero,partido_id),
  UNIQUE id_2 (id),
  KEY jugador_id (jugador_id)
);

#
# Dumping data for table 'titulares'
#

INSERT INTO titulares VALUES (1,0,13,1,'l');
INSERT INTO titulares VALUES (2,0,2,1,'l');
INSERT INTO titulares VALUES (3,0,3,1,'l');
INSERT INTO titulares VALUES (4,0,12,1,'l');
INSERT INTO titulares VALUES (5,0,21,1,'l');
INSERT INTO titulares VALUES (6,0,23,1,'l');
INSERT INTO titulares VALUES (7,0,24,1,'l');
INSERT INTO titulares VALUES (8,0,3,1,'l');
INSERT INTO titulares VALUES (9,0,7,1,'l');
INSERT INTO titulares VALUES (10,0,6,1,'l');
INSERT INTO titulares VALUES (11,0,15,1,'l');
INSERT INTO titulares VALUES (12,0,13,2,'l');
INSERT INTO titulares VALUES (13,0,2,2,'l');
INSERT INTO titulares VALUES (14,0,12,2,'l');
INSERT INTO titulares VALUES (15,0,10,2,'l');
INSERT INTO titulares VALUES (16,0,23,2,'l');
INSERT INTO titulares VALUES (17,0,21,2,'l');
INSERT INTO titulares VALUES (18,0,3,2,'l');
INSERT INTO titulares VALUES (19,0,7,2,'l');
INSERT INTO titulares VALUES (20,0,6,2,'l');
INSERT INTO titulares VALUES (21,0,15,2,'l');
INSERT INTO titulares VALUES (22,0,22,2,'l');
INSERT INTO titulares VALUES (23,0,13,3,'l');
INSERT INTO titulares VALUES (24,0,2,3,'l');
INSERT INTO titulares VALUES (25,0,4,3,'l');
INSERT INTO titulares VALUES (26,0,9,3,'l');
INSERT INTO titulares VALUES (27,0,23,3,'l');
INSERT INTO titulares VALUES (28,0,7,3,'l');
INSERT INTO titulares VALUES (29,0,3,3,'l');
INSERT INTO titulares VALUES (30,0,10,3,'l');
INSERT INTO titulares VALUES (31,0,15,3,'l');
INSERT INTO titulares VALUES (32,0,22,3,'l');
INSERT INTO titulares VALUES (33,0,24,3,'l');
INSERT INTO titulares VALUES (34,0,13,4,'l');
INSERT INTO titulares VALUES (35,0,2,4,'l');
INSERT INTO titulares VALUES (36,0,9,4,'l');
INSERT INTO titulares VALUES (37,0,10,4,'l');
INSERT INTO titulares VALUES (38,0,21,4,'l');
INSERT INTO titulares VALUES (39,0,23,4,'l');
INSERT INTO titulares VALUES (40,0,16,4,'l');
INSERT INTO titulares VALUES (41,0,24,4,'l');
INSERT INTO titulares VALUES (42,0,3,4,'l');
INSERT INTO titulares VALUES (43,0,7,4,'l');
INSERT INTO titulares VALUES (44,0,13,6,'l');
INSERT INTO titulares VALUES (45,0,2,6,'l');
INSERT INTO titulares VALUES (46,0,9,6,'l');
INSERT INTO titulares VALUES (47,0,4,6,'l');
INSERT INTO titulares VALUES (48,0,21,6,'l');
INSERT INTO titulares VALUES (49,0,23,6,'l');
INSERT INTO titulares VALUES (50,0,24,6,'l');
INSERT INTO titulares VALUES (51,0,16,6,'l');
INSERT INTO titulares VALUES (52,0,3,6,'l');
INSERT INTO titulares VALUES (53,0,7,6,'l');
INSERT INTO titulares VALUES (54,0,14,6,'l');
INSERT INTO titulares VALUES (56,0,6,4,'l');
INSERT INTO titulares VALUES (57,0,13,7,'l');
INSERT INTO titulares VALUES (58,0,2,7,'l');
INSERT INTO titulares VALUES (59,0,9,7,'l');
INSERT INTO titulares VALUES (60,0,4,7,'l');
INSERT INTO titulares VALUES (61,0,21,7,'l');
INSERT INTO titulares VALUES (62,0,16,7,'l');
INSERT INTO titulares VALUES (63,0,23,7,'l');
INSERT INTO titulares VALUES (64,0,3,7,'l');
INSERT INTO titulares VALUES (65,0,7,7,'l');
INSERT INTO titulares VALUES (66,0,22,7,'l');
INSERT INTO titulares VALUES (67,0,14,7,'l');
INSERT INTO titulares VALUES (68,0,13,8,'l');
INSERT INTO titulares VALUES (69,0,2,8,'l');
INSERT INTO titulares VALUES (70,0,4,8,'l');
INSERT INTO titulares VALUES (71,0,21,8,'l');
INSERT INTO titulares VALUES (72,0,9,8,'l');
INSERT INTO titulares VALUES (73,0,16,8,'l');
INSERT INTO titulares VALUES (74,0,22,8,'l');
INSERT INTO titulares VALUES (75,0,7,8,'l');
INSERT INTO titulares VALUES (76,0,3,8,'l');
INSERT INTO titulares VALUES (77,0,14,8,'l');
INSERT INTO titulares VALUES (78,0,23,8,'l');

#
# Table structure for table 'trayectoria'
#
CREATE TABLE trayectoria (
  id int(4) DEFAULT '0' NOT NULL auto_increment,
  anio varchar(4) DEFAULT '' NOT NULL,
  club varchar(32) DEFAULT '' NOT NULL,
  jugador_id int(4) DEFAULT '0' NOT NULL,
  KEY id (id),
  UNIQUE id_2 (id),
  KEY jugador_id (jugador_id)
);

#
# Dumping data for table 'trayectoria'
#

INSERT INTO trayectoria VALUES (1,'1980','Nacional',1);
INSERT INTO trayectoria VALUES (2,'1986','Defensor',1);
INSERT INTO trayectoria VALUES (3,'1988','Internacional Porto Alegre',1);
INSERT INTO trayectoria VALUES (4,'1990','Palmeiras',1);
INSERT INTO trayectoria VALUES (5,'1991','Figuerense',1);
INSERT INTO trayectoria VALUES (6,'1992','Defensor',1);
INSERT INTO trayectoria VALUES (7,'1994','Peñarol',1);
INSERT INTO trayectoria VALUES (8,'1993','Cerro Porteño',2);
INSERT INTO trayectoria VALUES (9,'1998','Peñarol',2);
INSERT INTO trayectoria VALUES (10,'1985','Wanderers',3);
INSERT INTO trayectoria VALUES (11,'1987','Sevilla',3);
INSERT INTO trayectoria VALUES (12,'1991','Gimnasia y Esgrima LP',3);
INSERT INTO trayectoria VALUES (13,'1992','Peñarol',3);
INSERT INTO trayectoria VALUES (14,'1996','Juan Zorrilla de San Martín',4);
INSERT INTO trayectoria VALUES (15,'1997','Peñarol',4);
INSERT INTO trayectoria VALUES (16,'1992','Peñarol',5);
INSERT INTO trayectoria VALUES (17,'1999','Frontera',5);
INSERT INTO trayectoria VALUES (18,'2000','Peñarol',5);
INSERT INTO trayectoria VALUES (19,'1997','Peñarol',6);
INSERT INTO trayectoria VALUES (20,'1988','Peñarol',7);
INSERT INTO trayectoria VALUES (21,'1993','Argentinos Jrs',7);
INSERT INTO trayectoria VALUES (22,'1994','River Plate',7);
INSERT INTO trayectoria VALUES (23,'1996','Boca Juniors',7);
INSERT INTO trayectoria VALUES (24,'1997','América (México)',7);
INSERT INTO trayectoria VALUES (25,'1998','Peñarol',7);
INSERT INTO trayectoria VALUES (26,'1993','Cerrito',8);
INSERT INTO trayectoria VALUES (27,'1996','Progreso',8);
INSERT INTO trayectoria VALUES (28,'1997','Liverpool',8);
INSERT INTO trayectoria VALUES (29,'2000','Peñarol',8);
INSERT INTO trayectoria VALUES (30,'1988','Peñarol',9);
INSERT INTO trayectoria VALUES (31,'1989','Wanderers',10);
INSERT INTO trayectoria VALUES (32,'1991','Platense (Arg.)',10);
INSERT INTO trayectoria VALUES (33,'1994','Racing (Arg.)',10);
INSERT INTO trayectoria VALUES (34,'1995','Peñarol',10);
INSERT INTO trayectoria VALUES (35,'1993','Peñarol',11);
INSERT INTO trayectoria VALUES (36,'1996','Peñarol',12);
INSERT INTO trayectoria VALUES (37,'1998','Quangxing (China)',12);
INSERT INTO trayectoria VALUES (38,'1999','Apolo (China)',12);
INSERT INTO trayectoria VALUES (39,'1999','Peñarol',12);
INSERT INTO trayectoria VALUES (40,'1994','18 de julio (Fray Bentos)',13);
INSERT INTO trayectoria VALUES (41,'1994','Peñarol',13);
INSERT INTO trayectoria VALUES (42,'1992','Peñarol',14);
INSERT INTO trayectoria VALUES (43,'1988','Peñarol',15);
INSERT INTO trayectoria VALUES (44,'1998','Villa Española',15);
INSERT INTO trayectoria VALUES (45,'1999','Bella Vista',15);
INSERT INTO trayectoria VALUES (46,'1996','Bella Vista',16);
INSERT INTO trayectoria VALUES (47,'2000','Peñarol',16);
INSERT INTO trayectoria VALUES (48,'1997','Peñarol',17);
INSERT INTO trayectoria VALUES (49,'1988','Sudamérica',18);
INSERT INTO trayectoria VALUES (50,'1994','Peñarol',18);
INSERT INTO trayectoria VALUES (51,'1998','Villa Española',18);
INSERT INTO trayectoria VALUES (52,'1998','Almagro (Arg.)',18);
INSERT INTO trayectoria VALUES (53,'1999','Liverpool',18);
INSERT INTO trayectoria VALUES (54,'2000','Peñarol',18);
INSERT INTO trayectoria VALUES (55,'1991','Peñarol',19);
INSERT INTO trayectoria VALUES (56,'1989','Peñarol',20);
INSERT INTO trayectoria VALUES (57,'1993','I.A.Sudamérica',21);
INSERT INTO trayectoria VALUES (58,'1995','Toluca (Méx.)',21);
INSERT INTO trayectoria VALUES (59,'1997','Bella Vista',21);
INSERT INTO trayectoria VALUES (60,'1999','Peñarol',21);
INSERT INTO trayectoria VALUES (61,'1989','Peñarol',22);
INSERT INTO trayectoria VALUES (62,'1987','Defensor',23);
INSERT INTO trayectoria VALUES (63,'1996','Peñarol',23);
INSERT INTO trayectoria VALUES (64,'1989','Peñarol',24);
INSERT INTO trayectoria VALUES (65,'1997','Bella Vista',25);
INSERT INTO trayectoria VALUES (66,'2000','Peñarol',25);
INSERT INTO trayectoria VALUES (67,'','Peñarol',26);
INSERT INTO trayectoria VALUES (68,'','Defensor',26);
INSERT INTO trayectoria VALUES (69,'','Bella Vista',26);
INSERT INTO trayectoria VALUES (70,'','Olimpia',26);
INSERT INTO trayectoria VALUES (71,'','Paysandú',26);
INSERT INTO trayectoria VALUES (72,'2000','Peñarol',26);
INSERT INTO trayectoria VALUES (73,'','Club Artigas (Cerro Largo)',27);
INSERT INTO trayectoria VALUES (74,'2000','Peñarol',27);

#
# Table structure for table 'usuarios'
#
CREATE TABLE usuarios (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  usuario varchar(8) DEFAULT '' NOT NULL,
  nombre varchar(32) DEFAULT '' NOT NULL,
  apellido varchar(32) DEFAULT '' NOT NULL,
  password varchar(8) DEFAULT '' NOT NULL,
  pregunta varchar(32) DEFAULT '' NOT NULL,
  dia tinyint(2) DEFAULT '0' NOT NULL,
  mes tinyint(2) DEFAULT '0' NOT NULL,
  anio tinyint(4) DEFAULT '0' NOT NULL,
  sexo set('m','f') DEFAULT 'm' NOT NULL,
  ciudad varchar(32) DEFAULT '' NOT NULL,
  pais varchar(32) DEFAULT '' NOT NULL,
  checkmail set('0','1') DEFAULT '0' NOT NULL,
  direccion varchar(32) DEFAULT '' NOT NULL,
  cp tinyint(4) DEFAULT '0' NOT NULL,
  telefono varchar(32) DEFAULT '' NOT NULL,
  localidad varchar(32) DEFAULT '0' NOT NULL,
  ocupacion varchar(32) DEFAULT '' NOT NULL,
  conexion varchar(32) DEFAULT '' NOT NULL,
  uso varchar(8) DEFAULT '' NOT NULL,
  idioma varchar(32) DEFAULT '' NOT NULL,
  npenarol set('0','1') DEFAULT '0' NOT NULL,
  nsportsya set('0','1') DEFAULT '0' NOT NULL,
  nterceros set('0','1') DEFAULT '0' NOT NULL,
  mail varchar(64) DEFAULT '' NOT NULL,
  compras set('0','1') DEFAULT '0' NOT NULL,
  credito set('0','1') DEFAULT '0' NOT NULL,
  encuestas set('0','1') DEFAULT '0' NOT NULL,
  PRIMARY KEY (id),
  UNIQUE id (id),
  KEY id_2 (id),
  KEY usuario (usuario),
  UNIQUE usuario_2 (usuario)
);

#
# Dumping data for table 'usuarios'
#

INSERT INTO usuarios VALUES (1,'wqwqw','','qwqwqw','qwqwqw','wqwqw',7,10,127,'f','wqwqwqw','382','1','wqwqw',0,'qwqwq','wwqqwwqqw','3','2','2','2','1','1','1','','0','0','0');
INSERT INTO usuarios VALUES (2,'fgbdb','fgbdf','bfgbfgdb','fbfgb','bfbbb',8,10,127,'m','dbgbfgfd','387','1','dbfbgfb',0,'bfbb','bbb','2','2','2','2','1','1','1','','0','0','0');
INSERT INTO usuarios VALUES (3,'a','a','a','','',0,0,127,'','a','15','','a',0,'a','a','2','','','1','','1','','','0','0','0');
INSERT INTO usuarios VALUES (4,'','','','','',0,0,127,'','','16','','',0,'','','1','','','1','','','','','0','0','0');
INSERT INTO usuarios VALUES (5,'lpapa','','','','',1,1,127,'','','uruguay','','',0,'','','profesional','casa','','1','','','','','0','0','0');
INSERT INTO usuarios VALUES (6,'lpapas','l','','','',7,1,127,'','','uruguay','','',0,'','','profesional','casa','','1','','','','','0','0','0');
INSERT INTO usuarios VALUES (7,'lpapass','ll','pp','','',5,5,127,'','','uruguay','','',0,'','','profesional','casa','','1','','','','','0','0','0');
INSERT INTO usuarios VALUES (8,'lpapax','ll','pp','','',5,5,127,'','','uruguay','','',0,'','','profesional','casa','','1','','','','','0','0','0');
INSERT INTO usuarios VALUES (9,'lpapaxx','ll','pp','','',5,5,127,'','','uruguay','','',0,'','','profesional','casa','','1','','','','','0','0','0');
INSERT INTO usuarios VALUES (10,'lpapaxxx','ll','pp','','',5,5,127,'','','uruguay','','',0,'','','profesional','casa','','1','','','','','0','0','0');
INSERT INTO usuarios VALUES (11,'leox','ll','pp','','',5,5,127,'','','uruguay','','',0,'','','profesional','casa','','1','','','','','0','0','0');
INSERT INTO usuarios VALUES (12,'q','q','q','w','',5,1,127,'','','uruguay','','',0,'','','profesional','casa','','1','','','','','0','0','0');
INSERT INTO usuarios VALUES (13,'rama','hernan','rami','26500','',3,5,127,'m','San Carlos','uruguay','','Atalaya 2546',127,'46105486','maldonado','profesional','casa','','1','1','','','','1','0','1');
INSERT INTO usuarios VALUES (14,'crabriza','Leonardo','Spiteler','2718376','',26,9,127,'','','uruguay','','Av.Rivera 2887',127,'7091531','Montevideo','profesional','casa','','1','1','','1','','1','1','1');
INSERT INTO usuarios VALUES (15,'her','Hernan','Príncipe','her','',9,5,127,'m','Positos','uruguay','','',0,'','','profesional','casa','','1','','','','','0','0','0');
INSERT INTO usuarios VALUES (16,'Danny','Danny','Rios','satellit','',26,8,127,'m','Montevideo','uruguay','','Cno. CArrasco 4680',127,'522 33 09','Montevideo','estudiante','trabajo','','3','1','','','drios@uol.com.uy','0','0','1');
INSERT INTO usuarios VALUES (17,'Elmario','Mario','Dalla Rosa','manyun','',27,9,127,'m','Montevideo','uruguay','','',0,'','','profesional','casa','','1','','','','','0','0','0');
INSERT INTO usuarios VALUES (18,'graciela','Graciela','Sarli','coman','',20,4,127,'f','Montevideo','uruguay','','',0,'','','profesional','casa','','1','','','','graciela@uol.com.uy','0','0','0');

