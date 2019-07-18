<html>
<head>
<title>Peñarol vs. Nacional (Amateurismo)</title>
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
<body bgcolor="#FFFFFF" leftmargin="3" topmargin="3" marginwidth="3" marginheight="3">
<table width="300" border="0" cellspacing="0" cellpadding="0">
  <tr bgcolor="black" align="right"> 
    <td width="300" height="15" class="TexVer1Blanca"> <b>Peñarol vs. Nacional (Amateurismo)&nbsp;&nbsp;&nbsp;</b></td>
  </tr>
</table>
<?
include "../../include/db_connect.inc";
$query1="SELECT id,dia,mes,anio,estadio,ganador,resultado,condicion FROM penarol_nacional_amateur WHERE anio='$anio'";
 
$result=mysql_query($query1);

if ($result !=0) {
?> 
<table width="300" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td><img src="../../img/img_general/spacer.gif" width="300" height="1"></td>
  </tr>
</table>
<table width="300" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td width="1"><img src="../../img/img_general/spacer.gif" width="1" height="15"></td>
    <td width="298" bgcolor="#FFCC66" align="center" class="TexVer1Negro"> <b>A&ntilde;o: 
      <? echo $anio ?><span class="TexAri1Gris"> I</span>&nbsp;Cantidad de Partidos: 
      <? 	echo mysql_num_rows($result);		
		?> </b></td>
    <td width="1"><img src="../../img/img_general/spacer.gif" width="1" height="15"></td>
  </tr>
</table>
<table width="300" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td><img src="../../img/img_general/spacer.gif" width="300" height="1"></td>
  </tr>
</table>
<?
	while ($row=mysql_fetch_object($result)){
?> 
<table width="300" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td bgcolor="#000000" width="1"><img src="../../img/img_general/spacer.gif" width="1" height="15"></td>
    <td width="298"> 
      <table width="298" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><img src="../../img/img_general/spacer.gif" width="298" height="1"></td>
        </tr>
      </table>
      <table width="298" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td width="147" bgcolor="#A8A8A8" class="TexVer1Blanca">&nbsp;&nbsp;Partido 
            N&ordm;:</td>
          <td bgcolor="#000000" width="1"><img src="../../img/img_general/spacer.gif" width="1" height="15"></td>
          <td width="150" bgcolor="#E0E0E0" class="TexVer1Negro"><b>&nbsp;&nbsp;</b><? echo $row->id?></td>
        </tr>
      </table>
      <table width="298" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><img src="../../img/img_general/spacer.gif" width="298" height="1"></td>
        </tr>
      </table>
      <table width="298" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td width="147" bgcolor="#A8A8A8" class="TexVer1Blanca">&nbsp;&nbsp;Fecha:</td>
          <td bgcolor="#000000" width="1"><img src="../../img/img_general/spacer.gif" width="1" height="15"></td>
          <td width="150" bgcolor="#E0E0E0" class="TexVer1Negro">&nbsp;&nbsp;<? echo $row->dia?>/<? echo $row->mes?>/<? echo $row->anio?></td>
        </tr>
      </table>
      <table width="298" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><img src="../../img/img_general/spacer.gif" width="298" height="1"></td>
        </tr>
      </table>
      <table width="298" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td width="147" bgcolor="#A8A8A8" class="TexVer1Blanca">&nbsp;&nbsp;Estadio:</td>
          <td bgcolor="#000000" width="1"><img src="../../img/img_general/spacer.gif" width="1" height="15"></td>
          <td width="150" bgcolor="#E0E0E0" class="TexVer1Negro">&nbsp;&nbsp;<? echo $row->estadio?></td>
        </tr>
      </table>
      <table width="298" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><img src="../../img/img_general/spacer.gif" width="298" height="1"></td>
        </tr>
      </table>
      <table width="298" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td width="147" bgcolor="#A8A8A8" class="TexVer1Blanca">&nbsp;&nbsp;Ganador: 
          </td>
          <td bgcolor="#000000" width="1"><img src="../../img/img_general/spacer.gif" width="1" height="15"></td>
          <td width="150" bgcolor="#E0E0E0" class="TexVer1Negro">&nbsp;&nbsp;<? echo $row->ganador?></td>
        </tr>
      </table>
      <table width="298" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><img src="../../img/img_general/spacer.gif" width="298" height="1"></td>
        </tr>
      </table>
      <table width="298" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td width="147" bgcolor="#A8A8A8" class="TexVer1Blanca">&nbsp;&nbsp;Resultado 
          </td>
          <td bgcolor="#000000" width="1"><img src="../../img/img_general/spacer.gif" width="1" height="15"></td>
          <td width="150" bgcolor="#E0E0E0" class="TexVer1Negro">&nbsp;&nbsp;<? echo $row->resultado?></td>
        </tr>
      </table>
      <table width="298" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><img src="../../img/img_general/spacer.gif" width="298" height="1"></td>
        </tr>
      </table>
      <table width="298" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td width="147" bgcolor="#A8A8A8" class="TexVer1Blanca">&nbsp;&nbsp;Condici&oacute;n: 
          </td>
          <td bgcolor="#000000" width="1"><img src="../../img/img_general/spacer.gif" width="1" height="15"></td>
          <td width="150" bgcolor="#E0E0E0" class="TexVer1Negro">&nbsp;&nbsp;<? echo $row->condicion?></td>
        </tr>
      </table>
      <table width="298" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><img src="../../img/img_general/spacer.gif" width="298" height="1"></td>
        </tr>
      </table>
    </td>
    <td bgcolor="#000000" width="1"><img src="../../img/img_general/spacer.gif" width="1" height="15"></td>
  </tr>
</table>
<?
	}
}
?> <? include "../../include/foother_ow.php3" ?> 
<p>&nbsp;</p>
</body>
</html>
