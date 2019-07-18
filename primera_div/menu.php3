<img src="../img/img_primera_div/primera_img.gif" width="297" height="46" vspace="0" hspace="0"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                  <td><img src="../img/img_primera_div/data.gif" width="298" height="20" vspace="0" hspace="0"></td>
              </tr>
            </table>

<table width="298" border="0" cellspacing="0" cellpadding="0">
                <tr bgcolor="#666666"> 
                
    <td height="64"> 
      <table width="98%" border="0" cellspacing="1" cellpadding="1">
<%

$result = mysql_query("select * from noticias_primera");

while ($row = mysql_fetch_array($result)) {

%>

        <tr> 
          <td width="12" class="TexVer1Gris"><img src="../img/img_general/go.gif" width="12" height="10"></td>
          <td><a href="index.php3?idnota=<% echo $row[id] %>"><span  class="TexVer1Gris"><% echo $row[link] %></span></a></td>
        </tr>

<%
}
%>

      </table>
    </td>
    </tr>
</table>