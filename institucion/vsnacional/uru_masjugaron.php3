<html>
<head>
<title>Los que más jugaron</title>
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
    <td height="15" class="TexVer1Blanca"> <b>Los que más veces jugaron&nbsp;&nbsp;</b></td>
  </tr>
</table>
<table width="300" border="0" cellspacing="0" cellpadding="0">
	<tr bgcolor="#FFCC00" align="center"> 
    <td height="15" width="225" class="TexVer1Negro"> <b>Nombre<% include('../../include/hitbox.inc'); %> 
      </b></td>
    <td height="15" width="75" class="TexVer1Negro"> <b>Cantidad</b></td>
  </tr>
<?
include "../../include/db_connect.inc";
$query1="SELECT id,nombre,partidos FROM penarol_nac_jugadores";
$result=mysql_query($query1);
if ($result !=0) {
	while ($row=mysql_fetch_object($result)){
?> 
  <tr> 
    <td height="15" width="225" class="TexVer1Negro"><b><? echo $row->nombre ?></b></td>
    <td height="15" width="75" align="center" class="TexVer1Negro"><? echo $row->partidos ?></td>
  </tr>
  <?
	}
}
?> 
  <tr> 
    <td colspan="2"><img src="../../img/img_general/spacer.gif" width="300" height="1"></td>
  </tr>
</table>
</body>
</html>
