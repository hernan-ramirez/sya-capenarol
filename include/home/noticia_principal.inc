		<% 
		$result = mysql_query("select titulo,contenido,imagenchica from noticias where nivel = '1'");
		$noticia = mysql_fetch_array($result);
		%>
		<td valign="middle" width="220" align="right">
		<a href="javascript:openwin('noticias/?nivel=1&nota=noticias','Principal','width=420,height=420,scrollbars=1')">
		<span class="TexVer1-33">
                <b><% echo "$noticia[0]"; %></b><br>
		<% 
 		$num = 0;
		$words = explode ( " ", $noticia[1]); 
		while ( list(, $word) = each ($words) ) {
		  $num = strlen($word) + $num ;
		  if ($num < $char_noticia) {
		    echo "$word ";
		  } else {
		    break;
		  } 
		} 
		%>
                </span></a>
                </td>
                <td width="150" align="right" valign="middle">
		<img src="img/img_noticias/chicas/<% echo $noticia[2] %>" width="135" height="90" border="1" vspace="5">
		</td>


