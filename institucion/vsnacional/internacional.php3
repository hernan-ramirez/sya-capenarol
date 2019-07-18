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
                      <tr> 
                        <td><font face="Arial, Helvetica, sans-serif" size="2"><b><font color="#000000">Cl&aacute;sicos</font></b></font></td>
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
            <p><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><br>
              </font><font face="Verdana, Arial, Helvetica, sans-serif" size="4"><b>Pe&ntilde;arol 
              vs. Nacional<br>
              (Copas Internacionales)</b></font></p>
            <p><font size="1" face="Verdana, Arial, Helvetica, sans-serif">Los 
              torneos internacionales interclubes han enfrentado ocasionalmente 
              a los clásicos rivales del fútbol profesional uruguayo. Así comenzó 
              una estadística de partidos con nivel internacional, que en su conjunto 
              favorecen a los aurinegros. Los primeros partidos fueron los célebres 
              torneos nocturnos de verano, organizados por la Liga Argentina, 
              a partir de enero de 1936. Participaron los cinco grandes del fútbol 
              de la A.F.A. (Boca Juniors, Independiente, Racing, River Plate y 
              San Lorenzo), dos de Rosario (Newell's Old Boys y Rosario Central), 
              Nacional y Peñarol. En 1938 se agregó Estudiantes de La Plata, en 
              1943 se redujo a ocho participantes y en 1944 se jugó el último 
              nocturno en dos series de cinco clubes. Un paréntesis de la actividad 
              rioplatense, por razones políticas, llevó al olvido estos torneos. 
              Los clásicos con entorno internacional reaparecieron en la célebre 
              Copa Montevideo, con presencia en el estadio Centenario de clubes 
              europeos. Fueron siete ediciones bien remarcadas (entre 1953 y 1979), 
              de gran nivel en las dos primeras. Desde luego que en 1960 comenzó 
              la Copa Libertadores de América que, al programar partidos con dos 
              clubes por país, dio nuevamente vida a la actividad clásica uruguaya 
              dentro de un campeonato internacional.</font></p>
          </td>
                      </tr>
                      <tr valign="top"> 
                        <td height="147"> <br>
                          <table width="200" border="0" cellspacing="0" cellpadding="00" bgcolor="#000000">
                            <tr>
                              <td class="TexVer1Blanca">Partidos jugados en cada 
                                período</td>
                            </tr>
                          </table>
                          
            <table width="408" border="0" cellspacing="1" cellpadding="1" bgcolor="#000000">
              <?

$query1="SELECT decada FROM penarol_nacional_int"; 
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
				$query3="SELECT id,anio FROM penarol_nacional_int WHERE anio='$i' LIMIT 1";
				$result3=mysql_query($query3);
				if (mysql_num_rows($result3) !=0) {
					while ($row3=mysql_fetch_object($result3)){
?> 
                <td width="38" bgcolor="#FFFFFF" onMouseOver="mOvr(this,'#C8C0B0');" onMouseOut="mOut(this,'#FFFFFF');"><a href="javascript:openwin('vsnacional/internacional_ow.php3?anio=<? echo $row3->anio?>','internacional<? echo $row3->anio?>','width=325,height=150,scrollbars=1')" class="TexVer1Negro"><? echo $row3->anio?></a></td>
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
            <font face="Verdana, Arial, Helvetica, sans-serif" size="2"></font></td>
                      </tr>
                    </table>
                    <p><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><b><font color="#FFFFFF" size="1"> 
                      </font></b></font></p>
                  </td>
                </tr>
              </table>