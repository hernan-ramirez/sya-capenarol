 
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
          <td><b>Clásicos</b></td>
                      </tr>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr bgcolor="#000000"> 
                        <td><img src="../img/img_general/spacer.gif" width="150" height="1"></td>
                      </tr>
                    </table>
                    <table width="408" border="0" cellspacing="0" cellpadding="0">
                      <tr> 
                        
          <td> <b><br>
            <font size="4" face="Verdana, Arial, Helvetica, sans-serif">Peñarol 
            vs. Nacional<br>
            (Amateurismo)</font><br>
            </b><font face="Verdana, Arial, Helvetica, sans-serif" size="1"><br>
            <b> Aparece Nacional</b></font> 
            <p><font face="Verdana, Arial, Helvetica, sans-serif" size="1">El 
              14 de mayo de 1899, seg&uacute;n se dice tradicionalmente, naci&oacute; 
              el Club Nacional de Football. No hay constancia escrita de su fundaci&oacute;n, 
              siendo la fusi&oacute;n de varios equipos como el Universitario, 
              el Uruguay Athletic de la Uni&oacute;n, el Montevideo y el Defensa. 
              El 15 de julio de 1900 jug&oacute; el primer partido (amistoso) 
              contra Pe&ntilde;arol en el Gran Parque Central. Los aurinegros 
              ganaron 2 a 0 con goles de Acebedo. El equipo form&oacute; con: 
              Anselmo Faustino Fabre, Ricardo de los R&iacute;os, Jaime Buchanan, 
              Carlos Ward, Lorenzo Mazzuco, Alfredo Jones, Juan Pena, Edmundo 
              Acebedo (capit&aacute;n), Tom&aacute;s Lewis, Guillermo Davies y 
              Carlos Lindebald. Ese d&iacute;a comenz&oacute; la rivalidad cl&aacute;sica 
              entre dos clubes criollos, aut&eacute;nticos representantes del 
              f&uacute;tbol oriental. Nacional solicit&oacute; afiliaci&oacute;n 
              a la Liga el 22 de marzo de 1901 y fue aceptado de inmediato. Tom&oacute; 
              parte en la Copa Uruguaya de ese a&ntilde;o y finaliz&oacute; segundo 
              de Pe&ntilde;arol.</font></p>
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

$query1="SELECT decada FROM penarol_nacional_amateur"; 
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
				$query3="SELECT id,anio FROM penarol_nacional_amateur WHERE anio='$i' LIMIT 1";
				$result3=mysql_query($query3);
				if (mysql_num_rows($result3) !=0) {
					while ($row3=mysql_fetch_object($result3)){
?> 
                <td width="38" bgcolor="#FFFFFF" onMouseOver="mOvr(this,'#C8C0B0');" onMouseOut="mOut(this,'#FFFFFF');"><a href="javascript:openwin('vsnacional/amateur_ow.php3?anio=<? echo $row3->anio?>','amateur<? echo $row3->anio?>','width=325,height=150,scrollbars=1')" class="TexVer1Negro"><? echo $row3->anio?></a></td>
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
                    
      <p>&nbsp;</p>
                  </td>
                </tr>
              </table>