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

INSERT INTO entrevistas VALUES (1,'Pablo Bengoechea','¡FUERZA CAPITAN! Ese es el pensamiento de toda la falange mirasol. De apoyar y darle aliento al jugador más desiquilibrante de nuestro fútbol en la década del \'90. El propio Cr. Damiani dijo que \"...por Bengoechea me entibio las manos\". Por su parte el capitán demostró su hombría atacando el problema y sometiéndose a unos análisis para salir de toda duda. \r\n\r\nEso solo lo hace quien está seguro de sí mismo. \r\n\r\n¿Pablo, cuándo vas a tener novedades sobre los análisis que te realizaste en el Banco de Prótesis?\r\n- Los resultados van a estar para mediados de febrero aproximadamente. Por ahora lo único que sabemos es que los químicos están trabajando para saber finalmente el resultado. \r\n\r\nEl Cr. Damiani dijo que no ponía las manos en el fuego por nadie ni siquiera por su mujer, pero por vos se las entibiaba...\r\n- No hay duda de que yo tengo un gran agradecimiento con él por todo lo que ha hecho y dicho públicamente y esas son las cosas que hacen seguir jugando al fútbol, que me hacen seguir pensando en entrenarme y en llegar de la mejor manera para defender a Peñarol. POr eso siempre he dicho que estoy muy a gusto aquí en el club y trato de retribuir todo lo que pueda el cariño que la gente de Peñarol me demuestra. \r\n\r\nEl hincha está muy agradecido contigo y no duda de tu profesionalidad ¿La has notado?\r\n- No he andado mucho en la calle pero por lo que la gente me ha comentado el apoyo del hincha de Peñarol está. De todas formas este es un tema persona y de aquí dentro de Peñarol. Esperemos los resultados de estos exámenes y después ver a ciencia cierta cual fue el motivo que llevó a que mi cuerpo tuviera cafeína. Lo ideal para mí es que se trata de mi metabolismo, cosa de que uno quedara con la mente más tranquila porque de no ser así, que yo fuera una persona que tiene dificultades para eliminar la cafeína, habría que empezar a investigar cómo ingresó la cafeína a mi cuerpo y digamos que ahí aumentarían las desconfianzas. Pero bueno, esperemos los resultados. \r\n\r\nHablemos de lo deportivo ¿Cómo está Peñarol?\r\n- La meta es llegar de la mejor manera para empezar la temporada, el plantel se ha entrenado responsablemente para afrontar el Apertura y la Libertadores. Lo demás es lo mismo de siempre, la obligación de ganar cada partido que jugamos. Está la tranquilidad que los trabajos de base, de pre-temporada han sido muy buenos. Intentaremos nuevamente por todos los medios de ser campeones. \r\n\r\nTú no podrás jugar en el comienzo de la copa y Pandiani lo podría hacer recién en las semifinales...\r\n- Es cierto en el comienzo estamos Walter (Pandiani) y yo suspendidos, pero el grupo tiene que estar preparado para que al jugador que le toque jugar pueda responder a las expectativas que todos nosotros tenemos creadas en cada uno. Pienso que no va a ser problema en jugar a nivel internacional y a nivel local porque en la segunda parte del año pasado ocurrió así y no hubo ningún tipo de problema. Creo que fue beneficiosa la competencia de Domingo y Miércoles. Espero que en este comienzo de año ocurra lo mismo, que el plantel se sienta bien físicamente y que no haya problemas de lesiones, que eso es lo único que le complica a un jugador. Las expectativas están creadas para que sea un buen año. \r\n\r\n\r\nEL \"pataleo\" de Nacional \r\n\r\nFiel a su estilo a lo largo de la historia, Nacional reclamó que Bengoechea debía ser sancionado también en el orden local. La AUF le informó que no tenían las potestades y le pasó la pelota a la Comisión Nacional de Educación Física, la cual realizó una conferencia de prensa para explicar el caso. Si bien las muestras de orina estaban en poder de la Comisión, la dueña, por decirlo de alguna manera, era la Confederación Sudamericana de Fútbol. La Comisión simplemente tenía las custodias de las mismas ya que se trataba de un evento organizado por el organismo continental del fútbol. Además se toma como \"dopping\" por la Comisión Nacional de Educación Física cuando la segunda muestra ratifica los resultados de la primera muestra. Y la segunda muestra no fue abierta, se la llevó a la Confederación y después fue cedida a Bengoechea porque nuestro jugador quería realizar los análisis. De aquí se desprende claramente que para la Comisión a Bengoechea no se lo puede juzgar por el caso de \"dopping\" ya que la segunda muestra no fue abierta.\r\nEntendemos que el reclamo de Nacional es más que nada porque se trata de Bengoechea, el jugador después de Morena y de Piendibeni que más goles le han convertido al tradicional rival. \r\n\r\n','entrevista.jpg','entrevista_grande.jpg',0,1);
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

INSERT INTO noticias VALUES (1,'Clausura 2000. Peñarol ganó un partido clave','Montevideo, 13 Ago. (SportsYA!)- Peñarol le ganó a Danubio 1 a 0 y obtuvo tres puntos importantes en el partido que cerró la tercera fecha del Torneo Clausura. El único gol del encuentro fue convertido por Luis Romero en el primer tiempo. <br>\r\nEl partido fue parejo, incluso era Danubio el que mejor estaba haciendo las cosas hasta que llegó una larga corrida de Nicolás Rotundo por el sector izquierdo que mandó un centro para encontrar la cabeza del goleador. El golero Bordad dio rebote y la pelota le quedó de nuevo a Romero. El nueve no tuvo siquiera tiempo de pensar, había que volver a empujarla para que entrara a la red. <br>\r\nUna sola jugada, o mejor dicho un solo centro, le alcanzó a Peñarol para sacarse de arriba a uno de los rivales directos en la pelea por el título del Clausura. <br>\r\nLa parte complementaria cambió poco. El partido no contó con muchas ocasiones de gol pese a la intensidad con la que se jugó.<br> \r\nEl clima en el vestuario de Peñarol era de tranquilidad y, por que no, también de alivio. Es que los futbolistas aurinegros eran conscientes que se habían sacado de arriba a un buen equipo como Danubio. Luis Romero, el autor del gol y Cafú, quien impidió en dos oportunidades que Danubio anotara, fueron al control antidoping, mientras que Nicolás Rotundo fue uno de los últimos en abandonar el Estadio debido a que por una patriada suya llegó el gol de Peñarol y fue el más requerido por los periodistas. <br>\r\nEl técnico Julio Ribas aseguró que lo más importante era seguir sumando: \"Danubio es un buen equipo con muy buenos jugadores que hace ya tiempo que están trabajando juntos. Eso hace aún más trascendente nuestra victoria. En este momento la suma de puntos es lo más importante, más teniendo en cuenta que tuvimos que jugar con resultados vistos\". <br>\r\nPor su parte en filas danubianas se notaba un poco de frustración, dado que a pesar de desplegar su buen juego no lograron llevarse puntos. El defensa Máximo Lucas jugó su primer partido en el Centenario y lo hizo en buena forma: \"me siento bastante contento con mi actuación, pero lamentablemente se buscó el gol de todas maneras y no se encontró\". <br>\r\nPeñarol: Federico Elduayen, Cafú, Joe Bizera, José Enrique De Los Santos, Marcelo Romero, Gabriel Cedrés, Pablo Bengoechea, Marcelo De Souza, Martín García (80\' Ignacio Borjas), Luis Romero (63\' José María Franco) y Nicolás Rotundo. <br><br> Director técnico: Julio Ribas <br>\r\nDanubio: Ignacio Bordad, Máximo Lucas, Walt Báez, Bruno Piano, Jorge Anchén, Marcelo Sosa, Omar Pouso (77\' Diego Perrone), Christian Callejas, Richard Nuñez, Javier Chevantón e Ignacio Risso (55\' Martín Ojeda).<br>\r\nDirector técnico: Jorge Fossati <br> \r\nGol:\r\n1-0 35\' Luis Romero (P) <br>\r\nTarjetas amarillas: Marcelo De Souza, Martín García, Luis Romero (P); Omar Pouso, Diego Perrone (D).<br> \r\nEstadio: Centenario \r\n','f1.jpg','nivel_1.jpg',967695444,1);
INSERT INTO noticias VALUES (2,'Rotundo siguió un consejo','Montevideo, 13 de agosto. (SportsYA!-Silvia Pérez)- En un plantel como el de Peñarol, que no se ha reforzado para la segunda mitad del año, es muy importante contar con un jugador como Nicolás Rotundo, que puede jugar en varios puestos. El espigado futbolista hace ya muchos años que está en el equipo aurinegro y le ha dado buenos resultados tanto en lo local como en la actividad internacional. El partido del sábado pasado ante Danubio fue un ejemplo más. Rotundo , no sólo cumplió una buena actuación marcando a Richard Núñez, uno de los futbolistas más peligrosos del equipo de Danubio, sino que fue por una patriada suya que llegó el gol de Romero, el único convertido por los aurinegros y que a la postre le posibilitó quedarse con una importante victoria ante el siempre difícil equipo de la franja y seguir como uno de los líderes del Torneo Clausura. Seguramente cuando Rotundo fue confirmado en el plantel no se imaginaba que la tarde iba a terminar como lo hizo, con un grupo de periodistas rodeándolo, y con su bolso lleno de obsequios por haber sido el mejor jugador del partido: \"por suerte su pudo ganar y eso hace que me sienta contento. Soy muy exigente conmigo mismo, y siempre siento que me falta algo. Pero esta vez, en líneas generales me voy conforme con mi rendimiento. Eso no significa que después mirando con tranquilidad el video, no encuentre algún error en la marca o alguna jugada en que pude haberme ido arriba y no lo hice\". Nicolás es consciente que el hecho de ser un jugador polifacetico, (bromeó diciendo que sólo le falta jugar de arquero y de delantero), lo favorece en algunos aspectos y lo perjudica en otros: \"es cierto que al poder defenderme en varios puestos, a veces tengo más posibilidades de jugar, pero también es cierto que cuando vuelve el titular, yo vuelvo a salir. En cambio si tuviese una posición concreta, quizás me hubiese podido afianzar en ella. Donde más cómodo me siento es en el medio, tanto de número 5, como de 8, pero soy consciente que el año que jugué de back, cuando subí a primera fue muy importante porque me ayudó a estar siempre atento.Lo que quiero dejar claro es que siempre que tengo que dar una mano lo hago con todas mis ganas y toda mi entrega. Uno debe estar preparado para todas las oportunidades y estar preparado para aprovecharlas cuando se presentan\". Con respecto a su jugada personal que terminó con el gol de Romero, reconoció que lo hizo siguiendo un consejo: \"cuando apareció la oportunidad traté de encarar, porque me habían dicho que en los últimos tiempos estaba perdiendo un poco eso de encarar, de tener un poco más la pelota y de irme arriba. Por eso lo hice, por suerte terminó bien y gracias al gol del \"Lucho\" le pudimos ganar a Danubio que es un gran equipo. En el segundo tiempo hice algo parecido, pero no se me dio. ¡Hubiese sido algo muy lindo!','f2.jpg','nivel_2.jpg',0,2);
INSERT INTO noticias VALUES (3,'Los Chicos se fueron a Europa','Montevideo, 15 Ago.(SportsYA!) Un equipo Sub 20 partió ayer a jugar el Torneo Internacional de L\'Alcudia en donde participan el Real Madrid, Barcelona, Boca Jrs. y Corinthians. \r\nPor otra parte, las últimas actuaciones de Peñarol, tanto en el plano local como internacional, llevaron a que el presidente aurinegro, Cr. José Pedro Damiani se preguntara la actual cotización de varios de sus futbolistas. \r\n\"¿Cuánto vale Rotundo?\", se preguntó el titular carbonero después de elogiar la actuación del polifuncional ante Danubio. \"Si por otros piden dos o tres millones de dólares... Rotundo bien puede valer seis o siete millones...\", agregó. También destacó la actuación de los juveniles que \"siempre que jugaron, respondieron\", como José Franco, Carlos Bueno y hasta el mismísimo Mario Leguizamón figura y goleador de la selección Sub 20 de Uruguay. \r\n. El titular aurinegro también se refirió a los incidentes que hubo en el Centenario y a las pancartas que la hinchada de Villa Española desplegó en la Tribuna Colombes. \"No se porqué pusieron traidor... podrían haber dicho o escrito otra cosa...\", indicó. \r\nA su vez, el Consejo Directivo, en un comunicado emitido anoche, expresó \"su solidaridad con el Cr. José Pedro Damiani en su condición de hombre y ciudadano cabal con una de las trayectorias más largas, fecundas y exitosas del deporte nacional y expresó \"su sorpresa por la tenue reacción de algunos medios de comunicación\", expresando \"su consternación por la organización que mostraron los actores de tan lamentables hechos\".','f3.jpg','nivel_3.jpg',0,3);
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
INSERT INTO trayectoria VALUES (7,'1994','Peñarol',1);

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


