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
            <p><b><b><font color="#000000" face="Verdana, Arial, Helvetica, sans-serif" size="4">Peñarol 
              vs. Nacional<br>
              (Copa Uruguaya)</font></b></b></p>
            <p><font face="Verdana, Arial, Helvetica, sans-serif" size="1">Los 
              clásicos del fútbol uruguayo son los que más veces se han jugado 
              en el mundo y las estadísticas mandan: Peñarol es quien más veces 
              ha vencido. El primero de la época amateur. El primero de la época 
              profesional. El primero en el Parque Central. El primero en la cancha 
              de Pocitos. En Las Acacias. En el Centenario. El primer clásico 
              vespertino, el primero nocturno, también el primero que se trasmitió 
              por radio, como si la historia coherentemente siguiera respetando 
              el mandato: el primer clásico de la Liguilla Pre-Libertadores, el 
              primer clásico Copa de Oro de los Grandes y así sucesivamente hasta 
              lo anecdótico del primer clásico por definición de penales por un 
              Campeonato Uruguayo con Peñarol vencedor justamente el día 6 de 
              enero de 1987. La historia de los clásicos es extensa y hermosa. 
              El fútbol, en sus instancias deportivas al rojo vivo como son los 
              clásicos, necesita de una posición definida ante la lucha: vencer. 
              Que no es ganar. Es doblar cuando la otra parte quiera hacer torcer 
              un destino. Es estar en nuestro puesto para el parcial, el jugador, 
              el dirigente, en esa comunión permanente de vibrar todos. Es hacerle 
              sentir al rival que las pelotas divididas son para lucharlas entre 
              dos y no para sacar la pierna. Es demostrar la clase y la técnica, 
              o la fibra y el temperamento, según sea el partido. Es una actitud 
              ante la lucha por encima del toque, las paredes, las llegadas. Es 
              vencer aún no ganando, por un estilo y una mística.</font></p>
          </td>
                      </tr>
                      <tr valign="top"> 
                        <td height="147"> <br>
                          <table width="200" border="0" cellspacing="0" cellpadding="00" bgcolor="#000000">
                            <tr> 
                              <td class="TexVer1Blanca">Estadísticas</td>
                            </tr>
                          </table>
                          <table width="408" border="0" cellspacing="1" cellpadding="1" bgcolor="#000000">
                            <tr class="TexAri1Negra" bgcolor="#FFFFFF"> 
                              
                <td class="TexAri1Negra"> <a href="javascript:openwin('vsnacional/uru_masjugaron.php3','masjugaron','width=325,height=260,scrollbars=1')" class="TexVer1Negro">Los 
                  que más veces jugaron (al menos 10 presencias).</a> </td>
                            </tr>
                            <tr bgcolor="#FFFFFF"> 
                              
                <td class="TexAri1Negra"> <a href="javascript:openwin('vsnacional/uru_goleadores.php3','goleadores','width=325,height=260,scrollbars=1')" class="TexVer1Negro">Goleadores 
                  Aurinegros en los clásicos. </a> </td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                              
                <td><a href="javascript:openwin('vsnacional/uru_extranjeros.php3','extrangeros','width=325,height=260,scrollbars=1')" class="TexVer1Negro">Futbolistas 
                  extranjeros que jugaron en los clásicos.</a></td>
                            </tr>
                          </table>
                          <br>
                          <table width="200" border="0" cellspacing="0" cellpadding="00" bgcolor="#000000">
                            <tr>
                              <td class="TexVer1Blanca">Partidos jugados en cada 
                                período</td>
                            </tr>
                          </table>
                          
            <table width="408" border="0" cellspacing="1" cellpadding="1" bgcolor="#000000">
              <?

$query1="SELECT decada FROM penarol_nacional"; 
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
				$query3="SELECT id,anio FROM penarol_nacional WHERE anio='$i' LIMIT 1";
				$result3=mysql_query($query3);
				if (mysql_num_rows($result3) !=0) {
					while ($row3=mysql_fetch_object($result3)){
?> 
                <td width="38" bgcolor="#FFFFFF" onMouseOver="mOvr(this,'#C8C0B0');" onMouseOut="mOut(this,'#FFFFFF');"><a href="javascript:openwin('vsnacional/uru_ow.php3?anio=<? echo $row3->anio?>','uru<? echo $row3->anio?>','width=325,height=150,scrollbars=1')" class="TexVer1Negro"><? echo $row3->anio?></a></td>
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