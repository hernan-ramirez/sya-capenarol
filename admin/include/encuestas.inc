<%
function muestra($id, $char_noticia) { 
  if (empty($id)) {
    $result = mysql_query("select * from noticias where nivel = '1'");
  } else {
    $result = mysql_query("select * from noticias where id = '$id'");
  }
    $noticia = mysql_fetch_array($result);
%>
<form name="primero" action="<% echo $PHP_SELF %>" method="POST">
<center>
  <table border="1" width="100%" cellspacing="0">
    <tr>
      <td width="50%" bgcolor="#C0C0C0">
        <p align="center"><font face="Verdana" size="2">Elegir noticia por título:</font></td>
    </tr>
    <tr>
      <td width="50%">
        <p align="center"><font face="Verdana" size="2"><select size="1" name="id" onchange="document.primero.submit()">
          <option value="nuevanoticia">Nueva Noticia</option>
          
          <% 
$resultado = mysql_query("select * from noticias"); 
while ($row = mysql_fetch_array($resultado)) {
  if ($noticia[titulo] == $row[titulo]) {  
    echo "<option value=\"$row[id]\" selected>$row[titulo]</option>\n";
  } else {
    echo "<option value=\"$row[id]\">$row[titulo]</option>\n";
  }
}
          %>  
        </select></font></td>
    </tr>
  </table>
</center>
</form>
<font face="Verdana" size="2">
<br>
</font>
<form name="segundo" action="<% echo $PHP_SELF %>" method="POST">
  <input type="hidden" name="a" value="a"><input type="hidden" name="id" value="<% echo $noticia[id] %>">
  <div align="center">
    <center>
    <table border="1" width="100%" cellspacing="0">
      <tr>
        <td bgcolor="#C0C0C0" colspan="2">
          <p align="center"><font face="Verdana" size="2">Titulo de esta noticia:</font></td>
      </tr>
      <tr>
        <td width="50%" align="center" colspan="2"><u><b><font face="Verdana" size="2"><input type="text" name="titulo" value="<% echo $noticia[titulo] %>" size="50"><br>
          </font>
          </b></u></td>
      </tr>
      <tr>
        <td width="50%" align="center" bgcolor="#C0C0C0">
          <p align="center"><font face="Verdana" size="2">Imagen de la página principal.</font></td>
        <td width="50%" align="center" bgcolor="#C0C0C0">
          <p align="center"><font face="Verdana" size="2">Cantidad de Caracteres en la página
          principal.</font></p>
        </td>
      </tr>
      <tr>
        <td width="50%" align="center">
            <font face="Verdana" size="2">
            <% if (empty($noticia[3])) { %>
          Espacio de la Imagen.
            <% } else { %>
          <img src="/img/img_noticias/chicas/<% echo $noticia[3] %>">
            <% } %>
          <br>
          <br>
          <select size="1" name="imagenchica" onchange="document.segundo.submit()">
            <%
   $handle = opendir('../../img/img_noticias/chicas');
   while ($file = readdir($handle)) {
     if ($file != ".." && $file != ".") {
       if ($file == $noticia[3] ) {
         echo "<option value=\"$file\" selected>$file</option>";
         } else {
         echo "<option value=\"$file\">$file</option>";
         }
      }  
   }
   closedir($handle); 
            %>
          </select><br>
          <br>
            </font>
          <table border="0" width="100%">
            <tr>
              <td width="100%" align="center"><a href="javascript:openwin('imagenes.html?nota=noticias&amp;size=chicas&amp;accion=agregar','formulario','width=400,height=100,scrollbars=1')"><font face="Verdana" size="2">Agregar
                Imagen</font></a></td>
            </tr>
            <tr>
              <td width="100%" align="center"><a href="javascript:openwin('imagenes.html?nota=noticias&amp;size=chicas&amp;accion=mostrar','formulario','width=400,height=250,scrollbars=1')"><font face="Verdana" size="2">Mostrar
                imagenes</font></a></td>
            </tr>
            <tr>
              <td width="100%" align="center"><a href="javascript:openwin('imagenes.html?nota=noticias&amp;size=chicas&amp;accion=borrar','formulario','width=400,height=100,scrollbars=1')"><font face="Verdana" size="2">Borrar
                imagen</font></a></td>
            </tr>
          </table>
          <p align="center"><font face="Verdana" size="2"><br>
          <br>
          </font></p>
        </td>
        <td width="50%" align="center">
          <p align="center"><font face="Verdana" size="2"><input type="text" name="char" size="3" value="<% echo $char_noticia %>"></font></p>
        </td>
      </tr>
      <tr>
        <td width="50%" align="center" bgcolor="#C0C0C0">
          <p align="center"><font face="Verdana" size="2">Imagen del Pop Up</font></p>
        </td>
        <td width="50%" align="center" bgcolor="#C0C0C0">
          <p align="center"><font face="Verdana" size="2">Texto de la Noticia.</font></p>
        </td>
      </tr>
      <tr>
        <td width="50%" align="center"><font face="Verdana" size="2">
          <% if (empty($noticia[4])) { %>
          Espacio de la Imagen.
          <% } else { %>
          <img src="/img/img_noticias/grandes/<% echo $noticia[4] %>">
          <% } %>
          <br>
          <br>
          <select size="1" name="imagengrande" onchange="document.segundo.submit()">
            <%
   $handle = opendir('../../img/img_noticias/grandes');
   while ($file = readdir($handle)) {
     if ($file != ".." && $file != ".") {
       if ($file == $noticia[4] ) {
         echo "<option value=\"$file\" selected>$file</option>";
         } else {
         echo "<option value=\"$file\">$file</option>";
         }
      }  
   }
   closedir($handle); 
            %>
          </select><br>
          <br>
          </font>
          <table border="0" width="100%">
            <tr>
              <td width="100%" align="center"><a href="javascript:openwin('imagenes.html?nota=noticias&amp;size=grandes&amp;accion=agregar','formulario','width=400,height=100,scrollbars=1')"><font face="Verdana" size="2">Agregar
                Imagen</font></a></td>
            </tr>
            <tr>
              <td width="100%" align="center"><a href="javascript:openwin('imagenes.html?nota=noticias&amp;size=grandes&amp;accion=mostrar','formulario','width=400,height=250,scrollbars=1')"><font face="Verdana" size="2">Mostrar
                imagenes</font></a></td>
            </tr>
            <tr>
              <td width="100%" align="center"><a href="javascript:openwin('imagenes.html?nota=noticias&amp;size=grandes&amp;accion=borrar','formulario','width=400,height=100,scrollbars=1')"><font face="Verdana" size="2">Borrar
                imagen</font></a></td>
            </tr>
          </table>
          <p><font face="Verdana" size="2"><br>
          <br>
          </font></p>
        </td>
        <td width="50%" align="center"><font face="Verdana" size="2"><textarea name="contenido" value rows="15" cols="40"><% echo $noticia[2] %></textarea><br>
          <br>
          </font></td>
      </tr>
      <tr>
        <td width="50%" align="center" colspan="2" bgcolor="#C0C0C0"><font face="Verdana" size="2">Nivel
          de la Noticia:</font></td>
      </tr>
      <tr>
        <td width="50%" align="center" colspan="2"><font face="Verdana" size="2"><br>
          Establecer como noticia de nivel<br>
          1<input type="radio" name="nivel" value="1" <% if ($noticia[nivel] == 1) { echo "checked"; } %>><br>
          2<input type="radio" name="nivel" value="2" <% if ($noticia[nivel] == 2) { echo "checked"; } %>><br>
          3<input type="radio" name="nivel" value="3" <% if ($noticia[nivel] == 3) { echo "checked"; } %>><br>
          4<input type="radio" name="nivel" value="4" <% if ($noticia[nivel] == 4) { echo "checked"; } %>><br>
          <br>
          </font></td>
      </tr>
      <tr>
        <td width="50%" align="center"><font face="Verdana" size="2"><input type="submit" value="modificar esta noticia"></font></td>
        <td width="50%" align="center"><font face="Verdana" size="2"><input type="submit" name="eliminar" value="eliminar noticia"></font></td>
      </tr>
      </table>
    </center></div>
  </form><center>
  <%
  }













function nueva($id, $char_noticia) { 
  %>

  <form name="primero" action="<% echo $PHP_SELF %>" method="POST">
    <table border="1" width="80%" bordercolor="#C0C0C0" cellspacing="0">
      <tr>
        <td width="50%" bgcolor="#C0C0C0">
          <p align="center"><font face="Verdana" size="2">Elegir noticia por título:</font></td>
      </tr>
      <tr>
        <td width="50%">
          <p align="center"><font face="Verdana" size="2"><select size="1" name="id" onchange="document.primero.submit()">
            <option value="nuevanoticia">Nueva Noticia</option>
          
            <% 
$resultado = mysql_query("select * from noticias"); 
while ($row = mysql_fetch_array($resultado)) {
  if ($noticia[titulo] == $row[titulo]) {  
    echo "<option value=\"$row[id]\" selected>$row[titulo]</option>\n";
  } else {
    echo "<option value=\"$row[id]\">$row[titulo]</option>\n";
  }
}
            %>  
          </select></font></td>
      </tr>
    </table>
  </form>
  <font face="Verdana" size="2">
  <br>
  </font>
  <form name="segundo" action="<% echo $PHP_SELF %>" method="POST">
    <input type="hidden" name="a" value="b"><input type="hidden" name="id" value="nuevanoticia">
    <div align="center">
      <table border="1" width="80%" cellspacing="0">
        <tr>
          <td bgcolor="#C0C0C0" colspan="2">
            <p align="center"><font face="Verdana" size="2">Titulo de esta noticia:</font></td>
        </tr>
        <tr>
          <td width="50%" align="center" colspan="2"><u><b><font face="Verdana" size="2"><input type="text" name="titulo" value="<% echo $noticia[titulo] %>" size="50"><br>
            </font>
            </b></u></td>
        </tr>
        <tr>
          <td width="50%" align="center" bgcolor="#C0C0C0">
            <p align="center"><font face="Verdana" size="2">Imagen de la página
            principal.</font></td>
          <td width="50%" align="center" bgcolor="#C0C0C0">
            <p align="center"><font face="Verdana" size="2">Cantidad de Caracteres en la
            página principal.</font></p>
          </td>
        </tr>
        <tr>
          <td width="50%" align="center">
             <font face="Verdana" size="2">
             <% if (empty($noticia[3])) { %>
            Espacio de la Imagen.
            <% } else { %>
            <img src="/img/img_noticias/chicas/<% echo $noticia[3] %>">
            <% } %>
            <br>
            <br>
            <select size="1" name="imagenchica" onchange="document.segundo.submit()">
              <%
   $handle = opendir('../../img/img_noticias/chicas');
   while ($file = readdir($handle)) {
     if ($file != ".." && $file != ".") {
       if ($file == $noticia[3] ) {
         echo "<option value=\"$file\" selected>$file</option>";
         } else {
         echo "<option value=\"$file\">$file</option>";
         }
      }  
   }
   closedir($handle); 
              %>
            </select><br>
            <br>
             </font>
            <table border="0" width="100%">
              <tr>
                <td width="100%" align="center"><a href="javascript:openwin('imagenes.html?nota=noticias&amp;size=chicas&amp;accion=agregar','formulario','width=400,height=100,scrollbars=1')"><font face="Verdana" size="2">Agregar
                  Imagen</font></a></td>
              </tr>
              <tr>
                <td width="100%" align="center"><a href="javascript:openwin('imagenes.html?nota=noticias&amp;size=chicas&amp;accion=mostrar','formulario','width=400,height=250,scrollbars=1')"><font face="Verdana" size="2">Mostrar
                  imagenes</font></a></td>
              </tr>
              <tr>
                <td width="100%" align="center"><a href="javascript:openwin('imagenes.html?nota=noticias&amp;size=chicas&amp;accion=borrar','formulario','width=400,height=100,scrollbars=1')"><font face="Verdana" size="2">Borrar
                  imagen</font></a></td>
              </tr>
            </table>
            <p align="center"><font face="Verdana" size="2"><br>
            <br>
            </font></p>
          </td>
          <td width="50%" align="center">
            <p align="center"><font face="Verdana" size="2"><input type="text" name="char" size="3" value="<% echo $char_noticia %>"></font></p>
          </td>
        </tr>
        <tr>
          <td width="50%" align="center" bgcolor="#C0C0C0">
            <p align="center"><font face="Verdana" size="2">Imagen del Pop Up</font></p>
          </td>
          <td width="50%" align="center" bgcolor="#C0C0C0">
            <p align="center"><font face="Verdana" size="2">Texto de la Noticia.</font></p>
          </td>
        </tr>
        <tr>
          <td width="50%" align="center"><font face="Verdana" size="2">
            <% if (empty($noticia[4])) { %>
            Espacio de la Imagen.
            <% } else { %>
            <img src="/img/img_noticias/grandes/<% echo $noticia[4] %>">
            <% } %>
            <br>
            <br>
            <select size="1" name="imagengrande" onchange="document.segundo.submit()">
              <%
   $handle = opendir('../../img/img_noticias/grandes');
   while ($file = readdir($handle)) {
     if ($file != ".." && $file != ".") {
       if ($file == $noticia[4] ) {
         echo "<option value=\"$file\" selected>$file</option>";
         } else {
         echo "<option value=\"$file\">$file</option>";
         }
      }  
   }
   closedir($handle); 
              %>
            </select><br>
            <br>
            </font>
            <table border="0" width="100%">
              <tr>
                <td width="100%" align="center"><a href="javascript:openwin('imagenes.html?nota=noticias&amp;size=grandes&amp;accion=agregar','formulario','width=400,height=100,scrollbars=1')"><font face="Verdana" size="2">Agregar
                  Imagen</font></a></td>
              </tr>
              <tr>
                <td width="100%" align="center"><a href="javascript:openwin('imagenes.html?nota=noticias&amp;size=grandes&amp;accion=mostrar','formulario','width=400,height=250,scrollbars=1')"><font face="Verdana" size="2">Mostrar
                  imagenes</font></a></td>
              </tr>
              <tr>
                <td width="100%" align="center"><a href="javascript:openwin('imagenes.html?nota=noticias&amp;size=grandes&amp;accion=borrar','formulario','width=400,height=100,scrollbars=1')"><font face="Verdana" size="2">Borrar
                  imagen</font></a></td>
              </tr>
            </table>
            <p><font face="Verdana" size="2"><br>
            <br>
            </font></p>
          </td>
          <td width="50%" align="center"><font face="Verdana" size="2"><textarea name="contenido" value rows="15" cols="40"><% echo $noticia[2] %></textarea><br>
            <br>
            </font></td>
        </tr>
        <tr>
          <td width="50%" align="center" colspan="2" bgcolor="#C0C0C0"><font face="Verdana" size="2">Nivel
            de la Noticia:</font></td>
        </tr>
        <tr>
          <td width="50%" align="center" colspan="2"><font face="Verdana" size="2"><br>
            Establecer como noticia de nivel<br>
            1<input type="radio" name="nivel" value="1" <% if ($noticia[nivel] == 1) { echo "checked"; } %>><br>
            2<input type="radio" name="nivel" value="2" <% if ($noticia[nivel] == 2) { echo "checked"; } %>><br>
            3<input type="radio" name="nivel" value="3" <% if ($noticia[nivel] == 3) { echo "checked"; } %>><br>
            4<input type="radio" name="nivel" value="4" <% if ($noticia[nivel] == 4) { echo "checked"; } %>><br>
            </font></td>
        </tr>
        <tr>
          <td width="50%" align="center"><font face="Verdana" size="2">
	  <input type="submit" value="crear noticia"></font></td>
          <td width="50%" align="center"></td>
        </tr>
        </table>
      </div>
    </form>
    <%
  }
    %>
</center>