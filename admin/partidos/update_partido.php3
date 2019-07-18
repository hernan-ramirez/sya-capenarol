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

$date = $date1 . "-" . $date2 . "-" . $date3;

$updateStmt = "Update partidos set rival='$rival',local='$local',resultado='$resultado',date='$date',campeonato='$campeonato',arbitros='$arbitros',DT='$DT', DTrival='$DTrival',cargado='$cargado' where id=$id";

//conectar con la base de datos

if(!($link=mysql_pconnect($hostName, $userName, $password))) {
	DisplayErrMsg(sprintf("error connecting to host %s, by user %s", $hostName, $userName));
	exit();
}

//elegir la base de datos

if (!mysql_select_db($databaseName, $link)) {
	DisplayErrMsg(sprintf("Error selecting %s database", $databaseName)) ;
	DislpayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
	exit();
}

//ejecutar el comando

if (!($result =mysql_query($updateStmt, $link))) {
	DisplayErrMsg(sprintf("Error in executing %s stmt", $updateStmt));
	DisplayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
	exit();
} 
?>
<p><font face="Arial, Helvetica, sans-serif" color="#FF0033"><b>Tabla de partidos 
  actualizada.</b></font></p>
</body>
</html>
