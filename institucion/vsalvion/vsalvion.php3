<table width="95%" border="0" cellspacing="3" cellpadding="3" align="center">
                <tr> 
                  <td height="223"> 
                    <table width="233" border="00" cellspacing="0" cellpadding="0" height="33" align="right">
                      <tr> 
                        <td><img src="../img/img_primera_div/banner_cadillacs_233x33.gif" width="233" height="33"></td>
                      </tr>
                    </table>
                    <table width="150" border="0" cellspacing="0" cellpadding="0">
                      <tr> 
                        <td>&nbsp;</td>
                      </tr>
                      
        <tr class="TexVer2Negra"> 
          <td><b>Cl&aacute;sicos</b></td>
                      </tr>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr bgcolor="#000000"> 
                        <td><img src="../img/img_general/spacer.gif" width="150" height="1"></td>
                      </tr>
                    </table>
                    <table width="408" border="0" cellspacing="0" cellpadding="0">
                      
        <tr> 
          <td> <b><font face="Verdana, Arial, Helvetica, sans-serif" size="4">Pe&ntilde;arol 
            vs. Albion</font></b><br>
            <br>
            <b><font size="1" face="Verdana, Arial, Helvetica, sans-serif">Estadística: 
            Partidos jugados (y programados) 49; ganados por Albion 23, empatados 
            8 y ganados por Peñarol 18. Goles azulgranas 91 y aurinegros 78.Albion: 
            Fundado el 1° de junio de 1891, fue el ideólogo y fundador de la primera 
            Liga Uruguaya (Uruguay Association Football League), hoy A.U.F. Fue 
            Subcampeón en 1900; cuarto en 1901, quinto en 1902 y 1903; no se jugó 
            en 1904 por la Guerra Civil; fue quinto en 1905, abandonando en los 
            últimos partidos. No se anotó en 1906 y 1907, pero regresó en 1908, 
            sin completar el campeonato. Se disolvió en 1909. </font> </b></td>
                      </tr>
                      <tr valign="top"> 
                        <td height="147"> <br>
                          <table width="200" border="0" cellspacing="0" cellpadding="00" bgcolor="#000000">
                            <tr>
                              <td class="TexVer1Blanca">Partidos jugados en cada 
                                per&iacute;odo</td>
                            </tr>
                          </table>

            <table width="408" border="0" cellspacing="1" cellpadding="1" bgcolor="#000000">
              <?

$query1="SELECT decada FROM penarol_albion"; 
$result=mysql_query($query1);
$decada=1;
if ($result !=0) {
	echo "<tr>";
	while ($row=mysql_fetch_object($result)){
		if ($row->decada!=$decada){
?> 
              <tr align="center"> 
                <td width="38" bgcolor="#CCCCCC" class="TexVer1Negro"><? echo $row->decada ?></td>
              <?

		$decada=$row->decada;
		$ifin=($decada+10);
			for ($i=$decada; $i<$ifin; $i++){
?> <?
				$query3="SELECT id,anio FROM penarol_albion WHERE anio='$i' LIMIT 1";
				$result3=mysql_query($query3);
				if (mysql_num_rows($result3) !=0) {
					while ($row3=mysql_fetch_object($result3)){
?> 
                <td width="38" bgcolor="#FFFFFF" onMouseOver="mOvr(this,'#C8C0B0');" onMouseOut="mOut(this,'#FFFFFF');"><a href="javascript:openwin('vsalvion/vsalvion_ow.php3?anio=<? echo $row3->anio?>','albion<? echo $row3->anio?>','width=325,height=150,scrollbars=1')" class="TexVer1Negro"><? echo $row3->anio?></a></td>
              <?
							}
					}else{
?> 
                <td width="38" bgcolor="#FFFFFF" class="TexVer1Negro">--</td>
              <?
					}
				mysql_free_result($result3);
?> <?
			}
       	echo "</tr><tr>";
		}
	}
}
mysql_free_result($result);
?> </tr>
            </table>
          </td>
                      </tr>
                    </table>

                  </td>
                </tr>
              </table>