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
                        
          <td class="TexAri2Negro"><b>Sab&eacute; M&aacute;s</b></td>
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
            <? 
            $result = mysql_query("select * from noticias_juveniles where id='$idnota'");
            $row = mysql_fetch_array($result);
            ?> 
            <p><span class="TexVer4Negro-Titulos"><b><? echo $row[titulo] ?></b></span></p>
            <p class="TexVer1Blanca">

            <? echo $row[contenido] ?>

            </p>
            <p><br>
            </p>
            <p></p>
            <p class="TexVer1Blanca"><b> </b> </p>
            </td>
                    </tr>
                  </table>
                  <table width="408" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td valign="bottom" width="300"><img src="../img/img_general/spacer.gif" width="300" height="1"></td>
                      
          <td width="108" valign="bottom"><b><img src="../img/img_general/estrellita.gif" width="21" height="18"> 
            <a href="index.php3" class="TexVer1Negro">PORTADA</a></b></td>
                    </tr>
                  </table>
                  <p>&nbsp;</p>
                  </td>
                </tr>
              </table>
