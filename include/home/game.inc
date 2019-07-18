                  <table border="0" cellspacing="0" cellpadding="0" width="110">
                    <tr> 
                      <td align="right" background="img/img_general/spacer.gif" class="TexVer1Blanca"> 
                        <b>Pe&ntilde;arol Game </b></td>
                      <td><img src="img/img_general/curva_n_der.gif" width="12" height="13"></td>
                    </tr>
                    <tr> 
     <td bgcolor="#F8D400" background="img/img_general/backer.gif"><img src="img/img_general/backer.gif" width="1" height="1"></td>
    <td bgcolor="#F8D400" background="img/img_general/backer.gif"><img src="img/img_general/backer.gif" width="1" height="1"></td>
                    </tr>
                  </table>
                  <table width="207" border="0" cellspacing="0" cellpadding="0" bgcolor="#000000" background="img/img_general/spacer.gif">
                    <tr bgcolor="#000000"> 
                      <td align="center"><b><span class="TexVer1Naranja">&Uacute;ltimos</span> 
                        <span class="TexAri1Blanca">Partidos</span></b></td>
                      <td align="center"><b><span class="TexVer1Naranja">Pr&oacute;ximos</span> 
                        <span class="TexAri1Blanca">Partidos</span></b></td>
                    </tr>
                    <tr> 
                      <td height="51"> 
                        <table width="104" border="0" cellspacing="1" cellpadding="1" align="center">
<%
$result = mysql_query("select * from partidos where cargado='1' order by date desc");
$num = 0;
while ($row = mysql_fetch_array($result)) {
$num++;
if ($num > 4) {
break;
}
$resultado = explode("-", $row[resultado]);
%>
                          <tr bgcolor="#F8D400"> 
                            <td bgcolor="#999999" height="8" background="img/img_general/gris_oscu.gif" class="TexAri1Blanca"><b><a href="javascript:openwin('primera_div/ficha/?id=<% echo $row[id] %>','ultimo_partido','width=320,height=320,scrollbars=1')" class="TexAri1Blanca"><% echo $row[rival] %></a></b></td>
                            <td width="30" bgcolor="#000000"> 
                              <table width="100%" border="1" cellspacing="0" cellpadding="0" bordercolorlight="#CCCCCC" bordercolordark="#666666" vspace="0" hspace="0">
                                <tr bgcolor="#000000" align="center"> 
                                  <td class='<%
                                  if ($row[local] == 1) {
                                  print "TexVer1Naranja";
                                  } else {
                                  print "TexAri1Blanca";
                                  }
                                  %>'><b><% echo $resultado[0] %>
                                    <span class='<%
                                  if ($row[local] != 1) {
                                  print "TexVer1Naranja";
                                  } else {
                                  print "TexAri1Blanca";
                                  }
                                  %>'>-<% echo $resultado[1] %></span></b> 
                                  </td>
                                </tr>
                              </table>
                            </td>
                          </tr>
<%
}
%>

                        </table>
                      </td>
                      <td height="51"> 
                        <table width="104" border="0" cellspacing="1" cellpadding="1" bgcolor="#000000" align="center">

<%
$result = mysql_query("select * from partidos where cargado='0' order by date");
$num = 0;
while ($row = mysql_fetch_array($result)) {
$num++;
if ($num > 4) {
break;
}
$date = explode("-", $row[date]);
%>
                          <tr bgcolor="#F8D400"> 
                            <td bgcolor="#C8CCC8" height="15" background="img/img_general/gris.gif" class="TexAri1Negra"><% echo $row[rival] %></td>
                            <td width="30" bgcolor="#000000" height="15" align="center"> 
                              <table width="100%" border="1" cellspacing="0" cellpadding="0" bordercolorlight="#CCCCCC" bordercolordark="#666666" vspace="0" hspace="0">
                                <tr bgcolor="#000000"> 
                                  <td class="TexVer1Blanca"><% echo "$date[2]/$date[1]" %></td>
                                </tr>
                              </table>
                            </td>
                          </tr>

<%
}
%>
                        </table>
                      </td>
                    </tr>
                  </table>



