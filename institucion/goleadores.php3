<table width="95%" border="0" cellspacing="3" cellpadding="3" align="center">
                <tr> 
                  <td> 
                    <table width="233" border="00" cellspacing="0" cellpadding="0" height="33" align="right">
                      <tr> 
                        
          <td><img src="../img/img_banners/468x60uoltecnologia2.gif" width="233" height="33"></td>
                      </tr>
                    </table>
                    <table width="150" border="0" cellspacing="0" cellpadding="0">
                      <tr> 
                        <td>&nbsp;</td>
                      </tr>
                      
        <tr> 
          <td class="TexVer2Negra"><b>Goleadores</b></td>
                      </tr>
                    </table>
                    <br>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr bgcolor="#000000"> 
                        <td><img src="../img/img_general/spacer.gif" width="150" height="1"></td>
                      </tr>
                    </table>
                    <table width="408" border="0" cellspacing="0" cellpadding="0">
                      
        <tr bgcolor="#000000" align="center"> 
          <td colspan="3" height="15" class="TexVer1Blanca"> <b>Goleadores de 
            Peñarol en la Copa Uruguaya durante la era profesional</b></td>
                      </tr>
                    </table>
                    
      <table width="408" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="15" bgcolor="#CCCCCC" align="center" class="TexVer1Negro"> 
            <b>A&ntilde;o</b></td>
          <td height="15" bgcolor="#CCCCCC" align="center" class="TexVer1Negro"> 
            <b>Nombre</b></td>
          <td height="15" bgcolor="#CCCCCC" align="center" class="TexVer1Negro"> 
            <b>Goles</b></td>
        </tr>
<?
$query1="SELECT id,nombre,anio,goles FROM penarol_historial_goleadores";
 
$result=mysql_query($query1);

if ($result !=0) {
	while ($row=mysql_fetch_object($result)){
?>
        <tr> 
          <td height="20" align="center" class="TexVer1Negro"><? echo $row->anio?></td>
          <td height="20" align="center" class="TexVer1Negro"><b><? echo $row->nombre?></b></td>
          <td height="20" align="center" class="TexVer1Negro"><? echo $row->goles?></td>
        </tr>
<?
	}
}
?>
      </table>
                    
      <p>&nbsp;</p>
                  </td>
                </tr>
              </table>