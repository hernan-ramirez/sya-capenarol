<%
$result = mysql_query("select titulo,contenido,imagenchica from noticias where nivel = '$nivel'");
$noticia = mysql_fetch_array($result);
%>

<img src="img/img_noticias/chicas/<% echo $noticia[2] %>" width="43" height="48" vspace="3" align="left" border="1">
<a href="javascript:openwin('noticias/?nivel=<% echo $nivel %>&nota=<% echo $nota %>','nivel<% echo $nivel %>','width=420,height=420,scrollbars=1')">
<b><span class="TexVer1-33"><% echo $noticia[0] %></span></b>
<span class="TexVer1-33">
                <%
		$num = 0;
                $words = explode ( " ", $noticia[1]);
                while ( list(, $word) = each ($words) ) {
                  $num = strlen($word) + $num ;
                  if ($num < $char_unoticia) {
                    echo "$word ";
                  } else {
                    break;
                  }
                }
                %>
</span></a> 
