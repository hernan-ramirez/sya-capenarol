<%
function muestra($id, $char_entrevista) { 

  if (empty($id)) {
    $result = mysql_query("select * from entrevistas where nivel = '1'");
  } else {
    $result = mysql_query("select * from entrevistas where id = '$id'");
  }
    $entrevista = mysql_fetch_array($result);

%>
<form name="primero" action="<% echo $PHP_SELF %>" method="POST">
<center>
    <table border="1" width="100%" cellspacing="0">
      <tr>
        <td width="75%" bgcolor="#C0C0C0"> 
          <p align="center"><font face="Verdana" size="2">Elegir entrevista por título:</font></td>
    </tr>
    <tr>
        <td width="75%"> 
          <p align="center"><font face="Verdana" size="2"><select size="1" name="id" onchange="document.primero.submit()">
          <option value="nuevaentrevista">Nueva Entrevista</option>
          
          <% 
$resultado = mysql_query("select * from entrevistas"); 
while ($row = mysql_fetch_array($resultado)) {
  if ($entrevista[titulo] == $row[titulo]) {  
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
  <input type="hidden" name="a" value="a"><input type="hidden" name="id" value="<% echo $entrevista[id] %>">
  <div align="center">
    <center>
      <table border="1" width="100%" cellspacing="0">
        <tr>
        <td bgcolor="#C0C0C0" colspan="2">
          <p align="center"><font face="Verdana" size="2">Titulo de esta entrevista:</font></td>
      </tr>
      <tr>
        <td width="50%" align="center" colspan="2"><u><font face="Verdana" size="2"><b><input type="text" name="titulo" value="<% echo $entrevista[titulo] %>" size="50"><br>
          </b></font></u></td>
      </tr>
      <tr>
          <td width="75%" align="center" bgcolor="#C0C0C0"> 
            <p align="center"><font face="Verdana" size="2">Imagen de la página principal.</font></td>
          <td width="75%" align="center" bgcolor="#C0C0C0"> 
            <p align="center"><font face="Verdana" size="2">Cantidad de Caracteres en la página
          principal.</font></p>
        </td>
      </tr>
      <tr>
          <td width="75%" align="center"> <font face="Verdana" size="2"> <% if (empty($entrevista[3])) { %> 
            Espacio de la Imagen. <% } else { %> <img src="/img/img_entrevistas/chicas/<% echo $entrevista[3] %>"> 
            <% } %> <br>
          <br>
          <select size="1" name="imagenchica" onchange="document.segundo.submit()">
            <%
   $handle = opendir('../../img/img_entrevistas/chicas');
   while ($file = readdir($handle)) {
     if ($file != ".." && $file != ".") {
       if ($file == $entrevista[3] ) {
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
              <td width="100%" align="center"><font face="Verdana" size="2"><a href="javascript:openwin('imagenes.html?nota=entrevistas&amp;size=chicas&amp;accion=agregar','formulario','width=400,height=100,scrollbars=1')">Agregar
                Imagen</a></font></td>
            </tr>
            <tr>
              <td width="100%" align="center"><font face="Verdana" size="2"><a href="javascript:openwin('imagenes.html?nota=entrevistas&amp;size=chicas&amp;accion=mostrar','formulario','width=400,height=250,scrollbars=1')">Mostrar
                imagenes</a></font></td>
            </tr>
            <tr>
              <td width="100%" align="center"><font face="Verdana" size="2"><a href="javascript:openwin('imagenes.html?nota=entrevistas&amp;size=chicas&amp;accion=borrar','formulario','width=400,height=100,scrollbars=1')">Borrar
                imagen</a></font></td>
            </tr>
          </table>
          <p align="center"><font face="Verdana" size="2"><br>
          <br>
          </font></p>
        </td>
          <td width="75%" align="center"> 
            <p align="center"><font face="Verdana" size="2"><input type="text" name="char" size="3" value="<% echo $char_entrevista %>"></font></p>
        </td>
      </tr>
      <tr>
          <td width="75%" align="center" bgcolor="#C0C0C0"> 
            <p align="center"><font face="Verdana" size="2">Imagen del Pop Up</font></p>
        </td>
          <td width="75%" align="center" bgcolor="#C0C0C0"> 
            <p align="center"><font face="Verdana" size="2">Texto de la Entrevista.</font></p>
        </td>
      </tr>
      <tr>
          <td width="75%" align="center"><font face="Verdana" size="2"> <% if (empty($entrevista[4])) { %> 
            Espacio de la Imagen. <% } else { %> <img src="/img/img_entrevistas/grandes/<% echo $entrevista[4] %>"> 
            <% } %> <br>
          <br>
          <select size="1" name="imagengrande" onchange="document.segundo.submit()">
            <%
   $handle = opendir('../../img/img_entrevistas/grandes');
   while ($file = readdir($handle)) {
     if ($file != ".." && $file != ".") {
       if ($file == $entrevista[4] ) {
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
              <td width="100%" align="center"><font face="Verdana" size="2"><a href="javascript:openwin('imagenes.html?nota=entrevistas&amp;size=grandes&amp;accion=agregar','formulario','width=400,height=100,scrollbars=1')">Agregar
                Imagen</a></font></td>
            </tr>
            <tr>
              <td width="100%" align="center"><font face="Verdana" size="2"><a href="javascript:openwin('imagenes.html?nota=entrevistas&amp;size=grandes&amp;accion=mostrar','formulario','width=400,height=250,scrollbars=1')">Mostrar
                imagenes</a></font></td>
            </tr>
            <tr>
              <td width="100%" align="center"><font face="Verdana" size="2"><a href="javascript:openwin('imagenes.html?nota=entrevistas&amp;size=grandes&amp;accion=borrar','formulario','width=400,height=100,scrollbars=1')">Borrar
                imagen</a></font></td>
            </tr>
          </table>
          <p><font face="Verdana" size="2"><br>
          <br>
          </font></p>
        </td>
          <td width="75%" align="center"><font face="Verdana" size="2">
<textarea name="contenido" value rows="15" cols="40"><% echo $entrevista[2] %></textarea><br>
          <br>
          </font></td>
      </tr>
      <tr>
        <td width="50%" align="center" colspan="2" bgcolor="#C0C0C0"><font face="Verdana" size="2">Nivel
          de la Entrevista:</font></td>
      </tr>
      <tr>
        <td width="50%" align="center" colspan="2"><font face="Verdana" size="2"><br>
          Establecer como entrevista actual <input type="checkbox" name="nivel" value="1" <% if ($entrevista[nivel] == 1) { echo "checked"; } %>><br>
          <br>
          </font></td>
      </tr>
      <tr>
          <td width="75%" align="center"><font face="Verdana" size="2">
<input type="submit" value="modificar esta entrevista"></font></td>
          <td width="75%" align="center"><font face="Verdana" size="2">
<input type="submit" name="eliminar" value="eliminar entrevista"></font></td>
      </tr>
      </table>
    </center></div>
  </form><center>
  <%
  }
  %>


















  <%

function nueva($id, $char_entrevista) { 
  %>

  <form name="primero" action="<% echo $PHP_SELF %>" method="POST">
    <table border="1" width="80%" bordercolor="#C0C0C0" cellspacing="0">
      <tr>
        <td width="50%" bgcolor="#C0C0C0">
          <p align="center"><font face="Verdana" size="2">Elegir entrevista por título:</font></td>
      </tr>
      <tr>
        <td width="50%">
          <p align="center"><font face="Verdana" size="2"><select size="1" name="id" onchange="document.primero.submit()">
            <option value="nuevaentrevista">Nueva Entrevista</option>
          
            <% 
$resultado = mysql_query("select * from entrevistas"); 
while ($row = mysql_fetch_array($resultado)) {
  if ($entrevista[titulo] == $row[titulo]) {  
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
    <input type="hidden" name="a" value="b"><input type="hidden" name="id" value="nuevaentrevista">
    <div align="center">
      <table border="1" width="80%" cellspacing="0">
        <tr>
          <td bgcolor="#C0C0C0" colspan="2">
            <p align="center"><font face="Verdana" size="2">Titulo de esta entrevista:</font></td>
        </tr>
        <tr>
          <td width="50%" align="center" colspan="2"><u><font face="Verdana" size="2"><b><input type="text" name="titulo" value="<% echo $entrevista[titulo] %>" size="50"><br>
            </b></font></u></td>
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
             <% if (empty($entrevista[3])) { %>
            Espacio de la Imagen.
            <% } else { %>
            <img src="/img/img_entrevistas/chicas/<% echo $entrevista[3] %>">
            <% } %>
            <br>
            <br>
            <select size="1" name="imagenchica" onchange="document.segundo.submit()">
              <%
   $handle = opendir('../../img/img_entrevistas/chicas');
   while ($file = readdir($handle)) {
     if ($file != ".." && $file != ".") {
       if ($file == $entrevista[3] ) {
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
                <td width="100%" align="center"><font face="Verdana" size="2"><a href="javascript:openwin('imagenes.html?nota=entrevistas&amp;size=chicas&amp;accion=agregar','formulario','width=400,height=100,scrollbars=1')">Agregar
                  Imagen</a></font></td>
              </tr>
              <tr>
                <td width="100%" align="center"><font face="Verdana" size="2"><a href="javascript:openwin('imagenes.html?nota=entrevistas&amp;size=chicas&amp;accion=mostrar','formulario','width=400,height=250,scrollbars=1')">Mostrar
                  imagenes</a></font></td>
              </tr>
              <tr>
                <td width="100%" align="center"><font face="Verdana" size="2"><a href="javascript:openwin('imagenes.html?nota=entrevistas&amp;size=chicas&amp;accion=borrar','formulario','width=400,height=100,scrollbars=1')">Borrar
                  imagen</a></font></td>
              </tr>
            </table>
            <p align="center"><font face="Verdana" size="2"><br>
            <br>
            </font></p>
          </td>
          <td width="50%" align="center">
            <p align="center"><font face="Verdana" size="2"><input type="text" name="char" size="3" value="<% echo $char_entrevista %>"></font></p>
          </td>
        </tr>
        <tr>
          <td width="50%" align="center" bgcolor="#C0C0C0">
            <p align="center"><font face="Verdana" size="2">Imagen del Pop Up</font></p>
          </td>
          <td width="50%" align="center" bgcolor="#C0C0C0">
            <p align="center"><font face="Verdana" size="2">Texto de la Entrevista.</font></p>
          </td>
        </tr>
        <tr>
          <td width="50%" align="center"><font face="Verdana" size="2">
            <% if (empty($entrevista[4])) { %>
            Espacio de la Imagen.
            <% } else { %>
            <img src="/img/img_entrevistas/grandes/<% echo $entrevista[4] %>">
            <% } %>
            <br>
            <br>
            <select size="1" name="imagengrande" onchange="document.segundo.submit()">
              <%
   $handle = opendir('../../img/img_entrevistas/grandes');
   while ($file = readdir($handle)) {
     if ($file != ".." && $file != ".") {
       if ($file == $entrevista[4] ) {
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
                <td width="100%" align="center"><font face="Verdana" size="2"><a href="javascript:openwin('imagenes.html?nota=entrevistas&amp;size=grandes&amp;accion=agregar','formulario','width=400,height=100,scrollbars=1')">Agregar
                  Imagen</a></font></td>
              </tr>
              <tr>
                <td width="100%" align="center"><font face="Verdana" size="2"><a href="javascript:openwin('imagenes.html?nota=entrevistas&amp;size=grandes&amp;accion=mostrar','formulario','width=400,height=250,scrollbars=1')">Mostrar
                  imagenes</a></font></td>
              </tr>
              <tr>
                <td width="100%" align="center"><font face="Verdana" size="2"><a href="javascript:openwin('imagenes.html?nota=entrevistas&amp;size=grandes&amp;accion=borrar','formulario','width=400,height=100,scrollbars=1')">Borrar
                  imagen</a></font></td>
              </tr>
            </table>
            <p><font face="Verdana" size="2"><br>
            <br>
            </font></p>
          </td>
          <td width="50%" align="center"><font face="Verdana" size="2"><textarea name="contenido" value rows="15" cols="40"><% echo $entrevista[2] %></textarea><br>
            <br>
            </font></td>
        </tr>
        <tr>
          <td width="50%" align="center" colspan="2" bgcolor="#C0C0C0"><font face="Verdana" size="2">Nivel
            de la Entrevista:</font></td>
        </tr>
        <tr>
          <td width="50%" align="center" colspan="2"><font face="Verdana" size="2"><br>
            Establecer como entrevista actual <input type="checkbox" name="nivel" value="1" <% if ($entrevista[nivel] == 1) { echo "checked"; } %>><br>
            <br>
            </font></td>
        </tr>
        <tr>
          <td width="50%" align="center"><font face="Verdana" size="2"><input type="submit" value="crear entrevista"></font></td>
          <td width="50%" align="center">&nbsp;</td>
        </tr>
        </table>
      </div>
    </form>
    <%
  }

    %>

</center>