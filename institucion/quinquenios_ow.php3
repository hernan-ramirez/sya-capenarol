<?
include "../include/db_connect.inc";

$query1="SELECT quinquenio,anio,plantel FROM quinquenio WHERE quinquenio='$quinquenio' AND anio='$anio'";
 
$result=mysql_query($query1);

if ($result !=0) {
	while ($row=mysql_fetch_object($result)){
?>

<html>
<head>
<title>Campeones Uruguayos Temporada <? echo $row->anio ?> Primer Quinquenio</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="../style/general_style.css">
</head>
<% include('../include/hitbox.inc'); %>
<body bgcolor="#C8C0B0" leftmargin="3" topmargin="3" marginwidth="3" marginheight="3">
<table width="300" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#000000" align="right"> 
    <td height="18" class="TexVer1Blanca"> <b><? include "../include/hitbox.inc" ?>Campeones 
      Uruguayos Temporada <? echo $row->anio ?> &nbsp;&nbsp;</b></td>
  </tr>
  <tr bgcolor="#C8C0B0"> 
    <td class="TexVer1Negro"><br>
      <? echo $row->plantel ?></td>
  </tr>
</table>
</body>
</html>
<?
	}
}
?>
