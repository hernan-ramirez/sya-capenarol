<?
include "../include/db_connect.inc";

$query1="SELECT nombre,texto FROM penarol_figuras WHERE id='$figuras'";
 
$result=mysql_query($query1);

if ($result !=0) {
	while ($row=mysql_fetch_object($result)){
?>
<html>
<head>
<title><? echo $row->nombre ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="../style/general_style.css"></head>
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
<% include('../include/hitbox.inc'); %>
<body bgcolor="#FFFFFF">
<table width="300" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="#333333"> 
    <td height="15"> 
      <div align="right"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"><b><font color="#FFFFFF">Jugadores 
        Hist&oacute;ricos&nbsp;&nbsp;</font></b></font></div>
    </td>
  </tr>
</table>
<table width="300" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td bgcolor="#000000" width="1"><img src="../historia/img/img_general/spacer.gif" width="1" height="1"></td>
    <td width="298"> 
      <table width="298" border="0" cellspacing="0" cellpadding="0">
        <tr bgcolor="#000000"> 
          <td><img src="../img/img_general/spacer.gif" width="298" height="1"></td>
        </tr>
        <tr bgcolor="#FFCC30" align="right"> 
          <td class="TexAri1Negra"> <? include "../include/hitbox.inc" ?><? echo $row->nombre ?>&nbsp;&nbsp; 
          </td>
        </tr>
        <tr bgcolor="#000000"> 
          <td><img src="../img/img_general/spacer.gif" width="298" height="1"></td>
        </tr>
      </table>
    </td>
    <td bgcolor="#000000" width="1"><img src="../historia/img/img_general/spacer.gif" width="1" height="1"></td>
  </tr>
</table>
<table width="300" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td bgcolor="#000000" width="1"><img src="../historia/img/img_general/spacer.gif" width="1" height="1"></td>
    <td width="298"> 
      <table width="298" border="0" cellspacing="0" cellpadding="0">
        <tr bgcolor="#000000"> 
          <td><img src="../img/img_general/spacer.gif" width="298" height="1"></td>
        </tr>
        <tr> 
          <td class="TexAri1Negra">
            <? echo $row->texto ?>
            </td>
        </tr>
        <tr bgcolor="#000000"> 
          <td><img src="../img/img_general/spacer.gif" width="298" height="1"></td>
        </tr>
      </table>
    </td>
    <td bgcolor="#000000" width="1"><img src="../historia/img/img_general/spacer.gif" width="1" height="1"></td>
  </tr>
</table>
<? include "../include/foother_ow.php3" ?>
</body>
</html>
<?
	}
}
?>
