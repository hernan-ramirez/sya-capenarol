<table width="95%" border="0" cellspacing="3" cellpadding="3" align="center">
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
                        
          <td class="TexVer2Negra">Copas Obtenidas</td>
                      </tr>
                    </table>
                    <br>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr bgcolor="#000000"> 
                        <td><img src="../img/img_general/spacer.gif" width="150" height="1"></td>
                      </tr>
                    </table>
                    <table width="408" border="0" cellspacing="0" cellpadding="0">
                      <tr bgcolor="#000000" class="TexVer1Blanca" align="right"> 
                        <td height="15" class="TexVer1Blanca"> Principales Copas Obtenidas&nbsp;&nbsp; 
                        </td>
                      </tr>
                      <tr> 
                        <td>
<?
$query1="SELECT id,nombrecopa,anio FROM penarol_copas";
 
$result=mysql_query($query1);

if ($result !=0) {
	while ($row=mysql_fetch_object($result)){
?>
<img src="../img/img_general/go.gif" width="12" height="10">&nbsp;
		<a href="javascript:openwin('copas_ow.php3?copa=<? echo $row->id ?>','copas<? echo $row->id ?>','width=155,height=260,scrollbars=0')" class="TexVer1Negro"><? echo $row->nombrecopa?>&nbsp<? echo $row->anio ?></a><br>
		
<?
	}
}
?>
						</td>
                      </tr>
                    </table>

                  </td>
                </tr>
              </table>