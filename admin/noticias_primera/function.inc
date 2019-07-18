<? 
function select ($PHP_SELF, $id) {


$result = mysql_query("select * from noticias_primera");
?>

<form name="main" method="post" action="<? echo $PHP_SELF ?>">
   
  <table width="100%" border="1" cellspacing="0" cellpadding="1">
    <tr bgcolor="#CCCCCC"> 
      <td> 
        <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Noticias 
          de Primera Division:</font> </div>
      </td>
    </tr>
    <tr>
      <td>
        <div align="center">
          <select name="id" onchange="javascript:document.main.submit()">
            <option value="0">Nueva noticia</option>
            <?

while ($row = mysql_fetch_array($result)) {
  if ($id == "$row[id]") {
    echo "<option value=\"$row[id]\" selected>$row[link]</option>\n";
  } else {
    echo "<option value=\"$row[id]\">$row[link]</option>\n";
  }
}


      ?>
          </select>
        </div>
      </td>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>
<?
}
?>
<?
function formulario ($PHP_SELF, $data) {
?>
<? 
$result = mysql_query("select * from noticias_primera where id='$data[id]'");
$row = mysql_fetch_array($result);
?>

<form action="<? echo $PHP_SELF ?>" method="post">
  <table width="100%" border="1" cellspacing="0" cellpadding="1">
    <tr bgcolor="#CCCCCC"> 
      <td> 
        <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Nombre 
          del Link:</font> </div>
      </td>
    </tr>
    <tr>
      <td> 
        <div align="center">
          <input type="text" name="link2" value="<? echo $row[link] ?>" size="60">
        </div>
      </td>
    </tr>
    <tr bgcolor="#CCCCCC"> 
      <td> 
        <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">T&iacute;tulo 
          de la Noticia:</font></div>
      </td>
    </tr>
    <tr>
      <td> 
        <div align="center">
          <input type="text" name="titulo2" value="<? echo $row[titulo] ?>" size="60">
        </div>
      </td>
    </tr>
    <tr bgcolor="#CCCCCC"> 
      <td> 
        <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Contenido:</font></div>
      </td>
    </tr>
    <tr>
      <td> 
        <div align="center">
          <textarea name="textarea" rows="15" cols="60"><? echo $row[contenido] ?></textarea>
        </div>
      </td>
    </tr>
    <tr bgcolor="#CCCCCC"> 
      <td> 
        <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Nivel:</font></div>
      </td>
    </tr>
    <tr>
      <td> 
        <div align="center">
          <input type="text" name="nivel2" value="<? echo $row[nivel] ?>" size="5">
        </div>
      </td>
    </tr>
    <tr bgcolor="#CCCCCC"> 
      <td> 
        <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Caracteres:</font></div>
      </td>
    </tr>
    <tr>
      <td> 
        <div align="center">
          <input type="text" name="chars2" value="<? echo $row[chars] ?>" size="5" >
          <? if (empty($data[id])) { ?> 
          <input type="hidden" name="a2" value="nueva">
          <? } else { ?> 
          <input type="hidden" name="a2" value="modificar">
          <? } ?> 
          <input type="hidden" name="id2" value="<? echo $data[id] ?>">
        </div>
      </td>
    </tr>
    <tr>
      <td> 
        <div align="center">
          <input type="submit" value="Aceptar" name="submit">
          <input type="submit" name="a3" value="Borrar">
        </div>
      </td>
    </tr>
  </table>
</form>
<?
}
?>
