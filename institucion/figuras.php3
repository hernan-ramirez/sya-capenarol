<table width="95%" border="0" cellspacing="3" cellpadding="3" align="center">
                <tr> 
                  <td height="430"> 
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
                        <td><font face="Arial, Helvetica, sans-serif" size="2"><b><font color="#000000">Figuras 
                          Hist&oacute;ricas </font></b></font></td>
                      </tr>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr bgcolor="#000000"> 
                        <td><img src="../img/img_general/spacer.gif" width="150" height="1"></td>
                      </tr>
                    </table>
                    <br>
                    <table width="405" border="0" cellspacing="0" cellpadding="0">
                      <tr> 
                        
          <td width="180" valign="bottom" align="right"> <?
$query1="SELECT id,nombre FROM penarol_figuras";
 
$result=mysql_query($query1);

if ($result !=0) {
	while ($row=mysql_fetch_object($result)){
?> <a href="javascript:openwin('figuras_ow.php3?figuras=<? echo $row->id ?>','figuras<? echo $row->id ?>','width=340,height=250,scrollbars=1')" class="TexVer1Negro"><? echo $row->nombre ?></a><br>
            <?
	}
}
?> </td>
                        <td width="225">
                          <table width="225" border="0" cellspacing="0" cellpadding="0">
                            <tr> 
                              <td><img src="../img/img_institucion/figuras/miguez.gif" width="225" height="382"></td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>
                    <p><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><b><font color="#FFFFFF" size="1"> 
                      </font></b></font></p>
                  </td>
                </tr>
              </table>