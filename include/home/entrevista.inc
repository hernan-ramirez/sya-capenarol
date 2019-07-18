		<% 
		$result = mysql_query("select titulo,contenido,imagenchica from entrevistas where nivel = '1'");
		$noticia = mysql_fetch_array($result);
		%>
                <p><br>
<a href="javascript:openwin('noticias/?nivel=1&nota=entrevistas','nivel1','width=420,height=420,scrollbars=1')">
<img src="img/img_entrevistas/chicas/<% echo $noticia[2] %>" width="206" height="113" border="0"><br>
<span class="TexVer1Blanca"><b>
		<% 
		$words = explode ( " ", $noticia[1]); 
		while ( list(, $word) = each ($words) ) {
		  $num = strlen($word) + $num ;
		  if ($num < $char_entrevista) {
		    echo "$word ";
		  } else {
		    break;
		  } 
		} 
		%>
		</b></span><img src="img/img_general/go.gif" width="12" height="10" border="0"></a>
