<%
$result = mysql_query("select * from lafrase where nivel = '1'");
echo mysql_error();

$row = mysql_fetch_array($result);
%>
                        <b><% echo $row[titulo] %></b><br>
                        <% echo $row[contenido] %>
