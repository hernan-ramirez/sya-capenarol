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

INSERT INTO arbitros VALUES (1,'Sa�l Feldman. L�neas: Jorge Galati y Carlos Pastorino',1);
INSERT INTO arbitros VALUES (2,'Gustavo M�ndez. L�neas: Carlos L�pez y Adri�n Climent.',2);
INSERT INTO arbitros VALUES (3,'Jorge Larrionda. L�neas: Marcelo Costa y Edgardo Acosta.',3);
INSERT INTO arbitros VALUES (4,'Mart�n V�zquez. L�neas: Fernando Cresci y Mauricio Espinosa.',4);
INSERT INTO arbitros VALUES (5,'Jorge Larrionda. L�neas: Ruben Meneses y Alvaro Sacarello.',5);

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

INSERT INTO entrevistas VALUES (1,'Campa�a del Bronce','En s�lo diez d�as de iniciada  la campa�a del bronce para perpetuar a nuestro capit�n Pablo Javier Bengoechea y m�s de mil personas ya hab�an concurrido al palacio �Cr.Gast�n Guelfi� con su aporte.<br>\r\n\r\nCausa singular emoci�n ver que todas las generaciones han estado ya representadas en los hinchas aurinegros, desde los ni�os peque�os que vienen cargando su bronce hasta los veteranos que, con piezas de todo tipo, no dejan pasar la oportunidad de quedar en la historia como colaboradores de tan importante obra. <br>\r\n\r\nPor otra parte cabe destacar que no s�lo Montevideo est� participando de la campa�a sino que ya han venido pe�arolenses del interior del pa�s exclusivamente a traer sus donaciones y en algunos lugares ya se han formado campa�as para recibirlo y luego enviarlo. <br>\r\n\r\nTodos quienes concurren se llevan un certificado que avala que han sido colaboradores en la campa�a del bronce para Pablo Javier Bengoechea. <p>\r\nPr�ximamente se llamar� a concurso de artistas pe�arolenses, con el fin de que se expongan todas las obras que puedan perpetuar para siempre al capit�n. <br>\r\n\r\nLa prof. Martha Canessa de Sanguinetti ser� quien tendr� a su cargo, junto a otros destacados artistas, el llamado a concurso. <br>\r\n\r\nEl sentimiento aurinegro ha quedado una vez m�s de  manifiesto. El capit�n de Pe�arol es  �dolo, s�mbolo y fiel representante de lo que los hinchas quieren de sus futbolistas,  s�lo por eso es que ya est� en marcha la campa�a del bronce en su honor. Para perpetuar al �dolo, al capit�n , o simplemente Pablo para quienes le queremos y respetamos.   <br><br>\r\n                                           \r\n<b>Mar�a Jos� Ria�o</b>','entrevista.jpg','entrevista_grande.jpg',970087156,1);

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

INSERT INTO jugadores VALUES (1,'Oscar','Aguirregaray','Artigas, Uruguay','1953-05-25','A pr�stamo','Zaguero','1.80 mts','80 kg');
INSERT INTO jugadores VALUES (2,'Luciano','Barbosa','R�o de Janeiro, Brasil','1972-05-25','Del Club','Zaguero','1.82 mts.','74kg.');
INSERT INTO jugadores VALUES (3,'Pablo','Bengoechea','Rivera, Uruguay','1965-06-27','Del Club','Mediocampista','1.74 mts.','75 kg.');
INSERT INTO jugadores VALUES (4,'Joe','Bizera','Departamento de Artigas, Uruguay','1980-05-17','Del Club','Zaguero','1.85 mts.','81 kg.');
INSERT INTO jugadores VALUES (5,'Daniel','Borjas','Migues, Canelones, Uruguay','1974-08-08','Del Club','Mediocampista','1.75 mts.','73 kg.');
INSERT INTO jugadores VALUES (6,'Carlos','Bueno','Departamento de Artigas, Uruguay','1980-05-10','Del Club','Delantero','1.83 mts.','68 kg.');
INSERT INTO jugadores VALUES (7,'N�stor','Cedr�s','Lavalleja, Uruguay','1970-03-03','A pr�stamo','Mediocampista','1.81 mts.','89 kg.');
INSERT INTO jugadores VALUES (8,'Fabi�n','Cesaro','Buenos Aires, Argentina','1973-05-07','Del Club','Volante','1.84 mts.','85 kg.');
INSERT INTO jugadores VALUES (9,'Jos�','de los Santos','Salto, Uruguay','1968-10-16','Del Club','Zaguero - Mediocampo','1.83 mts.','80 kg.');
INSERT INTO jugadores VALUES (10,'Marcelo','De Souza','Montevideo, Uruguay','1975-09-30','Del Club','Volante - Zaguero','1.84 mts.','87 kg.');
INSERT INTO jugadores VALUES (11,'Luis','de Agustini','Montevideo, Uruguay','1976-04-05','Del Club','Arquero','1.86 mts.','80 kg.');
INSERT INTO jugadores VALUES (12,'Enrique','De Los Santos','Montevideo, Uruguay','1976-02-26','Del Club','Zaguero','1.82 mts.','77 kg.');
INSERT INTO jugadores VALUES (13,'Federico','Elduayen','Fray Bentos , Uruguay','1977-06-25','Del Club','Arquero','1.83 mts.','80 kg.');
INSERT INTO jugadores VALUES (14,'Jos�','Franco','Montevideo, Uruguay','1978-09-28','Del club','Delantero','1.86 mts.','81 kg.');
INSERT INTO jugadores VALUES (15,'Mart�n','Garc�a','Canelones, Uruguay','1976-03-26','Del Club','Volante','1.80 mts.','80 kg.');
INSERT INTO jugadores VALUES (16,'Guillermo','Giacomazzi','Montevideo, Uruguay','1977-11-21','Del Club','Volante','1.85 mts.','79,5 kg');
INSERT INTO jugadores VALUES (17,'Mario','Leguizam�n','Montevideo, Uruguay','1982-07-07','Del Club','Delantero','1.78 mts.','75 kg.');
INSERT INTO jugadores VALUES (18,'Sergio','Mart�nez','Montevideo, Uruguay','1974-10-13','Del Club','Arquero','1.82 mts.','81 kg.');
INSERT INTO jugadores VALUES (19,'Nelson','Olveira','Tacuaremb�, Uruguay','1974-06-16','Del Club','Zaguero','1.80 mts.','79.5 kg.');
INSERT INTO jugadores VALUES (20,'Antonio','Pacheco','Cerro Largo, Uruguay','1976-04-11','Del Club','Delantero','1.73 mts.','74 kg.');
INSERT INTO jugadores VALUES (21,'Dar�o','Rodr�guez','Montevideo, Uruguay','1974-09-17','A pr�stamo','Zaguero','1,84 mts.','85 kg.');
INSERT INTO jugadores VALUES (22,'Luis','Romero','Montevideo, Uruguay','1975-06-15','Del Club','Delantero','1,79 mts.','78 kg.');
INSERT INTO jugadores VALUES (23,'Marcelo','Romero','Montevideo, Uruguay','1976-04-07','Del Club','Volante','1.75 mts.','73 kg.');
INSERT INTO jugadores VALUES (24,'Nicol�s','Rotundo','Montevideo, Uruguay','1976-06-06','Del Club','Volante','1.80 mts.','82 kg.');
INSERT INTO jugadores VALUES (25,'Adri�n','Berbia','Montevideo, Uruguay','1977-10-12','A pr�stamo','Arquero','1.94 mts.','85 kg.');
INSERT INTO jugadores VALUES (26,'Rub�n','Dos Santos','Montevideo, Uruguay','1969-11-16','A pr�stamo','Zaguero','1.78 mts.','77 kg.');
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

INSERT INTO jugadoresr VALUES (1,0,'Carlos D�az',8);
INSERT INTO jugadoresr VALUES (2,0,'Nicol�s Gonz�lez',8);
INSERT INTO jugadoresr VALUES (3,0,'Pablo Forl�n',8);
INSERT INTO jugadoresr VALUES (4,0,'Jes�s Berta',8);
INSERT INTO jugadoresr VALUES (5,0,'Pablo Pallante',8);
INSERT INTO jugadoresr VALUES (6,0,'Germ�n Laluz',8);
INSERT INTO jugadoresr VALUES (7,0,'Gabriel Candia',8);
INSERT INTO jugadoresr VALUES (8,0,'Maximiliano Castro',8);
INSERT INTO jugadoresr VALUES (9,0,'Christian Alfaro',8);
INSERT INTO jugadoresr VALUES (10,0,'Carlos M�rcora',8);
INSERT INTO jugadoresr VALUES (11,0,'Edicarlos Da Silva',8);
INSERT INTO jugadoresr VALUES (12,0,'F�lix Hern�ndez',0);
INSERT INTO jugadoresr VALUES (13,0,'Mart�n Gonz�lez',0);
INSERT INTO jugadoresr VALUES (14,0,'�lvaro Escames',7);
INSERT INTO jugadoresr VALUES (15,0,'Danilo Rivero',7);
INSERT INTO jugadoresr VALUES (16,0,'Fab�an Pumar',7);
INSERT INTO jugadoresr VALUES (17,0,'Leonardo Rodr�guez',7);
INSERT INTO jugadoresr VALUES (18,0,'Juan Mor�n',7);
INSERT INTO jugadoresr VALUES (19,0,'Gonzalo Romero',7);
INSERT INTO jugadoresr VALUES (20,0,'Diego Meijide',7);
INSERT INTO jugadoresr VALUES (21,0,'Rodrigo Lemos',7);
INSERT INTO jugadoresr VALUES (22,0,'Luis Gamarra',7);
INSERT INTO jugadoresr VALUES (23,0,'Diego Emanuele',7);
INSERT INTO jugadoresr VALUES (24,0,'�lvaro Gonz�lez',7);
INSERT INTO jugadoresr VALUES (25,0,'Henry B�ez',0);
INSERT INTO jugadoresr VALUES (26,0,'Marcelo Gonz�lez',0);
INSERT INTO jugadoresr VALUES (27,0,'Adr�an Paz',0);
INSERT INTO jugadoresr VALUES (28,0,'Carlos Aires',1);
INSERT INTO jugadoresr VALUES (29,0,'Adri�n Romero',1);
INSERT INTO jugadoresr VALUES (30,0,'Fabi�n Avero',1);
INSERT INTO jugadoresr VALUES (31,0,'Pablo Melo',1);
INSERT INTO jugadoresr VALUES (32,0,'Guillermo Ubi�a',1);
INSERT INTO jugadoresr VALUES (33,0,'Germ�n P�rez',1);
INSERT INTO jugadoresr VALUES (34,0,'Richard Pellejero',1);
INSERT INTO jugadoresr VALUES (35,0,'Jorge Artigas',1);
INSERT INTO jugadoresr VALUES (36,0,'Mart�n Liguera',1);
INSERT INTO jugadoresr VALUES (37,0,'Alberto Ortega',1);
INSERT INTO jugadoresr VALUES (38,0,'�lvaro Pintos',1);
INSERT INTO jugadoresr VALUES (39,0,'Washington Alonso',0);
INSERT INTO jugadoresr VALUES (40,0,'Hern�n Pintos',0);
INSERT INTO jugadoresr VALUES (41,0,'Alejandro Loffiego',0);
INSERT INTO jugadoresr VALUES (42,0,'Darling Gayol',2);
INSERT INTO jugadoresr VALUES (43,0,'Matias Gonz�lez',2);
INSERT INTO jugadoresr VALUES (44,0,'Enrique Saravia',2);
INSERT INTO jugadoresr VALUES (45,0,'�ngelo Lamanna',2);
INSERT INTO jugadoresr VALUES (46,0,'H�ctor M�ndez',2);
INSERT INTO jugadoresr VALUES (47,0,'Mario Carballo',2);
INSERT INTO jugadoresr VALUES (48,0,'Edison Su�rez',2);
INSERT INTO jugadoresr VALUES (49,0,'Juan R. Carrasco',2);
INSERT INTO jugadoresr VALUES (50,0,'Enrique Ferraro',2);
INSERT INTO jugadoresr VALUES (51,0,'Jairo Rosa',2);
INSERT INTO jugadoresr VALUES (52,0,'C�sar Olivera',0);
INSERT INTO jugadoresr VALUES (53,0,'N�stor Rosa',0);
INSERT INTO jugadoresr VALUES (54,0,'Luis Mauregui',0);
INSERT INTO jugadoresr VALUES (55,0,'Luis A. Muniz',2);
INSERT INTO jugadoresr VALUES (56,0,'Fernando Baleato',6);
INSERT INTO jugadoresr VALUES (57,0,'Carlos D�az',6);
INSERT INTO jugadoresr VALUES (58,0,'Christian Gonz�lez',6);
INSERT INTO jugadoresr VALUES (59,0,'Pablo Hern�ndez',6);
INSERT INTO jugadoresr VALUES (60,0,'Alejandro Traversa',6);
INSERT INTO jugadoresr VALUES (61,0,'Fernando Fadeuille',6);
INSERT INTO jugadoresr VALUES (62,0,'Diego P�rez',6);
INSERT INTO jugadoresr VALUES (63,0,'Marcelo Tejera',6);
INSERT INTO jugadoresr VALUES (64,0,'Federico Magallanes',6);
INSERT INTO jugadoresr VALUES (65,0,'Eliomar',6);
INSERT INTO jugadoresr VALUES (66,0,'Heberley Sosa',6);
INSERT INTO jugadoresr VALUES (67,0,'Gustavo D�az',0);
INSERT INTO jugadoresr VALUES (68,0,'Roberto Bobadilla',0);
INSERT INTO jugadoresr VALUES (69,0,'Walter Escobar',0);
INSERT INTO jugadoresr VALUES (70,0,'Jorge Ser�',4);
INSERT INTO jugadoresr VALUES (71,0,'Fernando Marrero',4);
INSERT INTO jugadoresr VALUES (72,0,'Leonardo Sum',4);
INSERT INTO jugadoresr VALUES (73,0,'Alejandro Bertoldi',4);
INSERT INTO jugadoresr VALUES (74,0,'Mart�n Otero',4);
INSERT INTO jugadoresr VALUES (75,0,'Elbio Tolosa',4);
INSERT INTO jugadoresr VALUES (76,0,'V�ctor Pacheco',4);
INSERT INTO jugadoresr VALUES (77,0,'Gustavo Da Silva',4);
INSERT INTO jugadoresr VALUES (78,0,'Daniel Pereira',4);
INSERT INTO jugadoresr VALUES (79,0,'Fabricio Cetraro',4);
INSERT INTO jugadoresr VALUES (80,0,'Oscar Garrasino',4);
INSERT INTO jugadoresr VALUES (81,0,'Carlos Garc�a',0);
INSERT INTO jugadoresr VALUES (82,0,'Pablo Rivero',0);
INSERT INTO jugadoresr VALUES (83,0,'Edgardo Simovic',0);
INSERT INTO jugadoresr VALUES (84,0,'Ignacio Bordad',3);
INSERT INTO jugadoresr VALUES (85,0,'M�ximo Lucas',3);
INSERT INTO jugadoresr VALUES (86,0,'Walt B�ez',3);
INSERT INTO jugadoresr VALUES (87,0,'Bruno Piano',3);
INSERT INTO jugadoresr VALUES (88,0,'Jorge Anch�n',3);
INSERT INTO jugadoresr VALUES (89,0,'Marcelo Sosa',3);
INSERT INTO jugadoresr VALUES (90,0,'Omar Pouso',3);
INSERT INTO jugadoresr VALUES (91,0,'Christian Callejas',3);
INSERT INTO jugadoresr VALUES (92,0,'Richard Nu�ez',3);
INSERT INTO jugadoresr VALUES (93,0,'Javier Chevant�n',3);
INSERT INTO jugadoresr VALUES (94,0,'Ignacio Risso',3);
INSERT INTO jugadoresr VALUES (95,0,'Diego Perrone',0);
INSERT INTO jugadoresr VALUES (96,0,'Mart�n Ojeda',0);

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

INSERT INTO lafrase VALUES (3,'JOS� PEDRO DAMIANI','Hablan de transparencia y cristalinidad y siempre digo que los que hablan de cristalinidad deben saber que el que vive en casa de vidrio no puede jugar a las pedradas.','1');
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

INSERT INTO noticias VALUES (1,'Gabriel Cedr�s siente igual que a los 18 a�os.','Es uno de los nombres que provoca mayores comentarios. Porque lo piden para el plantel o porque lo ubican en el equipo titular, lo cierto es que todos hablan de N�stor Gabriel Cedr�s.<p>\r\n�C�mo est�s? <br>\r\n- Contento de estar ac� de vuelta y bueno, listo para aportar lo que pueda para la Selecci�n. <br><br>\r\n�Con qu� expectativa llega Cedr�s al plantel? <br>\r\n- Con la misma de siempre, con la que trae cada jugador uruguayo cuando lo citan para la Selecci�n. Con las ganas enormes de que las cosas salgan bien, de tratar de aportar lo mejor para que Uruguay pueda estar en un Mundial, en una palabra, las mismas que cuando ten�a 18 a�os y debut� en Pe�arol, ya en ese momento so�aba con ponerme la celeste. <br><br>\r\nSereno. Reflexivo a la hora de responder. Sin poses. El \"Gaby\" es siempre igual. <br><br>\r\nEl momento deportivo de Cedr�s, �puede catalogarse de muy bueno? <br>\r\n- S�... en general, de mi vida, yo lo englobo todo. Es que creo mucho en eso, en que no podemos separar lo deportivo de lo afectivo de lo sicol�gico, todo lo que rodea tu vida personal. Y en ese sentido me siento muy bien, estoy muy feliz en todos esos momentos. <br><br>\r\nO sea entonces que el amor, la felicidad, la estabilidad en el propio pa�s �son algunos de los ingredientes que ayudan al excelente rendimiento de Cedr�s? <br>\r\n- S�, seguro... igual no te garantizan nada tampoco a nivel de resultado, pero seguramente que viviendo as� ten�s m�s libertad para expresarte en la cancha y estando bien de arriba todo funciona mejor. <br><br>\r\nEl momento actual de la Selecci�n respecto a la Eliminatoria �es cr�tico? <br>\r\n- No, creo que mirando bien, lo �nico lamentable que tuvo esta Selecci�n son los dos puntos que se perdieron ac�. Yo creo que, salvo eso, ser�a una Eliminatoria b�rbara, empatamos con Brasil all� y los partidos que perdimos de visita uno sabe que normalmente son dif�ciles, Paraguay, Colombia. <br><br>\r\n�Qu� hay que tener para ganar a Ecuador? <br>\r\n- Tranquilidad, sin ninguna duda tranquilidad, serenidad. Tenemos que tratar de jugar como contra Per� pero con la diferencia que debemos convertir un gol, fijate que en aquel partido con un gol hubiera cambiado todo e incluso est�bamos un poco m�s arriba en la tabla, con otro panorama, pero bueno, la realidad es otra y hay que afrontarla. <br><br>\r\nUno de los hombres en los que Passarella siempre confi� est� de vuelta con la celeste. Es que el t�cnico lo conoce por haberlo dirigido en el River argentino. N�stor Gabriel Cedr�s est� otra vez con la celeste. <br><br>','cedres1.jpg','cedres_2.jpg',970160378,1);
INSERT INTO noticias VALUES (2,'<b>Informaci�n Institucional</b>','Por medio de una iniciativa surgida en la audici�n oficial \"Pe�arol Verdad\" la cual fue recogida por el Presidente Cr.Jos� Pedro Damiani\" y el Pro-Secretario General Jos� Carlos Dom�nguez, el Capit�n de Pe�arol Pablo Javier Bengoechea tendr� muy pronto una obra que representr� su figura, realizada en bronce con el aporte de todos los pe�arolenses.<br><br>\r\n\r\nSeguramente en estos d�as ya podremos informar de que forma se estructar� todo esto que seg�n ya adelanto el Presidente Damiani  en los microfonos de CX 10 Radio Continente , se le entregar� a todos aquello que concurran con el bronce un certificado como como contribuyente para perpetuar a Pablo Bengoechea.<br><br>\r\n\r\nEs importante informar que el pr�ximo lunes ser� recibida por el Consejo Directivo de la Instituci�n, la ex primera dama del pa�s y socia vitalicia de Pe�arol Prof. Marta Canessa qui�n tendr� a su cargo el llamado a concurso de artistas nacionales y extranjeros para realizar la mencionada obra.','bengoechea_ch.jpg','bengoechea_gr.jpg',969478862,0);
INSERT INTO noticias VALUES (3,'Pe�arol - Deportivo Maldonado','\"No importa en qu� cancha juguemos...\" dice un canto que muchas veces sentimos cuando juega Pe�arol y que hace referencia a la consecuencia de una hinchada sin igual que acompa�a en las buenas y en las malas, donde quiera que jueguen los colores oro y negro. Por eso el viernes en Maldonado, vimos con emoci�n c�mo la gente de Pe�arol se hizo presente llegando al Campus, a pesar de ser una noche fr�a y de un d�a laboral, en autos y �mnibus, no s�lo provenientes de la Capital sino de varios lugares del pa�s. Los aurinegros alentaron a su Pe�arol desde todas las tribunas, en un partido que resultaba importante para los intereses del equipo en un torneo corto y tan parejo como el Clausura. Los ni�os con sus gorritos, los mayores con sus bufandas y las banderas que tapizaron de amarillo y negro todo Maldonado, demostraron una vez m�s que el equipo del pueblo, el m�s popular de todos, jugaba esa noche all�.','cedres.jpg','logo_penarol_gr.jpg',970087493,3);
INSERT INTO noticias VALUES (4,'De Lima fue clave para ganar el Quinquenio','(por Fernando Menck de Pe�arol Verdad)<br><br>\r\n\r\n\"Los hinchas de Pe�arol todav�a me lo agradecen\"\r\n\r\nTodo el grupo que gan� el famoso Quinquenio 93-97 aport� lo suyo para lograrlo, pero entre ellos lo del floridense Juan Carlos De Lima fue superlativo. Convirti�ndole goles claves a Cerro y al tradicional rival para darnos una alegr�a que hoy todav�a recordamos. Ahora, que anunci� su retiro definitivo del f�tbol, habl� largo y tendido con Pe�arol Verdad.<br><br>\r\n\r\nCon 38 a�os cumplidos, muchos goles en su haber y la pinta de siempre, el goleador floridense recibi� a Pe�arol Verdad c�modamente instalado en El Prado, en la calle Francisco Miranda, donde vive con su se�ora Carmen y sus dos hijos (Juan Marcelo, de 15 a�os) y Ximena (12). Cuando le preguntamos si Juan sale al padre, nos dice. \"El estudia, est� haciendo cuarto de liceo y dicen que le pega muy bien. Juega en su colegio, en Nuestra Se�ora del L�bano\".<br><br>\r\n\r\n-<b>�Hace ya cu�nto que De Lima no viste oficialmente la camiseta de Pe�arol?</b><br><br>\r\n\r\n-El �ltimo partido que jugu� fue el 8 de diciembre del a�o pasado. No me olvido m�s. Fue contra el Flamengo en el Centenario, aquel partido del l�o.<br><br>\r\n\r\nFue una oportunidad muy linda la que Ribas me dio porque ven�amos de perder en R�o de Janeiro 3 a 0 y ten�amos que tratar de remontar en Montevideo ese tanteador tan adverso para ver si, por lo menos, �bamos a penales. <br><br>\r\n\r\n-<b>Un desaf�o tremendo, me imagino...</b><br><br>\r\n\r\n-Ni hablar que cuando Ribas me dijo que iba a ser titular, me mor�a de ganas por jugar y responderle. Pero lamentablemente las cosas no se dieron como hubi�ramos querido. Me acuerdo que arrancamos perdiendo y las cosas se complicaron. Fue una l�stima porque ten�amos muchas esperanzas en esa Copa. Ojal� que se d� ahora... <br><br>\r\n\r\n-<b>�Y cu�l fue la lesi�n que ahora te decidi� a decirle definitivamente adi�s al f�tbol?</b><br><br>\r\n\r\n-Tuve rotura del tend�n de Aquiles, pero la recuperaci�n la hice perfectamente con la ayuda del doctor Alfredo Rienzi. De aquella operaci�n que me practicaron te puedo decir que qued� en forma notable. Despu�s, lo que ocurri� fue que pr�cticamente estuve como 5 meses para empezar a volver a correr, despacito, y a los 7 meses de la intervenci�n tuve el alta para jugar. �Qu� pas�? Y pas� que de ah� en adelante para poder ponerme bien f�sicamente me llev� un tiempo largo, mes y medio aproximadamente, y finalizaba el a�o. Se iba todo el 2000, ve�a que iba a perder todo el a�o y yo, para jugar, quiero estar 10 puntos f�sicamente. Si no, no se puede...Y me iba a costar ponerme a punto nuevamente en ese aspecto, por lo que decid� retirarme.<br><br>\r\n\r\n\"SE TE HACE CUESTA ARRIBA\"\r\n\r\n-<b>�C�mo que ve�as que no estabas para arrancar el 2001 de nuevo realizando trabajos especiales de recuperaci�n para ponerte a punto?</b><br><br>\r\n\r\n-Se hace dif�cil, sin duda, pero no es imposible. Lo que pasa es que cuantos m�s a�os ten�s, recuperarte de una lesi�n tan grave como la que tuve cuesta much�simo m�s. Pero si hubiera querido, capaz que lo sacaba adelante, pero la idea del retiro, ya la ven�a manejando desde algunos a�os.<br><br>\r\n\r\n-<b>Como que alg�n d�a, De Lima le iba a tener que decir adi�s al f�tbol... </b><br><br>\r\n\r\n-Claro, pienso que este era el momento m�s adecuado. �Si me result� dif�cil decir adi�s? �Y c�mo no te va a costar! No es una decisi�n nada f�cil de tomar. Pero hay que ser realista y saber retirarse en el momento justo.<br><br>','escudo.jpg','logo_penarol_gr.jpg',969478465,0);
INSERT INTO noticias VALUES (5,'Pe�arol Verdad','El 1� de septiembre de 2000 se cumplieron tres a�os en el aire de �Pe�arol Verdad�, audici�n oficial del Consejo Directivo del Club A. Pe�arol. El hecho de que una instituci�n tenga una audici�n oficial, con la palabra diaria del presidente Jos� Pedro Damiani en  comunicaci�n constante con la gente y conducida por Jos� Carlos Dom�nguez, ha sido un caso in�dito en el mundo, que hoy se mantiene tan vigente como al principio. Cuenta con informaci�n, comentarios y opini�n en la participaci�n de los dirigentes, entrenadores y futbolistas del club, como as� tambi�n la opini�n de los socios y parciales. <br><br>\r\n�Pe�arol Verdad� naci� el 1� de septiembre de 1997 ante la proscripci�n, por parte del C�rculo de Periodistas Deportivos del Uruguay y de todos los medios de comunicaci�n vinculados al deporte, del presidente Cr. Jos� Pedro Damiani,. Quisieron acallar la voz del presidente y por lo tanto la voz de Pe�arol; esto que motiv� que consejeros, cuerpo t�cnico, futbolistas y funcionarios de la instituci�n se solidarizaran con el presidente Damiani. As� naci� �Pe�arol Verdad�, por un acto de uni�n y sentimiento, con la colaboraci�n de cada sector de Pe�arol, incluidos los socios. As� naci� lo que denominamos �Todos Juntos� y que posteriormente nos diera la fuerza para conseguir el segundo quinquenio de oro. Hoy �Pe�arol Verdad�, como desde hace tres a�os, se emite de lunes a viernes de 11:00 a 13:00 hs. en los micr�fonos de CX 10- Radio Continente; con un resumen semanal, los s�bados de 11:00 a 12:00 hs. <br><br>\r\nAgradecemos a todos aquellos periodistas que, desafiando la posici�n del C�rculo y en defensa de los derechos de informaci�n, apoyaron a �Pe�arol Verdad�.<br>\r\n','f4.jpg','logo_penarol_gr.jpg',970087590,2);
INSERT INTO noticias VALUES (6,'Informaci�n Institucional','Juan Carlos De Lima, futbolista aurinegro que se ganara un lugar en el coraz�n de todos los pe�arolenses por su gran aporte para conseguir el segundo quinquenio de oro, fue recibido este lunes por el Consejo Directivo de la Instituci�n para ser homenajeado tras tomar la decisi�n de abandonar la pr�ctica activa del f�tbol. <br><br>\r\nEl Presidente Cr. Jos� Pedro Damiani, junto al Consejo Directivo, le entregaron a De Lima un obsequio que representa el agradecimiento y el cari�o de todo Pe�arol para un hombre que, con la humildad como caracter�stica principal de su personalidad y sus dotes de goleador nato, qued� en la historia aurinegra tras brindarle al club resultados muy importantes que permitieran, en 1997, conseguir el quinto t�tulo consecutivo de Campe�n y ser nuevamente Campe�n Uruguayo en 1999. <br><br>\r\nDe forma muy emotiva concluy� la reuni�n; dejando en claro en ella que las puertas han quedado para siempre abiertas, por ser un sentimiento mutuo de cari�o y respeto entre la hinchada y un hombre que, con su entrega y su don de buena gente, se lo gan�. <br><br>\r\n','escudo.jpg','logo_penarol_gr.jpg',970158196,4);

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

INSERT INTO noticias_juveniles VALUES (1,'Juveniles','Sebasti�n �lvarez','Las divisiones juveniles de Pe�arol han hecho un muy buen trabajo en lo que va del a�o. Cabe destacar que en lo que refiere a cuarta y quinta divisi�n, el cuerpo t�cnico encabezado por Mario Saralegui, comenz� a trabajar con estas divisionales a comienzo de temporada, lo que les demand� un per�odo de adaptaci�n y tambi�n un tiempo de evaluaci�n de los planteles en cuanto al conocimiento de los valores con los que se contaba y aquellos que se incorporaban desde el interior del pa�s.\r\n\r\nPor otra parte, sexta y s�ptima divisi�n, dirigidas por Daniel Mart�nez, tuvieron tambi�n su espacio de tiempo en el que se conform� fundamentalmente el plantel de s�ptima, mientras que en sexta se vieron los frutos de un trabajo ya realizado en la obtenci�n del torneo Apertura. \r\n\r\nActualmente y disputando el Clausura, Pe�arol tiene tres divisionales que hacen punta, como son los casos de cuarta, sexta y s�ptima, que est� invicta y cuenta con dos partidos menos que el ocasional puntero. \r\nQuinta divisi�n, tras haber tenido alg�n traspi� ha logrado superarlo y ha levantado su rendimiento. No podemos olvidarnos que la cuarta particip� en el mes de agosto de un importante torneo Sub 20 en Espa�a, el Torneo de L\'Alcudia, donde participaron grandes equipos -entre ellos el Real Madrid, Boca, Barcelona y Corinthians- y donde los botijas aurinegros dejaron una muy buena impresi�n. \r\n\r\nLos m�s chicos, en lo que a juveniles refiere, son las categor�as dirigidas por Omar Caetano, octava novena y d�cima, las que no compiten oficialmente; Caetano tiene a su cargo una de las tareas m�s importantes que es la captaci�n de valores para integrar los planteles. \r\n',1,180);
INSERT INTO noticias_juveniles VALUES (2,'La Tercera se afirma como l�der','La Tercera se afirma como l�der','La tercera divisi�n de Pe�arol que disputa actualmente el torneo Clausura, viene puntera junto a Danubio en la tabla anual; debemos recordar que qued� a un punto del Campe�n del Apertura. Por otra parte, aport� al plantel principal varios futbolistas, como es el caso de Carlos Bueno que ahora ya est� integrado definitivamente a Primera, dando muy buenos resultados. \r\nUna de las bajas que tendr� esta divisional ser� Mario Leguisam�n, quien convirtiera dos de los cuatro goles en el �ltimo partido, por haber sufrido un esguince de hombro.',2,180);
INSERT INTO noticias_juveniles VALUES (3,'Fernando Albermagger','Fernando Albermagger','\"El Mono\", como lo conocen sus amigos, hizo toda la carrera en Pe�arol. Desde ni�o se coloc� la amarilla y negra sobre el pecho. Es tambi�n un volante de ida y vuelta que marca goles. Debido a su marca aplicada y a su ductilidad con la pelota, V�ctor P�a lo convoc� a las Juveniles, una vez a la Sub-17 y dos a la Sub-20, como lateral derecho. A pesar de su corta edad tiene una experiencia internacional envidiable a la que le sumar� las vividas con los jugadores de Primera. \r\n\r\n�C�mo se siente que te den la oportunidad de entrenar con el primer equipo de Pe�arol? \r\n\"Para m� es m�s que una experiencia, porque yo so�� con estar ac�. Ahora trato de aprovecharlo por m� y por mi familia que esper� mucho de uno y es mi deseo alg�n d�a retribuirles\". \r\n\r\nHabl�bamos con Sebasti�n �lvarez, y a ti te pasa lo mismo, que este a�o se le dan un mont�n de sensaciones buenas y so�adas para cualquier chico, t� jugaste tu segundo Mundial Juvenil, ahora est�s aqu� en Los Aromos �C�mo hac�s para sobrellevar todo eso? \r\n\"Antes de nada, tenemos la gran suerte de vivir esto. Ahora se lleva adelante con dedicaci�n porque si uno se dedica a pleno a lo que hace, pueden llegar las cosas. Tambi�n tranquilo porque tanto �lvarez como Carre�o y como los dem�s muchachos, si estamos ac� es porque algo bien hicimos, a pesar de que no logramos nada a�n, el solo hecho de estar ac� para nosotros es un logro muy importante al igual que los Mundiales y los Sudamericanos. As� que hay que seguir y aprender de personas que son muy buenas en todo sentido para sacar provecho de todo\". \r\n\r\nHace poco tiempo que est�s ac�, pero sirve para que nos des una opini�n de c�mo ves a Pe�arol. \r\n\"Creo que se trabaj� bien en la primera parte y tambi�n de cara a la segunda corrigiendo cosas. Basta con ver las pr�cticas para darse cuenta que se entrena al m�ximo. Pe�arol va a hacer un buen Clausura.\r\n\r\n',3,180);
INSERT INTO noticias_juveniles VALUES (4,'Del Semillero Aurinegro','Buena Madera','Son jugadores salidos del Semillero Aurinegro. Savia nueva a la que Julio Rivas apuesta y que promete con ganarse un lugar y satisfacciones para todos los hinchas aurinegros. Est�n haciendo sus primeras armas y esto es lo que piensan... \r\n',4,180);

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

INSERT INTO noticias_primera VALUES (1,'Fue claro el Cr. Damiani:','Fue claro el Cr. Damiani:','Si hacemos un balance de la campa�a de Pe�arol en el Apertura, vemos que hasta el momento hemos jugado 10 partidos; ganamos 5, empatamos 4 y perdimos 1, con un gol en contra, con una jugada desgraciada del zaguero Dar�o Rodr�guez. Creo que los problemas, los tenemos en los �ltimos minutos, pues es ah� donde nos empatan los partidos. Ya he dicho que este a�o estamos pagando el precio del sexenio. En el \'98 hicimos todos los esfuerzos posibles para salir campeones por sexta vez consecutiva, no lo logramos, pero el esfuerzo se hizo. Hace poco dije que deb�amos olvidarnos del Apertura y prepararnos para el Clausura, y fui criticado por todos los que hablan y opinan, pues no tienen acceso a las fuentes de informaci�n de Pe�arol. Les dir�a que un d�a \"carnereen\" un rato y vengan por Pe�arol y les contamos todo. As� no andan imaginando cosas como lo est�n haciendo ahora.<br><br>\r\nDicen cosas que realmente no corresponden. Nosotros en el \'98 hicimos gastos -buscando el sexenio- que estamos soportando actualmente. Cuando Gregorio P�rez dio el paso al costado, y contratamos a Ribas, quien fue elegido por 9 de los 10 consejeros que estaban en la sala, el d�cimo dirigente era yo, que no vot� pues yo era quien iba a hacer el mandado de hablar con Ribas. Confieso que lo hubiera votado, as� que el t�cnico fue elegido por unanimidad. Despu�s de cuatro meses de trabajo no se puede hacer todo este l�o que se est� armando, porque la hinchada genuina de Pe�arol fue la que disfrut� durante cinco a�os, y tambi�n sabe que no se pueden hacer tormentas con matracas y que nadie va a desafectar a Ribas por haber empatado 4 partidos y haber perdido 1, en un total de 10 partidos. Que quede claro, Pe�arol no va a ser el Titanic. Vamos a seguir como siempre, navegando, y trataremos de llegar a buen puerto. Y para los desinformados que dicen que Ribas sigue porque tiene un contrato firmado, les decimos que el t�cnico de Pe�arol no tiene ning�n contrato firmado. Pero igual se sigue con la manija. <br><br>\r\n* Me extra�a sobremanera que los ingeniosos de siempre no hablen de que Nacional fue hist�ricamente el primer club de los \"grandes\" que pierde en el interior de la Rep�blica, de eso no se dice nada. Me reun� con Ribas, y al parecer hab�a gran expectativa por esta reuni�n. Hab�a un mont�n de periodistas y fot�grafos queriendo tomar im�genes de nuestra reuni�n. Nosotros -de com�n acuerdo- les dijimos que no hab�a fotos. Las fotos son para regalarle a la novia, cuando �ramos j�venes, o como aquel que dijo: \"qu� hacemos con el retrato, si la mina est� en Europa\". Est� todo bajo control a pesar de que navegamos por aguas tumultuosas, con varios vientos de muchos lados, los alisios y los otros, los alisios deben ser de las fuerzas a favor de Pe�arol pues siempre son buenos. De la reuni�n con Ribas, que era una reuni�n rutinaria, quisieron hacer todo un circo, pues no s� de d�nde sacaron que �bamos a mandar a Ribas al cadalso. Seguiremos por el rumbo que nos hemos trazado.\r\n',1,180);
INSERT INTO noticias_primera VALUES (2,'Cada vez que Pe�arol viaja al interior, se vive una gran fiesta','Cada vez que Pe�arol viaja al interior, se vive una gran fiesta','Tanto en la cancha como en el hotel donde los aurinegros se alojen, los parciales, dando muestras de \"fe\" pe�arolense, se agolpan en gran n�mero. Por eso es que las fotos repletas de hinchas son una constante. Uno de los que no falta nunca en cada visita aurinegra a su ciudad es nuestro amigo y corresponsal, Luis Viviani. �l mismo, apenas llegado el �mnibus que transporta a la delegaci�n, ya est� a la orden por si puede ser �til en algo al equipo de sus amores. Como podemos apreciar en las fotos esta tradici�n se transmite con la sangre, ya que su hijo no desaprovech� la ocasi�n para tambi�n fotografiarse con algunos de los jugadores del equipo mirasol.',2,180);
INSERT INTO noticias_primera VALUES (3,'Editorial: Hubiera hecho lo mismo','Hubiera hecho lo mismo','Entrando en el segundo mes del a�o, y a dos meses de sucedido el hecho, todav�a no se han acallado los ecos del partido Pe�arol - Flamengo. Nos estamos refiriendo a los hechos que se produjeron en el final de aquel partido, con la \"gresca generalizada\" que se arm�. Pensamos que ya pas� el tiempo suficiente como para hacer un an�lisis m�s profundo de lo sucedido. El paso inexorable del almanaque, nos da la calma y, ojal�, la sabidur�a necesaria para tratar el tema. La lejan�a en el tiempo permite que se aborden los hechos sin la pasi�n del momento, y con la mesura que requiere el caso. Aclaramos que quien esto escribe no est� ni ah� con la violencia. Prefiere evitarla. Si hay un l�o en la esquina, elijo dar vuelta la manzana evitando pasar por ese lugar. Creo que las diferencias entre personas no se arreglan con las pi�as. Conversando, la gente se entiende. As� debe ser, o as� deber�a ser. Porque reconozcamos que en determinadas circunstancias, las palabras pueden estar \"sobrando\", y la soluci�n requiera emprender otras acciones. Como regla general, no nos parece que en el �ltimo a�o del siglo -seg�n los astr�logos el a�o 2000 corresponde al siglo XX- los conflictos entre seres humanos se solucionen a las \"trompadas\" o con guerras. Aunque tambi�n es cierto que la sociedad toda, derogada la \"ley de duelos\", no ha encontrado la forma de salvar el honor de las personas. Tal vez la mencionada ley tampoco lo hac�a, pero todos los d�as vemos, escuchamos y leemos agravios entre personas, y no hay forma de reparar el honor mancillado de las mismas. Volviendo al punto que nos ata�e, partido Pe�arol - Flamengo, decimos sin titubeos, que dadas las circunstancias, HUBIERAMOS HECHO LO MISMO QUE LOS JUGADORES DE PE�AROL. No lo decimos porque nos sentimos parte de esta gran Instituci�n, sino que lo expresamos como hombres, como deportistas. Cualquiera que haya pisado alguna vez una cancha de f�tbol, sea en calidad de profesional, s�per profesional, semi profesional, amateur, por el asado, o en un partido como los que se jugaba anta�o entre solteros y casados, se agarr� alguna \"calentura\" con el rival de turno que nos estaba \"pintando la cara\" o con los mismos compa�eros. Una cosa es que te ganen bien, y otra muy distinta es que te \"tomen el pelo\", te \"saquen la pizarra\", o como en el caso que estamos tratando, no respeten la historia de Pe�arol. Y los brasileros son expertos al arte de \"babosear\". Parecer�a que como estamos en un f�tbol hiperprofesionalizado, hablo de la FIFA y de los torneos que ella desarrolla, no estoy hablando del profesionalismo \"de alpargata\" que tenemos en el Uruguay, el jugador profesional no podr�a tener reacciones humanas. Pe�arol siempre se caracteriz� por ser un equipo sangu�neo. Su gente, l�ase jugadores, t�cnicos, dirigentes, socios, hinchas o simples simpatizantes, se emocionan hasta las l�grimas recordando su historia y sus haza�as. Por algo, teniendo que remontar una diferencia de tres goles frente a un equipo brasilero, cuarenta mil personas se dieron cita en aquel partido. Porque Pe�arol siempre alienta al milagro. Para nuestro equipo nunca hay imposibles. Y las personas que concurrieron al partido con Flamengo, aplaudieron en su enorme mayor�a, la actitud de los jugadores de Pe�arol. No fue s�lo la �msterdam o la Colombes, tambi�n fue la Ol�mpica, la Am�rica, el Palco Oficial, y la Bancada de Prensa. Eso s�, el periodismo crucific� a los jugadores aurinegros. Son los mismos que nos dicen que en Maracan� ganamos poniendo H... <br>Contradicciones de este mundo.<br>Hasta la pr�xima. ',3,100);
INSERT INTO noticias_primera VALUES (4,'Carlos \"Pato\" Aguilera','El Pato Aguilera','\"Tengo un compromiso muy grande con Pe�arol\"<br>\r\nDespu�s de sucesos por todos conocidos, Carlos \"Pato\" Aguilera volvi� a lucir la camiseta aurinegra, tal cual era, seg�n sus propias palabras, su m�s ferviente deseo. Pe�arol Magazine opt� por esperar para que las aguas se calmaran y reci�n entonces hablar con el jugador. A continuaci�n la charla mantenida en Los Aromos luego de un d�a normal de entrenamiento. <br><br>\r\n�Personalmente c�mo te sent�s, sobre todo luego de lo que ha demostrado la hinchada de Pe�arol antes y luego de tu regreso?<br><br>\r\n- Yo soy un agradecido, como siempre digo estoy agradecido con las personas que me ayudaron en un momento muy dif�cil; nunca dej� de reconocer lo que fue la hinchada de Pe�arol, los dirigentes; por algo estoy de vuelta en Pe�arol. Soy un agradecido y me siento orgulloso de poder estar ac� de vuelta y que me dieran otra oportunidad.',4,100);

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

INSERT INTO partidos VALUES (1,'Cerro','1','2-0','2000-07-30',1,'l','Sa�l Feldman. L�neas: Jorge Galati y Carlos Pastorino','Julio Ribas','Jorge Gonz�lez','1');
INSERT INTO partidos VALUES (2,'Rocha','0','2-4','2000-08-05',1,'l','Gustavo M�ndez. L�neas: Carlos L�pez y Adri�n Climent.','Julio Ribas','Juan R. Carrasco','1');
INSERT INTO partidos VALUES (3,'Danubio','1','1-0','2000-08-12',1,'l','Jorge Larrionda. L�neas: Marcelo Costa y Edgardo Acosta.','Julio Ribas','Jorge Fossati','1');
INSERT INTO partidos VALUES (4,'Liverpool','1','3-1','2000-08-19',1,'l','Mart�n V�zquez. L�neas: Fernando Cresci y Mauricio Espinosa.','Julio RIbas','Jorge Da Silva','1');
INSERT INTO partidos VALUES (5,'Libre','','','2000-08-27',0,'l','','','','1');
INSERT INTO partidos VALUES (6,'Defensor','0','0-0','2000-09-10',1,'l','Jorge Larrionda. L�neas: Ruben Meneses y Alvaro Sacarello.','Julio Ribas','Manuel Keossei�n','1');
INSERT INTO partidos VALUES (7,'Bella Vista','0','2-2','2000-09-16',1,'l','Mart�n V�zquez. L�neas: Walter Rial y Marcelo Gadea.','Julio Ribas','Sergio Batista','1');
INSERT INTO partidos VALUES (8,'Maldonado','0','0-3','2000-09-22',1,'l','Jos� Gij�n. L�neas: Carlos L�pez y Pablo Fandi�o.','Julio Ribas','Eduardo Acevedo','1');
INSERT INTO partidos VALUES (9,'Paysand�','1','','2000-09-01',1,'l','','','','0');
INSERT INTO partidos VALUES (11,'Frontera R.','0','','2000-10-12',1,'l','','','','0');
INSERT INTO partidos VALUES (12,'Juventud','0','','2000-10-14',1,'l','','','','0');
INSERT INTO partidos VALUES (13,'Racing','1','','2000-10-22',1,'l','','','','0');
INSERT INTO partidos VALUES (14,'Rentistas','1','','2000-10-28',1,'l','','','','0');
INSERT INTO partidos VALUES (15,'Nacional','0','','2000-11-04',1,'l','','','','0');
INSERT INTO partidos VALUES (10,'Tacuaremb�','0','','2000-10-07',0,'l','','','','0');
INSERT INTO partidos VALUES (16,'River Plate','0','','2000-11-09',0,'l','','','','0');
INSERT INTO partidos VALUES (17,'Hurac�n Buceo','1','','2000-11-19',0,'l','','','','0');

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
INSERT INTO posiciones VALUES (7,'Hurac�n Buceo',8,1,4,3,7,12,7);
INSERT INTO posiciones VALUES (8,'Juventud',7,2,2,3,6,8,8);
INSERT INTO posiciones VALUES (9,'Liverpool',8,1,3,4,5,12,6);
INSERT INTO posiciones VALUES (10,'Nacional',8,5,3,0,14,6,18);
INSERT INTO posiciones VALUES (11,'Paysand� B.V.',7,1,4,2,9,12,7);
INSERT INTO posiciones VALUES (12,'Pe�arol',7,5,2,0,15,5,17);
INSERT INTO posiciones VALUES (13,'Racing',8,3,4,1,11,7,13);
INSERT INTO posiciones VALUES (14,'Rentistas',7,1,4,2,7,9,7);
INSERT INTO posiciones VALUES (15,'River Plate',7,2,3,2,10,11,9);
INSERT INTO posiciones VALUES (16,'Rocha F.C.',8,1,0,7,7,21,3);
INSERT INTO posiciones VALUES (17,'Tacuaremb�',7,4,1,2,9,5,13);

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
INSERT INTO recomendados VALUES (5,'Campa�a Local','http://capenarol.com/capenarol/primera_div/?mostrar=fixture');
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
INSERT INTO trayectoria VALUES (7,'1994','Pe�arol',1);
INSERT INTO trayectoria VALUES (8,'1993','Cerro Porte�o',2);
INSERT INTO trayectoria VALUES (9,'1998','Pe�arol',2);
INSERT INTO trayectoria VALUES (10,'1985','Wanderers',3);
INSERT INTO trayectoria VALUES (11,'1987','Sevilla',3);
INSERT INTO trayectoria VALUES (12,'1991','Gimnasia y Esgrima LP',3);
INSERT INTO trayectoria VALUES (13,'1992','Pe�arol',3);
INSERT INTO trayectoria VALUES (14,'1996','Juan Zorrilla de San Mart�n',4);
INSERT INTO trayectoria VALUES (15,'1997','Pe�arol',4);
INSERT INTO trayectoria VALUES (16,'1992','Pe�arol',5);
INSERT INTO trayectoria VALUES (17,'1999','Frontera',5);
INSERT INTO trayectoria VALUES (18,'2000','Pe�arol',5);
INSERT INTO trayectoria VALUES (19,'1997','Pe�arol',6);
INSERT INTO trayectoria VALUES (20,'1988','Pe�arol',7);
INSERT INTO trayectoria VALUES (21,'1993','Argentinos Jrs',7);
INSERT INTO trayectoria VALUES (22,'1994','River Plate',7);
INSERT INTO trayectoria VALUES (23,'1996','Boca Juniors',7);
INSERT INTO trayectoria VALUES (24,'1997','Am�rica (M�xico)',7);
INSERT INTO trayectoria VALUES (25,'1998','Pe�arol',7);
INSERT INTO trayectoria VALUES (26,'1993','Cerrito',8);
INSERT INTO trayectoria VALUES (27,'1996','Progreso',8);
INSERT INTO trayectoria VALUES (28,'1997','Liverpool',8);
INSERT INTO trayectoria VALUES (29,'2000','Pe�arol',8);
INSERT INTO trayectoria VALUES (30,'1988','Pe�arol',9);
INSERT INTO trayectoria VALUES (31,'1989','Wanderers',10);
INSERT INTO trayectoria VALUES (32,'1991','Platense (Arg.)',10);
INSERT INTO trayectoria VALUES (33,'1994','Racing (Arg.)',10);
INSERT INTO trayectoria VALUES (34,'1995','Pe�arol',10);
INSERT INTO trayectoria VALUES (35,'1993','Pe�arol',11);
INSERT INTO trayectoria VALUES (36,'1996','Pe�arol',12);
INSERT INTO trayectoria VALUES (37,'1998','Quangxing (China)',12);
INSERT INTO trayectoria VALUES (38,'1999','Apolo (China)',12);
INSERT INTO trayectoria VALUES (39,'1999','Pe�arol',12);
INSERT INTO trayectoria VALUES (40,'1994','18 de julio (Fray Bentos)',13);
INSERT INTO trayectoria VALUES (41,'1994','Pe�arol',13);
INSERT INTO trayectoria VALUES (42,'1992','Pe�arol',14);
INSERT INTO trayectoria VALUES (43,'1988','Pe�arol',15);
INSERT INTO trayectoria VALUES (44,'1998','Villa Espa�ola',15);
INSERT INTO trayectoria VALUES (45,'1999','Bella Vista',15);
INSERT INTO trayectoria VALUES (46,'1996','Bella Vista',16);
INSERT INTO trayectoria VALUES (47,'2000','Pe�arol',16);
INSERT INTO trayectoria VALUES (48,'1997','Pe�arol',17);
INSERT INTO trayectoria VALUES (49,'1988','Sudam�rica',18);
INSERT INTO trayectoria VALUES (50,'1994','Pe�arol',18);
INSERT INTO trayectoria VALUES (51,'1998','Villa Espa�ola',18);
INSERT INTO trayectoria VALUES (52,'1998','Almagro (Arg.)',18);
INSERT INTO trayectoria VALUES (53,'1999','Liverpool',18);
INSERT INTO trayectoria VALUES (54,'2000','Pe�arol',18);
INSERT INTO trayectoria VALUES (55,'1991','Pe�arol',19);
INSERT INTO trayectoria VALUES (56,'1989','Pe�arol',20);
INSERT INTO trayectoria VALUES (57,'1993','I.A.Sudam�rica',21);
INSERT INTO trayectoria VALUES (58,'1995','Toluca (M�x.)',21);
INSERT INTO trayectoria VALUES (59,'1997','Bella Vista',21);
INSERT INTO trayectoria VALUES (60,'1999','Pe�arol',21);
INSERT INTO trayectoria VALUES (61,'1989','Pe�arol',22);
INSERT INTO trayectoria VALUES (62,'1987','Defensor',23);
INSERT INTO trayectoria VALUES (63,'1996','Pe�arol',23);
INSERT INTO trayectoria VALUES (64,'1989','Pe�arol',24);
INSERT INTO trayectoria VALUES (65,'1997','Bella Vista',25);
INSERT INTO trayectoria VALUES (66,'2000','Pe�arol',25);
INSERT INTO trayectoria VALUES (67,'','Pe�arol',26);
INSERT INTO trayectoria VALUES (68,'','Defensor',26);
INSERT INTO trayectoria VALUES (69,'','Bella Vista',26);
INSERT INTO trayectoria VALUES (70,'','Olimpia',26);
INSERT INTO trayectoria VALUES (71,'','Paysand�',26);
INSERT INTO trayectoria VALUES (72,'2000','Pe�arol',26);
INSERT INTO trayectoria VALUES (73,'','Club Artigas (Cerro Largo)',27);
INSERT INTO trayectoria VALUES (74,'2000','Pe�arol',27);

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
INSERT INTO usuarios VALUES (15,'her','Hernan','Pr�ncipe','her','',9,5,127,'m','Positos','uruguay','','',0,'','','profesional','casa','','1','','','','','0','0','0');
INSERT INTO usuarios VALUES (16,'Danny','Danny','Rios','satellit','',26,8,127,'m','Montevideo','uruguay','','Cno. CArrasco 4680',127,'522 33 09','Montevideo','estudiante','trabajo','','3','1','','','drios@uol.com.uy','0','0','1');
INSERT INTO usuarios VALUES (17,'Elmario','Mario','Dalla Rosa','manyun','',27,9,127,'m','Montevideo','uruguay','','',0,'','','profesional','casa','','1','','','','','0','0','0');
INSERT INTO usuarios VALUES (18,'graciela','Graciela','Sarli','coman','',20,4,127,'f','Montevideo','uruguay','','',0,'','','profesional','casa','','1','','','','graciela@uol.com.uy','0','0','0');

