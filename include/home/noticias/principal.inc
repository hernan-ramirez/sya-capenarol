<% 
$result = mysql_query("select titulo,contenido,img_chi,img_gde from noticias where nivel = '1'");
$noticia = mysql_fetch_array($result);
%>
              <p align="center">
              <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
	      <b><% echo $noticia[0]; %></b></font></p>
              <p align="left"><font size="1" color="#FFFFFF"><b>
              <img src="/img/img_noticias/<% echo $noticia[3] %>" width="200" height="150" vspace="5" hspace="5" align="left" border="1"></b></font></p>
              <p><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
	      <% echo $noticia[1] %></font></p>
