<html>
<head>
<title>Jugadores Extranjeros</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="../../style/general_style.css">
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
<body bgcolor="#FFFFFF" leftmargin="3" topmargin="3" marginwidth="3" marginheight="3">
<table width="300" border="0" cellspacing="0" cellpadding="0" bgcolor="#000000">
  <tr align="right"> 
    <td height="15" class="TexVer1Blanca"><b>Futbolistas 
      extranjeros utilizados en los clásicos&nbsp;&nbsp;</b></td>
  </tr>
</table>
  <?
include "../../include/db_connect.inc";
$query1="SELECT id,nombre,pais FROM penarol_nac_extranjero";
 
$result=mysql_query($query1);
$pais="1";
if ($result !=0) {
	while ($row=mysql_fetch_object($result)){
		if ($row->pais!=$pais){
			$pais=$row->pais;
?> 
<table width="300" border="0" cellspacing="0" cellpadding="0">
<?
			$query2="SELECT nombre FROM penarol_nac_extranjero WHERE pais='$row->pais'"; 
			$result2=mysql_query($query2);
?>
  <tr bgcolor="#FFCC00" align="center"> 
    <td height="15" class="TexVer1Negro"><b><? echo $row->pais?> - Cantidad: <? echo mysql_num_rows($result2) ?><% include('../../include/hitbox.inc'); %> 
      </b></td>
  </tr>
  <tr> 
    <td height="15" class="TexVer1Negro">
<?
			if ($result2 !=0) {
				while ($row2=mysql_fetch_object($result2)){
					echo $row2->nombre . "<br>";
						}
				}
?>
</td>
  </tr>
</table>
  <?
		}
	}
}
?> 

<table width="300" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td><img src="../../img/img_general/spacer.gif" width="300" height="1"></td>
  </tr>
</table>
</body>
</html>
