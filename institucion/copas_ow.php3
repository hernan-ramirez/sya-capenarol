<?
include "../include/db_connect.inc";

$query1="SELECT nombrecopa,anio FROM penarol_copas WHERE id='$copa'";
 
$result=mysql_query($query1);

if ($result !=0) {
	while ($row=mysql_fetch_object($result)){
?>

<html>
<head>
<title><? echo $row->nombrecopa ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="../style/general_style.css">
</head>
<STYLE type=text/css>
A:link {
	 TEXT-DECORATION: none
}
A:visited {
	TEXT-DECORATION: none
}
A:hover {
	TEXT-DECORATION: none
}
</STYLE>
<SCRIPT LANGUAGE="JavaScript">
<!--

function printPage() {
  if (window.print)
    window.print()
  else
    alert("Su navegador no soporta esta funcion");
}

// -->
</SCRIPT>
<body bgcolor="#000000" leftmargin="2" topmargin="2" marginwidth="2" marginheight="2">
<table width="150" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="220"><img src="../img/img_copas/<? echo $copa ?>.jpg" width="148" height="218" border="1"></td>
  </tr>
  <tr align="center"> 
    <td bgcolor="black" class="TexVer1Naranja"><? echo $row->nombrecopa?>&nbsp;<? echo $row->anio ?><? include "../include/hitbox.inc" ?></td>
  </tr>
</table>
</body>
</html>

<?
	}
}
?>
