<? 
$result = mysql_query("select * from noticias_primera where nivel='1'");
$row = mysql_fetch_array($result);
?>

<link rel="stylesheet" href="../style/general_style.css"> 
<table width="95%" border="0" cellspacing="3" cellpadding="3">
  <tr> 
    <td> 
      <table width="233" border="00" cellspacing="0" cellpadding="0" height="33" align="right">
        <tr> 
          <td><img src="../img/img_primera_div/banner_cadillacs_233x33.gif" width="233" height="33"></td>
        </tr>
      </table>
      <table width="150" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr> 
          <td class="TexAri2Negro"><b>Informaci&oacute;n</b></td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr bgcolor="#000000"> 
          <td><img src="../img/img_general/spacer.gif" width="150" height="1"></td>
        </tr>
      </table>
      <table width="408" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td> 
            <p><font face="Verdana, Arial, Helvetica, sans-serif" size="4"><b><? echo $row[titulo] ?></b></font><br>
              <span class="TexVer1Blanca"><b><?
 		$num = 0;
		$words = explode ( " ", $row[contenido]); 
		while ( list(, $word) = each ($words) ) {
		  $num = strlen($word) + $num ;
		  if ($num < $row[chars]) {
		    echo "$word ";
		  } else {
		    break;
		  } 
		} 
          ?></b></span><a href="index.php3?idnota=<? echo $row[id] ?>"><img src="../img/img_general/go.gif" width="12" height="10" vspace="1" hspace="3" border="0"></a></p>
<? 
$result = mysql_query("select * from noticias_primera where nivel='2'");
$row = mysql_fetch_array($result);
?>
            <p><span class="TexVer4Negro-Titulos"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="4"><? echo $row[titulo] ?></font></b></span><br>
              <span class="TexVer1Blanca"><b><?
 		$num = 0;
		$words = explode ( " ", $row[contenido]); 
		while ( list(, $word) = each ($words) ) {
		  $num = strlen($word) + $num ;
		  if ($num < $row[chars]) {
		    echo "$word ";
		  } else {
		    break;
		  } 
		} 
          ?></b></span><a href="index.php3?idnota=<? echo $row[id] ?>"><img src="../img/img_general/go.gif" width="12" height="10" vspace="1" hspace="3" border="0"></a></p>
          </td>
        </tr>
        <tr valign="top"> 
          <td height="147"> <br>
            <table width="408" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="59" width="264" align="center" valign="top">
<? 
$result = mysql_query("select * from noticias_primera where nivel='3'");
$row = mysql_fetch_array($result);
?> 
                  <table width="260" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td class="TexVer2Negra"><b>Sab&eacute; M&aacute;s </b></td>
                    </tr>
                    <tr valign="top"> 
                      <td height="47" class="TexVer1-33"><a href="index.php3?idnota=<? echo $row[id] ?>" class="TexVer1Negro"><b><? echo $row[titulo] ?>:</b></a><b><a href="index.php3?page=editorial" class="TexVer1Negro"> 
                        </a></b><a href="index.php3?idnota=<? echo $row[id] ?>" class="TexVer1Negro"><br>
                        <?
 		$num = 0;
		$words = explode ( " ", $row[contenido]); 
		while ( list(, $word) = each ($words) ) {
		  $num = strlen($word) + $num ;
		  if ($num < $row[chars]) {
		    echo "$word ";
		  } else {
		    break;
		  } 
		} 
          ?>
						</a><br>
<? 
$result = mysql_query("select * from noticias_primera where nivel='4'");
$row = mysql_fetch_array($result);
?> 
                        <a href="index.php3?idnota=<? echo $row[id] ?>" class="TexVer1Negro"><b><? echo $row[titulo] ?>:</b></a> 
                        <a href="index.php3?idnota=<? echo $row[id] ?>" class="TexVer1Negro">
						<?
 		$num = 0;
		$words = explode ( " ", $row[contenido]); 
		while ( list(, $word) = each ($words) ) {
		  $num = strlen($word) + $num ;
		  if ($num < $row[chars]) {
		    echo "$word ";
		  } else {
		    break;
		  } 
		} 
          ?>
						</a><br>

<? 
$result = mysql_query("select * from noticias_primera where nivel='5'");
$row = mysql_fetch_array($result);
?> 


                        <a href="index.php3?page=rivas" class="TexVer1Negro"><b><? echo $row[titulo] ?></b>
						<br><?
 		$num = 0;
		$words = explode ( " ", $row[contenido]); 
		while ( list(, $word) = each ($words) ) {
		  $num = strlen($word) + $num ;
		  if ($num < $row[chars]) {
		    echo "$word ";
		  } else {
		    break;
		  } 
		} 
          ?>
                        </a> 
                        <br>
                      </td>
                    </tr>
                  </table>
                </td>
                <td valign="top" height="59" width="10"><br>
                  <img src="../img/img_general/spacer.gif" width="1" height="100%"> 
                </td>
                <td valign="top" height="59" width="128"> <br>
                  <table width="128" border="0" cellspacing="0" cellpadding="1">
                    <tr> 
                      <td width="16" height="8" bgcolor="#FFCC00"><img src="../img/img_general/go.gif" width="12" height="10" vspace="1" hspace="3"></td>
                      <td height="8" class="TexAri1Negra">MULTIMEDIA</td>
                    </tr>
                    <tr> 
                      <td width="16" bgcolor="#FFCC00"><img src="../img/img_primera_div/tv.gif" width="16" height="16"></td>
                      <td class="TexAri1Negra">El Entrenamiento</td>
                    </tr>
                    <tr> 
                      <td width="16" bgcolor="#FFCC00"><img src="../img/img_primera_div/tv.gif" width="16" height="16"></td>
                      <td bgcolor="#FFCC00" class="TexAri1Negra">Pe&ntilde;arol 
                        Verdad </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      <p>&nbsp;</p>
    </td>
  </tr>
</table>
