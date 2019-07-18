# MySQL dump 6.0
#
# Host: localhost    Database: capenarol
#--------------------------------------------------------
# Server version	3.22.26a

#
# Table structure for table 'amonestados'
#
CREATE TABLE amonestados (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  minuto int(2) DEFAULT '0' NOT NULL,
  jugador_id int(8) DEFAULT '0' NOT NULL,
  partido_id int(8) DEFAULT '0' NOT NULL,
  penarol set('0','1') DEFAULT '' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,minuto,jugador_id,partido_id,penarol),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'amonestados'
#


#
# Table structure for table 'arbitros'
#
CREATE TABLE arbitros (
  id int(8) DEFAULT '0' NOT NULL,
  nombres varchar(128) DEFAULT '' NOT NULL,
  partido_id int(8) DEFAULT '0' NOT NULL
);

#
# Dumping data for table 'arbitros'
#


#
# Table structure for table 'cambios'
#
CREATE TABLE cambios (
  id int(8) DEFAULT '0' NOT NULL,
  minuto int(2) DEFAULT '0' NOT NULL,
  entra_id int(8) DEFAULT '0' NOT NULL,
  sale_id int(8) DEFAULT '0' NOT NULL,
  partido_id int(8) DEFAULT '0' NOT NULL,
  penarol set('0','1') DEFAULT '' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id),
  UNIQUE id_2 (id),
  KEY minuto (minuto),
  KEY entra_id (entra_id),
  KEY sale_id (sale_id),
  KEY partido_id (partido_id),
  KEY penarol (penarol)
);

#
# Dumping data for table 'cambios'
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

INSERT INTO configuracion VALUES (3,'char_noticia','180');
INSERT INTO configuracion VALUES (2,'char_entrevista','180');
INSERT INTO configuracion VALUES (4,'char_unoticia','60');

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

INSERT INTO entrevistas VALUES (1,'Pablo Bengoechea','�FUERZA CAPITAN! Ese es el pensamiento de toda la falange mirasol. De apoyar y darle aliento al jugador m�s desiquilibrante de nuestro f�tbol en la d�cada del \'90. El propio Cr. Damiani dijo que \"...por Bengoechea me entibio las manos\". Por su parte el capit�n demostr� su hombr�a atacando el problema y someti�ndose a unos an�lisis para salir de toda duda. \r\n\r\nEso solo lo hace quien est� seguro de s� mismo. \r\n\r\n�Pablo, cu�ndo vas a tener novedades sobre los an�lisis que te realizaste en el Banco de Pr�tesis?\r\n- Los resultados van a estar para mediados de febrero aproximadamente. Por ahora lo �nico que sabemos es que los qu�micos est�n trabajando para saber finalmente el resultado. \r\n\r\nEl Cr. Damiani dijo que no pon�a las manos en el fuego por nadie ni siquiera por su mujer, pero por vos se las entibiaba...\r\n- No hay duda de que yo tengo un gran agradecimiento con �l por todo lo que ha hecho y dicho p�blicamente y esas son las cosas que hacen seguir jugando al f�tbol, que me hacen seguir pensando en entrenarme y en llegar de la mejor manera para defender a Pe�arol. POr eso siempre he dicho que estoy muy a gusto aqu� en el club y trato de retribuir todo lo que pueda el cari�o que la gente de Pe�arol me demuestra. \r\n\r\nEl hincha est� muy agradecido contigo y no duda de tu profesionalidad �La has notado?\r\n- No he andado mucho en la calle pero por lo que la gente me ha comentado el apoyo del hincha de Pe�arol est�. De todas formas este es un tema persona y de aqu� dentro de Pe�arol. Esperemos los resultados de estos ex�menes y despu�s ver a ciencia cierta cual fue el motivo que llev� a que mi cuerpo tuviera cafe�na. Lo ideal para m� es que se trata de mi metabolismo, cosa de que uno quedara con la mente m�s tranquila porque de no ser as�, que yo fuera una persona que tiene dificultades para eliminar la cafe�na, habr�a que empezar a investigar c�mo ingres� la cafe�na a mi cuerpo y digamos que ah� aumentar�an las desconfianzas. Pero bueno, esperemos los resultados. \r\n\r\nHablemos de lo deportivo �C�mo est� Pe�arol?\r\n- La meta es llegar de la mejor manera para empezar la temporada, el plantel se ha entrenado responsablemente para afrontar el Apertura y la Libertadores. Lo dem�s es lo mismo de siempre, la obligaci�n de ganar cada partido que jugamos. Est� la tranquilidad que los trabajos de base, de pre-temporada han sido muy buenos. Intentaremos nuevamente por todos los medios de ser campeones. \r\n\r\nT� no podr�s jugar en el comienzo de la copa y Pandiani lo podr�a hacer reci�n en las semifinales...\r\n- Es cierto en el comienzo estamos Walter (Pandiani) y yo suspendidos, pero el grupo tiene que estar preparado para que al jugador que le toque jugar pueda responder a las expectativas que todos nosotros tenemos creadas en cada uno. Pienso que no va a ser problema en jugar a nivel internacional y a nivel local porque en la segunda parte del a�o pasado ocurri� as� y no hubo ning�n tipo de problema. Creo que fue beneficiosa la competencia de Domingo y Mi�rcoles. Espero que en este comienzo de a�o ocurra lo mismo, que el plantel se sienta bien f�sicamente y que no haya problemas de lesiones, que eso es lo �nico que le complica a un jugador. Las expectativas est�n creadas para que sea un buen a�o. \r\n\r\n\r\nEL \"pataleo\" de Nacional \r\n\r\nFiel a su estilo a lo largo de la historia, Nacional reclam� que Bengoechea deb�a ser sancionado tambi�n en el orden local. La AUF le inform� que no ten�an las potestades y le pas� la pelota a la Comisi�n Nacional de Educaci�n F�sica, la cual realiz� una conferencia de prensa para explicar el caso. Si bien las muestras de orina estaban en poder de la Comisi�n, la due�a, por decirlo de alguna manera, era la Confederaci�n Sudamericana de F�tbol. La Comisi�n simplemente ten�a las custodias de las mismas ya que se trataba de un evento organizado por el organismo continental del f�tbol. Adem�s se toma como \"dopping\" por la Comisi�n Nacional de Educaci�n F�sica cuando la segunda muestra ratifica los resultados de la primera muestra. Y la segunda muestra no fue abierta, se la llev� a la Confederaci�n y despu�s fue cedida a Bengoechea porque nuestro jugador quer�a realizar los an�lisis. De aqu� se desprende claramente que para la Comisi�n a Bengoechea no se lo puede juzgar por el caso de \"dopping\" ya que la segunda muestra no fue abierta.\r\nEntendemos que el reclamo de Nacional es m�s que nada porque se trata de Bengoechea, el jugador despu�s de Morena y de Piendibeni que m�s goles le han convertido al tradicional rival. \r\n\r\n','entrevista.jpg','entrevista_grande.jpg',0,1);
INSERT INTO entrevistas VALUES (2,'Entrevista a Leonardo Papa (?)','blah blah blah?\r\nleo: blah blah blah ...\r\nblah blah?\r\nleo: no, blah blah blah blah...\r\n\r\n','argentina.bmp','brasil.bmp',0,0);

#
# Table structure for table 'expulsados'
#
CREATE TABLE expulsados (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  minuto int(2) DEFAULT '0' NOT NULL,
  jugador_id int(8) DEFAULT '0' NOT NULL,
  partido_id int(8) DEFAULT '0' NOT NULL,
  penarol set('0','1') DEFAULT '' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,minuto,jugador_id,partido_id,penarol),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'expulsados'
#


#
# Table structure for table 'goles'
#
CREATE TABLE goles (
  id int(8) DEFAULT '0' NOT NULL,
  minuto int(2) DEFAULT '0' NOT NULL,
  jugador_id int(4) DEFAULT '0' NOT NULL,
  partido_id int(8) DEFAULT '0' NOT NULL,
  penarol set('0','1') DEFAULT '0' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id),
  UNIQUE id_2 (id),
  KEY minuto (minuto),
  KEY plantel_id (jugador_id),
  KEY partido_id (partido_id),
  KEY penarol (penarol)
);

#
# Dumping data for table 'goles'
#


#
# Table structure for table 'jugadores'
#
CREATE TABLE jugadores (
  id int(4) DEFAULT '0' NOT NULL auto_increment,
  nombre varchar(24) DEFAULT '' NOT NULL,
  apellido varchar(24) DEFAULT '' NOT NULL,
  lugarnac varchar(32) DEFAULT '' NOT NULL,
  fechanac int(15) DEFAULT '0' NOT NULL,
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

INSERT INTO jugadores VALUES (1,'Marcelo','Pintos','Barcelona',251177,'vagabundo','hincha','1,50','130 kg.');
INSERT INTO jugadores VALUES (2,'Martin','Caradajian','Entre Rios',231299,'inferiores','N/A','50 cm','5 kilos');

#
# Table structure for table 'jugadoresrivales'
#
CREATE TABLE jugadoresrivales (
  id int(4) DEFAULT '0' NOT NULL auto_increment,
  nombre varchar(24) DEFAULT '' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,nombre),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'jugadoresrivales'
#


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

INSERT INTO noticias VALUES (1,'Clausura 2000. Pe�arol gan� un partido clave','Montevideo, 13 Ago. (SportsYA!)- Pe�arol le gan� a Danubio 1 a 0 y obtuvo tres puntos importantes en el partido que cerr� la tercera fecha del Torneo Clausura. El �nico gol del encuentro fue convertido por Luis Romero en el primer tiempo. <br>\r\nEl partido fue parejo, incluso era Danubio el que mejor estaba haciendo las cosas hasta que lleg� una larga corrida de Nicol�s Rotundo por el sector izquierdo que mand� un centro para encontrar la cabeza del goleador. El golero Bordad dio rebote y la pelota le qued� de nuevo a Romero. El nueve no tuvo siquiera tiempo de pensar, hab�a que volver a empujarla para que entrara a la red. <br>\r\nUna sola jugada, o mejor dicho un solo centro, le alcanz� a Pe�arol para sacarse de arriba a uno de los rivales directos en la pelea por el t�tulo del Clausura. <br>\r\nLa parte complementaria cambi� poco. El partido no cont� con muchas ocasiones de gol pese a la intensidad con la que se jug�.<br> \r\nEl clima en el vestuario de Pe�arol era de tranquilidad y, por que no, tambi�n de alivio. Es que los futbolistas aurinegros eran conscientes que se hab�an sacado de arriba a un buen equipo como Danubio. Luis Romero, el autor del gol y Caf�, quien impidi� en dos oportunidades que Danubio anotara, fueron al control antidoping, mientras que Nicol�s Rotundo fue uno de los �ltimos en abandonar el Estadio debido a que por una patriada suya lleg� el gol de Pe�arol y fue el m�s requerido por los periodistas. <br>\r\nEl t�cnico Julio Ribas asegur� que lo m�s importante era seguir sumando: \"Danubio es un buen equipo con muy buenos jugadores que hace ya tiempo que est�n trabajando juntos. Eso hace a�n m�s trascendente nuestra victoria. En este momento la suma de puntos es lo m�s importante, m�s teniendo en cuenta que tuvimos que jugar con resultados vistos\". <br>\r\nPor su parte en filas danubianas se notaba un poco de frustraci�n, dado que a pesar de desplegar su buen juego no lograron llevarse puntos. El defensa M�ximo Lucas jug� su primer partido en el Centenario y lo hizo en buena forma: \"me siento bastante contento con mi actuaci�n, pero lamentablemente se busc� el gol de todas maneras y no se encontr�\". <br>\r\nPe�arol: Federico Elduayen, Caf�, Joe Bizera, Jos� Enrique De Los Santos, Marcelo Romero, Gabriel Cedr�s, Pablo Bengoechea, Marcelo De Souza, Mart�n Garc�a (80\' Ignacio Borjas), Luis Romero (63\' Jos� Mar�a Franco) y Nicol�s Rotundo. <br><br> Director t�cnico: Julio Ribas <br>\r\nDanubio: Ignacio Bordad, M�ximo Lucas, Walt B�ez, Bruno Piano, Jorge Anch�n, Marcelo Sosa, Omar Pouso (77\' Diego Perrone), Christian Callejas, Richard Nu�ez, Javier Chevant�n e Ignacio Risso (55\' Mart�n Ojeda).<br>\r\nDirector t�cnico: Jorge Fossati <br> \r\nGol:\r\n1-0 35\' Luis Romero (P) <br>\r\nTarjetas amarillas: Marcelo De Souza, Mart�n Garc�a, Luis Romero (P); Omar Pouso, Diego Perrone (D).<br> \r\nEstadio: Centenario \r\n','f1.jpg','nivel_1.jpg',967695444,1);
INSERT INTO noticias VALUES (2,'Rotundo sigui� un consejo','Montevideo, 13 de agosto. (SportsYA!-Silvia P�rez)- En un plantel como el de Pe�arol, que no se ha reforzado para la segunda mitad del a�o, es muy importante contar con un jugador como Nicol�s Rotundo, que puede jugar en varios puestos. El espigado futbolista hace ya muchos a�os que est� en el equipo aurinegro y le ha dado buenos resultados tanto en lo local como en la actividad internacional. El partido del s�bado pasado ante Danubio fue un ejemplo m�s. Rotundo , no s�lo cumpli� una buena actuaci�n marcando a Richard N��ez, uno de los futbolistas m�s peligrosos del equipo de Danubio, sino que fue por una patriada suya que lleg� el gol de Romero, el �nico convertido por los aurinegros y que a la postre le posibilit� quedarse con una importante victoria ante el siempre dif�cil equipo de la franja y seguir como uno de los l�deres del Torneo Clausura. Seguramente cuando Rotundo fue confirmado en el plantel no se imaginaba que la tarde iba a terminar como lo hizo, con un grupo de periodistas rode�ndolo, y con su bolso lleno de obsequios por haber sido el mejor jugador del partido: \"por suerte su pudo ganar y eso hace que me sienta contento. Soy muy exigente conmigo mismo, y siempre siento que me falta algo. Pero esta vez, en l�neas generales me voy conforme con mi rendimiento. Eso no significa que despu�s mirando con tranquilidad el video, no encuentre alg�n error en la marca o alguna jugada en que pude haberme ido arriba y no lo hice\". Nicol�s es consciente que el hecho de ser un jugador polifacetico, (brome� diciendo que s�lo le falta jugar de arquero y de delantero), lo favorece en algunos aspectos y lo perjudica en otros: \"es cierto que al poder defenderme en varios puestos, a veces tengo m�s posibilidades de jugar, pero tambi�n es cierto que cuando vuelve el titular, yo vuelvo a salir. En cambio si tuviese una posici�n concreta, quiz�s me hubiese podido afianzar en ella. Donde m�s c�modo me siento es en el medio, tanto de n�mero 5, como de 8, pero soy consciente que el a�o que jugu� de back, cuando sub� a primera fue muy importante porque me ayud� a estar siempre atento.Lo que quiero dejar claro es que siempre que tengo que dar una mano lo hago con todas mis ganas y toda mi entrega. Uno debe estar preparado para todas las oportunidades y estar preparado para aprovecharlas cuando se presentan\". Con respecto a su jugada personal que termin� con el gol de Romero, reconoci� que lo hizo siguiendo un consejo: \"cuando apareci� la oportunidad trat� de encarar, porque me hab�an dicho que en los �ltimos tiempos estaba perdiendo un poco eso de encarar, de tener un poco m�s la pelota y de irme arriba. Por eso lo hice, por suerte termin� bien y gracias al gol del \"Lucho\" le pudimos ganar a Danubio que es un gran equipo. En el segundo tiempo hice algo parecido, pero no se me dio. �Hubiese sido algo muy lindo!','f2.jpg','nivel_2.jpg',0,2);
INSERT INTO noticias VALUES (3,'Los Chicos se fueron a Europa','Montevideo, 15 Ago.(SportsYA!) Un equipo Sub 20 parti� ayer a jugar el Torneo Internacional de L\'Alcudia en donde participan el Real Madrid, Barcelona, Boca Jrs. y Corinthians. \r\nPor otra parte, las �ltimas actuaciones de Pe�arol, tanto en el plano local como internacional, llevaron a que el presidente aurinegro, Cr. Jos� Pedro Damiani se preguntara la actual cotizaci�n de varios de sus futbolistas. \r\n\"�Cu�nto vale Rotundo?\", se pregunt� el titular carbonero despu�s de elogiar la actuaci�n del polifuncional ante Danubio. \"Si por otros piden dos o tres millones de d�lares... Rotundo bien puede valer seis o siete millones...\", agreg�. Tambi�n destac� la actuaci�n de los juveniles que \"siempre que jugaron, respondieron\", como Jos� Franco, Carlos Bueno y hasta el mism�simo Mario Leguizam�n figura y goleador de la selecci�n Sub 20 de Uruguay. \r\n. El titular aurinegro tambi�n se refiri� a los incidentes que hubo en el Centenario y a las pancartas que la hinchada de Villa Espa�ola despleg� en la Tribuna Colombes. \"No se porqu� pusieron traidor... podr�an haber dicho o escrito otra cosa...\", indic�. \r\nA su vez, el Consejo Directivo, en un comunicado emitido anoche, expres� \"su solidaridad con el Cr. Jos� Pedro Damiani en su condici�n de hombre y ciudadano cabal con una de las trayectorias m�s largas, fecundas y exitosas del deporte nacional y expres� \"su sorpresa por la tenue reacci�n de algunos medios de comunicaci�n\", expresando \"su consternaci�n por la organizaci�n que mostraron los actores de tan lamentables hechos\".','f3.jpg','nivel_3.jpg',0,3);
INSERT INTO noticias VALUES (4,'Noticia del viejo bigote','Bob Marley..','f4.jpg','chile.bmp',967695929,4);

#
# Table structure for table 'partidos'
#
CREATE TABLE partidos (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  rival varchar(16) DEFAULT '' NOT NULL,
  cancha set('l','v') DEFAULT '' NOT NULL,
  titulares_id int(8) DEFAULT '0' NOT NULL,
  goles_id int(8) DEFAULT '0' NOT NULL,
  cambios_id int(8) DEFAULT '0' NOT NULL,
  amonestados_id int(8) DEFAULT '0' NOT NULL,
  expulsados_id int(8) DEFAULT '0' NOT NULL,
  arbitros varchar(64) DEFAULT '' NOT NULL,
  fecha timestamp(14),
  campeonato set('0','1') DEFAULT '0' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,rival,cancha,titulares_id,goles_id,cambios_id,amonestados_id,expulsados_id,arbitros,fecha,campeonato),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'partidos'
#


#
# Table structure for table 'recomendados'
#
CREATE TABLE recomendados (
  id int(4) DEFAULT '0' NOT NULL auto_increment,
  titulo varchar(32) DEFAULT '' NOT NULL,
  url varchar(32) DEFAULT '' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'recomendados'
#

INSERT INTO recomendados VALUES (1,'Entrevista a Damiani','http://www.damiani.com.ar');
INSERT INTO recomendados VALUES (2,'Entrevista a Meijide (?)','http://www.alianza.com.ar');
INSERT INTO recomendados VALUES (3,'Entrevista a Mario Pergolini','http://www.4kstore.com.ar');
INSERT INTO recomendados VALUES (4,'Entrevista a Alfredo Casero','http://www.alcasero.com');
INSERT INTO recomendados VALUES (5,'Buscadores','http://www.yahoo.com');
INSERT INTO recomendados VALUES (6,'Buscadores en argentina','http://www.yahoo.com.ar');
INSERT INTO recomendados VALUES (7,'No se que mas poner','http://www.advance.com.ar');
INSERT INTO recomendados VALUES (8,'No se me ocurre','http://irc.satlink.com');

#
# Table structure for table 'titulares'
#
CREATE TABLE titulares (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  datos_id int(8) DEFAULT '0' NOT NULL,
  numero int(2) DEFAULT '0' NOT NULL,
  penarol int(11) DEFAULT '0' NOT NULL,
  partido_id int(8) DEFAULT '0' NOT NULL,
  PRIMARY KEY (id),
  KEY id (id,datos_id,numero,partido_id),
  UNIQUE id_2 (id)
);

#
# Dumping data for table 'titulares'
#


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

#
# Table structure for table 'usuarios'
#
CREATE TABLE usuarios (
  id int(8) DEFAULT '0' NOT NULL auto_increment,
  usuario varchar(8) DEFAULT '' NOT NULL,
  nombre varchar(32) DEFAULT '' NOT NULL,
  apellido varchar(32) DEFAULT '' NOT NULL,
  clave varchar(8) DEFAULT '' NOT NULL,
  recordatorio varchar(32) DEFAULT '' NOT NULL,
  nacimiento int(8) DEFAULT '0' NOT NULL,
  sexo set('m','f') DEFAULT 'm' NOT NULL,
  ciudad varchar(32) DEFAULT '' NOT NULL,
  pais varchar(32) DEFAULT '' NOT NULL,
  webmail set('0','1') DEFAULT '0' NOT NULL,
  direccion varchar(32) DEFAULT '' NOT NULL,
  cp int(4) DEFAULT '0' NOT NULL,
  telefono varchar(32) DEFAULT '' NOT NULL,
  localidad varchar(32) DEFAULT '' NOT NULL,
  ocupacion varchar(32) DEFAULT '' NOT NULL,
  conexion varchar(32) DEFAULT '' NOT NULL,
  horario varchar(8) DEFAULT '' NOT NULL,
  idioma varchar(32) DEFAULT '' NOT NULL,
  noticiaspenarol set('0','1') DEFAULT '0' NOT NULL,
  noticiassportsya set('0','1') DEFAULT '0' NOT NULL,
  correodeterceros set('0','1') DEFAULT '0' NOT NULL,
  email varchar(64) DEFAULT '' NOT NULL,
  compras set('0','1') DEFAULT '0' NOT NULL,
  tarjeta set('0','1') DEFAULT '0' NOT NULL,
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


