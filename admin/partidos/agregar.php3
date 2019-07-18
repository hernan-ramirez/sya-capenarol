<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFFFFF">
<?
$funcion = "insertar";

include "db_connect_arg.inc" ?>

<font face="Ms Sans Serif" size="1">Capenarol.Com<br>
<b>Administrador de Partidos</b></font><br>
<br>
<form  method="post" action="<? echo $funcion ?>.php3">
  <table width="600" border="0" bgcolor="#000000" cellspacing="0" cellpadding="0">
    <tr> 
      <td> 
        <table width="600" border="0" cellpadding="1" cellspacing="1">
          <tr bgcolor="#000000"> 
            <td width="56"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Orden</font></b></font></div>
            </td>
            <td width="23">
              <div align="center"><font color="#FFFF99">#</font></div>
            </td>
            <td width="45"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Jugador</font></b></font></div>
            </td>
            <td width="47"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">T. 
                Am</font></b></font></div>
            </td>
            <td width="59"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">T. 
                Roja</font></b></font></div>
            </td>
            <td width="43"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Gol 
                1</font></b></font></div>
            </td>
            <td width="43"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Gol 
                2</font></b></font></div>
            </td>
            <td width="43"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Gol 
                3</font></b></font></div>
            </td>
            <td width="43"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Gol 
                4</font></b></font></div>
            </td>
            <td width="43"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Gol 
                5</font></b></font></div>
            </td>
            <td width="62"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Cambio</font></b></font></div>
            </td>
            <td width="47"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Min</font></b></font></div>
            </td>
          </tr>
          <?
for ($x=1;$x<12;$x++){
?> 
          <tr bgcolor="#FFFFFF"> 
            <td width="56"> 
              <div align="center"> 
                <input type="text" name="orden<? echo $x ?>" size="2">
              </div>
            </td>
            <td width="23"> 
              <div align="center">
                <input type="text" name="numero<? echo $x ?>" size="2">
              </div>
            </td>
            <td width="45"> 
              <div align="center"> 
                <select name="jugador<? echo $x ?>">
                  <?
					$query = "SELECT * FROM jugadores";
					$result = mysql_query($query);
					if($result !=0) {
						while ($row=mysql_fetch_object($result)) {
					?> 
					<option value="<? echo $row->id ?>">
                  <?
					echo $row->nombre;
					?> &nbsp <? 
					echo $row->apellido;			
					?> </option><?
					}
					}
					?>
                </select>
              </div>
            </td>
            <td width="47"> 
              <div align="center"> 
                <input type="text" name="amarillas<? echo $x ?>" size="4">
              </div>
            </td>
            <td width="59"> 
              <div align="center"> 
                <input type="text" name="rojas<? echo $x ?>" size="4">
              </div>
            </td>
            <td width="43"> 
              <div align="center"> 
                <input type="text" name="gol1<? echo $x ?>" size="4">
              </div>
            </td>
            <td width="43"> 
              <div align="center"> 
                <input type="text" name="gol2<? echo $x ?>" size="4">
              </div>
            </td>
            <td width="43"> 
              <div align="center"> 
                <input type="text" name="gol3<? echo $x ?>" size="4">
              </div>
            </td>
            <td width="43"> 
              <div align="center"> 
                <input type="text" name="gol4<? echo $x ?>" size="4">
              </div>
            </td>
            <td width="43"> 
              <div align="center"> 
                <input type="text" name="gol5<? echo $x ?>" size="4">
              </div>
            </td>
            <td width="62"> 
              <div align="center"> 
                <select name="cambio<? echo $x ?>">
                  <?
					$query = "SELECT * FROM jugadores";
					$result = mysql_query($query);
					if($result !=0) {
						while ($row=mysql_fetch_object($result)) {
					?> 
					<option value="<? echo $row->id ?>">
                  <?
					echo $row->nombre;
					?> &nbsp <? 
					echo $row->apellido;			
					?> </option><?
					}
					}
					?>
                </select>
              </div>
            </td>
            <td width="47"> 
              <div align="center"> 
                <input type="text" name="cambio_minuto<? echo $x ?>" size="4">
              </div>
            </td>
          </tr>
          <?
}
?> 
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="56"> 
              <div align="center"><font face="Ms Sans Serif" size="1"><b><font color="#FFFF99">Partido</font></b></font></div>
            </td>
            <td colspan="11"> 
              <div align="left"> 
                <select name="partido">
                  <?
					$query = "SELECT * FROM partidos";
					$result = mysql_query($query);
					if($result !=0) {
						while ($row=mysql_fetch_object($result)) {
					?> 
                  <option><?
					echo $row->id;
					}
					}
				?> 
                </select>
              </div>
            </td>
          </tr>
        </table>
        <div align="right">
          <input type="submit" name="Submit" value="<? echo $funcion ?>">
        </div>
      </td>
    </tr>
  </table>
</form>
<p>&nbsp;</p>


</body>
</html>
