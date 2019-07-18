<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFFFFF">
<?
include "db_connect_arg.inc";

$query = "select * from partido where id=$partido";
$result = mysql_query($query);
					if($result !=0) {
						while ($row=mysql_fetch_object($result)) {
							$campeonato = $row->campeonato;
						}
					}
$query = "INSERT INTO titulares (numero,jugador_id,partido_id,campeonato,orden) values ($numero" . $x ",$jugador" . $x . ",$partido,$campeonato,$orden" . $x . ")";
$result = mysql_query($query);
	if ($result !=0) {
			 
 
?>

<p><b><font face="Arial, Helvetica, sans-serif" color="#FF0033">Tabla de titulares 
  actualizada...</font></b></p>
<?
}
}
?>
</body>
</html>
