<?
$result = mysql_query ("select * from encuestas where nivel='1'");
$row = mysql_fetch_array($result);
$pregunta = $row[pregunta];
$result = mysql_query("select * from respuestas where encuesta_id='$row[id]' order by id");
?>
                  <table width="110" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td colspan="2"><img src="img/img_general/backer.gif" width="1" height="2"></td>
                    </tr>
                    <tr> 
                      <td colspan="2"><img src="img/img_general/spacer.gif" width="108" height="1"></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#FFFFFF" background="img/img_general/blanco.gif" colspan="2" class="TexVer1Negro"> 
                        <div align="center"><? echo $pregunta ?></div>
                      </td>
                    </tr>
                    <tr> 
                      <td colspan="2"><img src="img/img_general/spacer.gif" width="108" height="1"></td>
                    </tr>
                    <tr bgcolor="#666666"> 
                      <td background="img/img_general/gris.gif" colspan="2" class="TexVer1Negro"> 
                  <form name="encuesta" method="POST" action="encuesta/index.html" target="Encuesta">
                          <p><?
$num = 1;
while($row = mysql_fetch_array($result)) { ?>
							<input type="radio" name="checkbox" value="<? echo $row[id] ?>"><? echo $row[respuesta] ?><br>
<?
$num++;
}
?>

                            </p>
                        </form>
                      </td>
                    </tr>
                    <tr background="img/img_general/spacer.gif"> 
                      <td bgcolor="#000000" height="5" width="98"> 
                        
      <div align="center"><b><a href="#" onClick="javascript:sub()" class="TexAri1Blanca">Votar</a></b></div>
                      </td>
                      <td bgcolor="#6699FF" background="img/img_general/backer.gif" width="13"> 
                        <div align="right"><img src="img/img_general/borde_enc.gif" width="13" height="13"></div>
                      </td>
                    </tr>
                  </table>