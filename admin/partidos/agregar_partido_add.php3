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

$date = $date1 . "-" . $date2 . "-" . $date3;

$addStmt = "INSERT INTO partidos (rival,local,resultado,date,campeonato,arbitros,DT,DTrival,cargado) values ('%s','%s','%s','%s','%s','%s','%s','%s','%s')";

if (!mysql_query(sprintf($addStmt,$rival,$local,$resultado,$date,$campeonato,$arbitros,$DT,$DTrival,$cargado),$link)) {
	DisplayErrMsg(sprintf("Error ejecutando el query %s", $addStmt));
	DisplayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
	exit();
}
$partido = mysql_insert_id($link);
?>

<p><b><font face="Arial, Helvetica, sans-serif" color="#FF0033">Tabla de partidos 
  actualizada...</font></b></p>
<p><b><font face="Arial, Helvetica, sans-serif" color="#FF0033">El partido agregado 
  es el numero <? echo $partido ?></font></b></p>

</body>
</html>