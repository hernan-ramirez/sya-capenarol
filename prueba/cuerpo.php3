<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<? include "db_connect_arg.inc" ?>
<body bgcolor="#FFFFFF">
<font face="Ms Sans Serif" size="1">Capenarol.Com<br>
<b>Administrador de Partidos</b></font><br>
<br>
<form  method="post" action="<? echo $funcion ?>.php3">
  <table width="600" border="0" bgcolor="#000000" cellspacing="0" cellpadding="0">
    <tr> 
      <td> 
        <table width="600" border="0" cellpadding="1" cellspacing="1">
          <tr bgcolor="#000000"> 
            <td> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Orden</font></b></font></div>
            </td>
            <td> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Jugador</font></b></font></div>
            </td>
            <td> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">T. 
                Am</font></b></font></div>
            </td>
            <td> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">T. 
                Roja</font></b></font></div>
            </td>
            <td> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Gol 
                1</font></b></font></div>
            </td>
            <td> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Gol 
                2</font></b></font></div>
            </td>
            <td> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Gol 
                3</font></b></font></div>
            </td>
            <td> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Gol 
                4</font></b></font></div>
            </td>
            <td> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Gol 
                5</font></b></font></div>
            </td>
            <td> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Cambio</font></b></font></div>
            </td>
            <td> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Min</font></b></font></div>
            </td>
          </tr>
          <?
for ($x=1;$x<12;$x++){
?> 
          <tr bgcolor="#FFFFFF"> 
            <td> 
              <div align="center"> 
                <input type="text" name="orden<? echo $x ?>" size="2">
              </div>
            </td>
            <td> 
              <div align="center"> 
                <select name="jugador<? echo $x ?>">
                  <?
					$query = "SELECT * FROM jugadores";
					$result = mysql_query($query);
					if($result !=0) {
						while ($row=mysql_fetch_object($result)) {
					?> 
                  <option><?
					echo $row->nombre;
					?> &nbsp <? 
					echo $row->apellido;			
					}
					}
				?> 
                </select>
              </div>
            </td>
            <td> 
              <div align="center"> 
                <input type="text" name="amarillas<? echo $x ?>" size="4">
              </div>
            </td>
            <td> 
              <div align="center"> 
                <input type="text" name="rojas<? echo $x ?>" size="4">
              </div>
            </td>
            <td> 
              <div align="center"> 
                <input type="text" name="gol1<? echo $x ?>" size="4">
              </div>
            </td>
            <td> 
              <div align="center"> 
                <input type="text" name="gol2<? echo $x ?>" size="4">
              </div>
            </td>
            <td> 
              <div align="center"> 
                <input type="text" name="gol3<? echo $x ?>" size="4">
              </div>
            </td>
            <td> 
              <div align="center"> 
                <input type="text" name="gol4<? echo $x ?>" size="4">
              </div>
            </td>
            <td> 
              <div align="center"> 
                <input type="text" name="gol5<? echo $x ?>" size="4">
              </div>
            </td>
            <td> 
              <div align="center"> 
                <select name="cambio<? echo $x ?>">
<?
					$query = "SELECT * FROM jugadores";
					$result = mysql_query($query);
					if($result !=0) {
						while ($row=mysql_fetch_object($result)) {
					?> 
                  <option><?
					echo $row->nombre;
					?> &nbsp <? 
					echo $row->apellido;			
					}
					}
				?> 
                </select>
              </div>
            </td>
            <td> 
              <div align="center"> 
                <input type="text" name="cambio_minuto<? echo $x ?>" size="4">
              </div>
            </td>
          </tr>
<?
}
?> 
        </table>  <div align="right">
          <input type="submit" name="Submit" value="<? echo $funcion ?>">
        </div>
      </td>
    </tr>
  </table>
</form>
<p>&nbsp;</p>
</body>
</html>
