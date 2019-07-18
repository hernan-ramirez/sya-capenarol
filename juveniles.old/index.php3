<?
include "../include/db_connect.inc";

if(!isset($page))
{
	$page = "inicio";
}

?>

<html>
<head>
<title>Divisiones Juveniles</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="../style/general_style.css" type="text/css">
<style type="text/css">
<!--
a:link {  text-decoration: none}
a:visited {  text-decoration: none}
-->
</style>
</head>
<script language="JavaScript">
<!-- 
function openwin(theURL,winName,features) {
  window.open(theURL,winName,features);
}

function mOvr(src,clrOver) { 
	if (!src.contains(event.fromElement)) { 
	src.style.cursor = 'hand'; 
	src.bgColor = clrOver;
	}
} 

function mOut(src,clrIn) { 
	if (!src.contains(event.toElement)) {
	src.style.cursor = 'default'; 
	src.bgColor = clrIn; }
}

function submitform(nombre){
	var sent="document." + nombre + ".submit()";
	eval(sent);
	return true;
}

//-->
</Script>
<body marginwidth="0" marginheight="0" topmargin="0" leftmargin="0" bgcolor="#FFFFFF">
<? include "header.php3" ?>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    
  <tr bgcolor="#FFCC00"> 
    <td> 
      <table width="760" border="0" cellspacing="0" cellpadding="0">
        <tr> 
            <td width="298" bgcolor="#C8C0B0" valign="top"> <? include "menu.php3" ?> 
<? include "../include/comunidad.php3" ?>
            </td>
            <td width="4" bgcolor="#000000">&nbsp;</td>
            
          <td width="16" bgcolor="#999999"><? include "../include/hitbox.inc" ?></td>
            
          <td width="442" bgcolor="#FFCC00" valign="top"><? include $page . ".php3" ?></td>
        </tr>
      </table>
      
    </td>
  </tr>
</table>
<? include "../include/foother.php3" ?>
</body>
</html>
