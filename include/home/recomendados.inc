<%
$result = mysql_query("select * from recomendados"); 

while($row = mysql_fetch_array($result, 1)) {
%>

  <tr>
    <td><img src="img/img_general/flechita.gif" width="8" height="10" hspace="2"><a href="<% echo $row[url] %>">
    <span class="TexVer1-33"><% echo $row[titulo] %></span></a></td>
  </tr>

<%
}
%>
