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

$deleteStmt = "delete from titulares where partido_id=$partido";

if (!mysql_query($deleteStmt,$link)) {
	DisplayErrMsg(sprintf("Error ejecutando el query %s", $deleteStmt));
	DisplayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
	exit();
}
?>

<p><b><font face="Arial, Helvetica, sans-serif" color="#FF0033">Tabla de titulares 
  actualizada...</font></b></p>

<?
$deleteStmt = "delete from amonestados where partido_id=$partido";

if (!mysql_query($deleteStmt,$link)) {
			DisplayErrMsg(sprintf("Error ejecutando el query %s", $deleteStmt));
			DisplayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
			exit();
}
?>
<p><b><font face="Arial, Helvetica, sans-serif" color="#FF0033">Tabla de amonestados 
  actualizada...</font></b></p>
<?

$deleteStmt = "DELETE FROM expulsados WHERE partido_id=$partido";

if (!mysql_query($deleteStmt,$link)) {
	DisplayErrMsg(sprintf("Error ejecutando el query %s", $deleteStmt));
	DisplayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
	exit();
}
?>
<p><b><font face="Arial, Helvetica, sans-serif" color="#FF0033">Tabla de expulsados 
  actualizada...</font></b></p>
<?
$deleteStmt = "DELETE FROM goles WHERE partido_id=$partido";

if (!mysql_query($deleteStmt,$link)) {
	DisplayErrMsg(sprintf("Error ejecutando el query %s", $deleteStmt));
	DisplayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
	exit();
}
?>
<p><b><font face="Arial, Helvetica, sans-serif" color="#FF0033">Tabla de goles 
  actualizada...</font></b></p>
<?

$deleteStmt = "DELETE FROM cambios WHERE partido_id=$partido";

if (!mysql_query($deleteStmt,$link)) {
	DisplayErrMsg(sprintf("Error ejecutando el query %s", $deleteStmt));
	DisplayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
	exit();
}
?>
<p><b><font face="Arial, Helvetica, sans-serif" color="#FF0033">Tabla de cambios 
  actualizada...</font></b></p>
</body>
</html>
