<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<?
$hostName = "penarol.sportsya.net";
$userName = "root";
$password = "zukarytas";
$databaseName = "penarol";

function DisplayErrMsg($message) {
	printf("<blockquote><blockquote><blockquote><h3><font color=\"#cc0000\"> %s</font></h3></blockquote></blockquote></blockquote>\n", $message);

}

$stmt = "SELECT * FROM partidos ORDER BY id";

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

if (!($result =mysql_query($stmt, $link))) {
	DisplayErrMsg(sprintf("Error in executing %s stmt", $stmt));
	DisplayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
	exit();
}


?>
<body bgcolor="#FFFFFF">
<table width="100%" border="1" cellspacing="1" cellpadding="1" bordercolorlight="#666666" bordercolordark="#000000" bordercolor="#000000">
  <tr bgcolor="#000000"> 
    <td width="1%"> 
      <div align="center"><font color="#FFFF99"><b><font face="MS Sans Serif" size="2">#</font></b></font></div>
    </td>
    <td> 
      <div align="center"><font color="#FFFF99"><b><font face="MS Sans Serif" size="2">Rival</font></b></font></div>
    </td>
    <td> 
      <div align="center"><font color="#FFFF99"><b><font face="MS Sans Serif" size="2">Local</font></b></font></div>
    </td>
    <td> 
      <div align="center"><font color="#FFFF99"><b><font face="MS Sans Serif" size="2">Resul.</font></b></font></div>
    </td>
    <td> 
      <div align="center"><font color="#FFFF99"><b><font face="MS Sans Serif" size="2">Fecha</font></b></font></div>
    </td>
    <td> 
      <div align="center"><font color="#FFFF99"><b><font face="MS Sans Serif" size="2">Campeonato</font></b></font></div>
    </td>
    <td> 
      <div align="center"><font color="#FFFF99"><b><font face="MS Sans Serif" size="2">Arbitros</font></b></font></div>
    </td>
    <td> 
      <div align="center"><font color="#FFFF99"><b><font face="MS Sans Serif" size="2">DT</font></b></font></div>
    </td>
    <td> 
      <div align="center"><font color="#FFFF99"><b><font face="MS Sans Serif" size="2">DT 
        Rival</font></b></font></div>
    </td>
    <td> 
      <div align="center"><font color="#FFFF99"><b><font face="MS Sans Serif" size="2">Cargado</font></b></font></div>
    </td>
    <td> 
      <div align="center"><b><font face="MS Sans Serif" size="2" color="#FFFF99">Modificar/Borrar</font></b></div>
    </td>
  </tr>
  <?
while (($row = mysql_fetch_object($result))){
?> 
  <tr> 
    <td><div align="center"><? echo $row->id ?> 
      </div>
    </td>
    <td><div align="center"><? echo $row->rival ?> 
      </div>
    </td>
    <td><div align="center"><? 

$local = $row->local;
switch ($local) {
	case 0:
		$local = "Si";
		break;
	case 1:
		$local = "No";
		break;
}
echo $local;

?> 
      </div>
    </td>
    <td><div align="center"><? echo $row->resultado ?> 
      </div>
    </td>
    <td><div align="center"><? echo $row->date ?> 
      </div>
    </td>
    <td><div align="center"><? 
$campeonato = $row->campeonato; 

switch ($campeonato) {
	case "l":
		$campeonato = "Local";
		break;
	case "i":
		$campeonato = "Internacional";
		break;
}
echo $campeonato;
?> 
      </div>
    </td>
    <td><div align="center"><? echo $row->arbitros ?> 
      </div>
    </td>
    <td><div align="center"><? echo $row->DT ?> 
      </div>
    </td>
    <td><div align="center"><? echo $row->DTrival ?> 
      </div>
    </td>
    <td><div align="center"><? 
$cargado = $row->cargado;

switch ($cargado) {
	case 0:
		$cargado = "No";
		break;
	case 1:
		$cargado = "Si";
		break;
}
echo $cargado;
?> 
      </div>
    </td>
    <td> 
      <div align="center"><a href="modificar_partido.php3?id=<? echo $row->id ?>">Modificar</a>/<a href="borrar_partido_delete.php3?partido=<? echo $row->id ?>">Borrar</a></div>
    </td>
  </tr>
  <?
}
?> 
</table>
</body>
</html>
