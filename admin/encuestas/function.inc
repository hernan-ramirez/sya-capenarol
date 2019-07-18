<? 
function select ($PHP_SELF, $data) {


$result = mysql_query("select * from encuestas order by id");
?>

<form name="main" method="get" action="<? echo $PHP_SELF ?>">
   
  <table width="100%" border="1" cellspacing="0" cellpadding="1">
    <tr bgcolor="#CCCCCC"> 
      <td> 
        <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Encuestas:</font> 
        </div>
      </td>
    </tr>
    <tr>
      <td>
        <div align="center">
          <select name="encuesta_id" onchange="javascript:document.main.submit()">
             <option value="0">Elige una encuesta</option>
            <?

while ($row = mysql_fetch_array($result)) {
  if ($data[encuesta_id] == "$row[id]") {
    echo "<option value=\"$row[id]\" selected>$row[pregunta]</option>\n";
  } else {
    echo "<option value=\"$row[id]\">$row[pregunta]</option>\n";
  }
}


      ?>
          </select>
<?
$result = mysql_query ("select * from encuestas where id='$data[encuesta_id]'");
$row = mysql_fetch_array($result);
?>
<br>
<?
if ($data[encuesta_id] != "0" && !empty($data[encuesta_id])) {
if ($row[nivel] == "1") { ?>
<font face="Verdana, Arial, Helvetica, sans-serif" size="2">Esta es la encuesta actual</font>  	    
<? } else { ?>
<a href="<? echo $PHP_SELF ?>?a=encuesta_actual&encuesta_id=<? echo $data[encuesta_id] ?>"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Establecer como encuesta Actual</font></a>
<? } ?>
<br>
<a href="<? echo $PHP_SELF ?>?a=borrar_encuesta&encuesta_id=<? echo $data[encuesta_id] ?>"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Borrar Encuesta</font></a>
<?
}
?>
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
function respuestas ($PHP_SELF, $data) {
?>
<table width="100%" border="1" cellspacing="0" cellpadding="1">
    <tr bgcolor="#CCCCCC"> 
      <td colspan="2"> 
        <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Respuestas</font></div>
      </td>
    </tr>

<? 
$result = mysql_query("select * from respuestas where encuesta_id='$data[encuesta_id]' order by id");

$num = 0;

while ($row = mysql_fetch_array($result)) {

$num ++;
?>
    <tr bgcolor="#FFFFFF"> 
      
    <td width="50%"> 
      <div align="left"><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><? echo $num ?>) 
        <? echo $row[respuesta] ?></font></div>
		</td>
		
    <td width="50%"> 
      <div align="center"><a href="<? echo $PHP_SELF ?>?a=borrar_respuesta&respuesta_id=<? echo $row[id] ?>&encuesta_id=<? echo $data[encuesta_id] ?>"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Borrar Respuesta</font></a></div>
      </td>
    </tr>

<?
}

if ($num == "0") { ?>
    <tr bgcolor="#FFFFFF"> 
      <td colspan="2"> 
        <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">No hay respuestas definidas</font></div>
      </td>
    </tr>
<?
}
?>
</table>
<p>&nbsp;</p>
<?
}
?>


<?
function nueva_respuesta ($PHP_SELF, $data) {
?>

<form>
<table width="100%" cellpadding="1" cellspacing="0" border="1">
  <tr bgcolor="#CCCCCC"> 
    <td> 
      <div align="center"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Nueva 
        Respuesta</font> </div>
    </td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td>
        <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Respuesta:
          <input type="text" name="respuesta" size="30">
          </font></div>
      </td>
  </tr>
  <tr bgcolor="#FFFFFF"> 
    <td> 
      <div align="center">
		  <input type="hidden" name="encuesta_id" value="<? echo $data[encuesta_id] ?>">
		  <input type="hidden" name="a" value="nueva_respuesta">
          <input type="submit" name="Submit" value="Aceptar">
          <input type="reset" value="Borrar">
        </div>
    </td>
  </tr>
</table>
</form>
<p>&nbsp;</p>
<? 
}
?>

<?
function nueva_encuesta ($PHP_SELF, $data) {
?>

<form>
<table width="100%" cellpadding="1" cellspacing="0" border="1">
  <tr bgcolor="#CCCCCC"> 
    <td> 
      <div align="center"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Nueva Encuesta</font> </div>
    </td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td>
        <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Pregunta:
          <input type="text" name="pregunta" size="30">
          </font></div>
      </td>
  </tr>
  <tr bgcolor="#FFFFFF"> 
    <td> 
      <div align="center">
		  <input type="hidden" name="a" value="nueva_encuesta">
          <input type="submit" name="Submit" value="Aceptar">
          <input type="reset" value="Borrar">
        </div>
    </td>
  </tr>
</table>
</form>
<? 
}
?>
