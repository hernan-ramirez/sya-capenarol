<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFFFFF">
<?
$hostName = "penarol.sportsya.net";
$userName = "root";
$password = "zukarytas";
$databaseName = "penarol";

function DisplayErrMsg($message) {
	printf("<blockquote><blockquote><blockquote><h3><font color=\"#cc0000\"> %s</font></h3></blockquote></blockquote></blockquote>\n", $message);

}

//conectar con la base de datos
if (!($link=mysql_pconnect($hostName, $userName, $password))) {
	DisplayErrMsg(sprintf("Error conectando con servidor %s, por el usuario %s",$hostName,$userName));
	exit();
}

//elegir la base de datos
if (!mysql_select_db($databaseName, $link)) {
	DisplayErrMsg(sprintf("Error en la selección de la base de datos %s", $databaseName));
	DisplayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
	exit();
}

$stmt= "SELECT * FROM partidos WHERE id=$partido";

if (!($result =mysql_query($stmt, $link))) {
	DisplayErrMsg(sprintf("Error in executing %s stmt", $stmt));
	DisplayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
	exit();
}

if(!($row = mysql_fetch_object($result))){
	DisplayErrMsg("Internal Error:La entrada no existe");
	exit();
}

$campeonato = $row->campeonato;

$jugador[1] = $jugador1;
$jugador[2] = $jugador2;
$jugador[3] = $jugador3;
$jugador[4] = $jugador4;
$jugador[5] = $jugador5;
$jugador[6] = $jugador6;
$jugador[7] = $jugador7;
$jugador[8] = $jugador8;
$jugador[9] = $jugador9;
$jugador[10] = $jugador10;
$jugador[11] = $jugador11;
$jugador[12] = $jugador12;
$jugador[13] = $jugador13;
$jugador[14] = $jugadro14;

$numero[1] = $numero1;
$numero[2] = $numero2;
$numero[3] = $numero3;
$numero[4] = $numero4;
$numero[5] = $numero5;
$numero[6] = $numero6;
$numero[7] = $numero7;
$numero[8] = $numero8;
$numero[9] = $numero9;
$numero[10] = $numero10;
$numero[11] = $numero11;

$orden[1] = $orden1;
$orden[2] = $orden2;
$orden[3] = $orden3;
$orden[4] = $orden4;
$orden[5] = $orden5;
$orden[6] = $orden6;
$orden[7] = $orden7;
$orden[8] = $orden8;
$orden[9] = $orden9;
$orden[10] = $orden10;
$orden[11] = $orden11;

$addStmt = "INSERT INTO titulares (numero,jugador_id,partido_id,campeonato,orden) values ('%s','%s','%s','%s','%s')";

for ($x=1;$x<12;$x++){
	if (!mysql_query(sprintf($addStmt,$numero[$x],$jugador[$x],$partido,$campeonato,$orden[$x]),$link)) {
	DisplayErrMsg(sprintf("Error ejecutando el query %s", $addStmt));
	DisplayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
	exit();
	}
?>

<p><b><font face="Arial, Helvetica, sans-serif" color="#FF0033">Tabla de titulares 
  actualizada...</font></b></p>

<?
}


$amarillas[1] = $amarillas1;
$amarillas[2] = $amarillas2;
$amarillas[3] = $amarillas3;
$amarillas[4] = $amarillas4;
$amarillas[5] = $amarillas5;
$amarillas[6] = $amarillas6;
$amarillas[7] = $amarillas7;
$amarillas[8] = $amarillas8;
$amarillas[9] = $amarillas9;
$amarillas[10] = $amarillas10;
$amarillas[11] = $amarillas11;
$amarillas[12] = $amarillas12;
$amarillas[13] = $amarillas13;
$amarillas[14] = $amarillas14;

	$addStmt = "INSERT INTO amonestados (minuto,jugador_id,partido_id,campeonato) values ('%s','%s','%s','%s')";
for ($x=1;$x<15;$x++){
	if ($amarillas[$x]<>""){
		if (!mysql_query(sprintf($addStmt,$amarillas[$x],$jugador[$x],$partido,$campeonato),$link)) {
			DisplayErrMsg(sprintf("Error ejecutando el query %s", $addStmt));
			DisplayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
			exit();
		}
?>
<p><b><font face="Arial, Helvetica, sans-serif" color="#FF0033">Tabla de amonestados 
  actualizada...</font></b></p>
<?
	}
}

$rojas[1] = $rojas1;
$rojas[2] = $rojas2;
$rojas[3] = $rojas3;
$rojas[4] = $rojas4;
$rojas[5] = $rojas5;
$rojas[6] = $rojas6;
$rojas[7] = $rojas7;
$rojas[8] = $rojas8;
$rojas[9] = $rojas9;
$rojas[10] = $rojas10;
$rojas[11] = $rojas11;
$rojas[12] = $rojas12;
$rojas[13] = $rojas13;
$rojas[14] = $rojas14;

	$addStmt = "INSERT INTO expulsados (minuto,jugador_id,partido_id,campeonato) values ('%s','%s','%s','%s')";
for ($x=1;$x<15;$x++){
	if ($rojas[$x]<>""){
		if (!mysql_query(sprintf($addStmt,$rojas[$x],$jugador[$x],$partido,$campeonato),$link)) {
			DisplayErrMsg(sprintf("Error ejecutando el query %s", $addStmt));
			DisplayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
			exit();
		}
?>
<p><b><font face="Arial, Helvetica, sans-serif" color="#FF0033">Tabla de expulsados 
  actualizada...</font></b></p>
<?
	}
}
$gol[1][1] = $gol11;
$gol[1][2] = $gol21;
$gol[1][3] = $gol31;
$gol[1][4] = $gol41;
$gol[1][5] = $gol51;
$gol[2][1] = $gol12;
$gol[2][2] = $gol22;
$gol[2][3] = $gol32;
$gol[2][4] = $gol42;
$gol[2][5] = $gol52;
$gol[3][1] = $gol13;
$gol[3][2] = $gol23;
$gol[3][3] = $gol33;
$gol[3][4] = $gol43;
$gol[3][5] = $gol53;
$gol[4][1] = $gol14;
$gol[4][2] = $gol24;
$gol[4][3] = $gol34;
$gol[4][4] = $gol44;
$gol[4][5] = $gol54;
$gol[5][1] = $gol15;
$gol[5][2] = $gol25;
$gol[5][3] = $gol35;
$gol[5][4] = $gol45;
$gol[5][5] = $gol55;
$gol[6][1] = $gol16;
$gol[6][2] = $gol26;
$gol[6][3] = $gol36;
$gol[6][4] = $gol46;
$gol[6][5] = $gol56;
$gol[7][1] = $gol17;
$gol[7][2] = $gol27;
$gol[7][3] = $gol37;
$gol[7][4] = $gol47;
$gol[7][5] = $gol57;
$gol[8][1] = $gol18;
$gol[8][2] = $gol28;
$gol[8][3] = $gol38;
$gol[8][4] = $gol48;
$gol[8][5] = $gol58;
$gol[9][1] = $gol19;
$gol[9][2] = $gol29;
$gol[9][3] = $gol39;
$gol[9][4] = $gol49;
$gol[9][5] = $gol59;
$gol[10][1] = $gol110;
$gol[10][2] = $gol210;
$gol[10][3] = $gol310;
$gol[10][4] = $gol410;
$gol[10][5] = $gol510;
$gol[11][1] = $gol111;
$gol[11][2] = $gol211;
$gol[11][3] = $gol311;
$gol[11][4] = $gol411;
$gol[11][5] = $gol511;
$gol[12][1] = $gol112;
$gol[12][2] = $gol212;
$gol[12][3] = $gol312;
$gol[12][4] = $gol412;
$gol[12][5] = $gol512;
$gol[13][1] = $gol113;
$gol[13][2] = $gol213;
$gol[13][3] = $gol313;
$gol[13][4] = $gol413;
$gol[13][5] = $gol513;
$gol[14][1] = $gol114;
$gol[14][2] = $gol214;
$gol[14][3] = $gol314;
$gol[14][4] = $gol414;
$gol[14][5] = $gol514;

$addStmt = "INSERT INTO goles (partido_id,minuto,jugador_id,campeonato) VALUES ('%s','%s','%s','%s')";
$x=1;
while ($x<15){
	$y=1;
	while ($y<6){
		if ($gol[$x][$y]<>""){		
			if (!mysql_query(sprintf($addStmt,$partido,$gol[$x][$y],$jugador[$x],$campeonato),$link)) {
					DisplayErrMsg(sprintf("Error ejecutando el query %s", $addStmt));
					DisplayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
					exit();
			}
?>
<p><b><font face="Arial, Helvetica, sans-serif" color="#FF0033">Tabla de goles 
  actualizada...</font></b></p>
<?
		}
		$y++;
	}
$x++;
}

$cambio[1] = $cambio1;
$cambio[2] = $cambio2;
$cambio[3] = $cambio3;
$cambio[4] = $cambio4;
$cambio[5] = $cambio5;
$cambio[6] = $cambio6;
$cambio[7] = $cambio7;
$cambio[8] = $cambio8;
$cambio[9] = $cambio9;
$cambio[10] = $cambio10;
$cambio[11] = $cambio11;
$cambio[12] = $cambio12;
$cambio[13] = $cambio13;
$cambio[14] = $cambio14;


$cambio_minuto[1] = $cambio_minuto1;
$cambio_minuto[2] = $cambio_minuto2;
$cambio_minuto[3] = $cambio_minuto3;
$cambio_minuto[4] = $cambio_minuto4;
$cambio_minuto[5] = $cambio_minuto5;
$cambio_minuto[6] = $cambio_minuto6;
$cambio_minuto[7] = $cambio_minuto7;
$cambio_minuto[8] = $cambio_minuto8;
$cambio_minuto[9] = $cambio_minuto9;
$cambio_minuto[10] = $cambio_minuto10;
$cambio_minuto[11] = $cambio_minuto11;
$cambio_minuto[12] = $cambio_minuto12;
$cambio_minuto[13] = $cambio_minuto13;
$cambio_minuto[14] = $cambio_minuto14;


$addStmt = "INSERT INTO cambios (minuto,sale_id,entra_id,partido_id,campeonato) values ('%s','%s','%s','%s','%s')";

for($x=1;$x<15;$x++){
	if($cambio_minuto[$x]<>""){
		if (!mysql_query(sprintf($addStmt,$cambio_minuto[$x],$jugador[$x],$cambio[$x],$partido,$campeonato),$link)) {
			DisplayErrMsg(sprintf("Error ejecutando el query %s", $addStmt));
			DisplayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
			exit();
		}
?>
<p><b><font face="Arial, Helvetica, sans-serif" color="#FF0033">Tabla de cambios 
  actualizada...</font></b></p>
<?
	}
}


?>

</body>
</html>
