<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFFFFF">
<?
$funcion = "insertar_rival";

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
            <td width="55"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Orden</font></b></font></div>
            </td>
            <td width="22"> 
              <div align="center"><font color="#FFFF99">#</font></div>
            </td>
            <td width="45"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Jugador</font></b></font></div>
            </td>
            <td width="46"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">T. 
                Am</font></b></font></div>
            </td>
            <td width="69"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">T. 
                Roja</font></b></font></div>
            </td>
            <td width="31"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Gol 
                1</font></b></font></div>
            </td>
            <td width="42"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Gol 
                2</font></b></font></div>
            </td>
            <td width="58"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Gol 
                3</font></b></font></div>
            </td>
            <td width="30"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Gol 
                4</font></b></font></div>
            </td>
            <td width="42"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Gol 
                5</font></b></font></div>
            </td>
            <td width="61"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Cambio</font></b></font></div>
            </td>
            <td width="54"> 
              <div align="center"><font color="#FFFF99"><b><font face="Ms Sans Serif" size="1">Min</font></b></font></div>
            </td>
          </tr>
          
          <tr bgcolor="#FFFFFF"> 
            <td width="55"> 
              <div align="center"> 
                <input type="text" name="orden1" size="2" value="<? echo $orden1 ?>" >
              </div>
            </td>
            <td width="22"> 
              <div align="center"> 
                <input type="text" name="numero1" size="2" value="<? echo $numero1 ?>">
              </div>
            </td>
            <td width="45"> 
              <div align="center"> 
                <input type="text" name="jugador1" size="25">
              </div>
            </td>
            <td width="46"> 
              <div align="center"> 
                <input type="text" name="amarillas1" size="4">
              </div>
            </td>
            <td width="69"> 
              <div align="center"> 
                <input type="text" name="rojas1" size="4">
              </div>
            </td>
            <td width="31"> 
              <div align="center"> 
                <input type="text" name="gol11" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol21" size="4">
              </div>
            </td>
            <td width="58"> 
              <div align="center"> 
                <input type="text" name="gol31" size="4">
              </div>
            </td>
            <td width="30"> 
              <div align="center"> 
                <input type="text" name="gol41" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol51" size="4">
              </div>
            </td>
            <td width="61"> 
              <div align="center">
                <input type="text" name="cambio1" size="25">
              </div>
            </td>
            <td width="54"> 
              <div align="center"> 
                <input type="text" name="cambio_minuto1" size="4">
              </div>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="55"> 
              <div align="center"> 
                <input type="text" name="orden2" size="2">
              </div>
            </td>
            <td width="22"> 
              <div align="center"> 
                <input type="text" name="numero2" size="2">
              </div>
            </td>
            <td width="45"> 
              <div align="center"> 
                <input type="text" name="jugador2" size="25">
              </div>
            </td>
            <td width="46"> 
              <div align="center"> 
                <input type="text" name="amarillas2" size="4">
              </div>
            </td>
            <td width="69"> 
              <div align="center"> 
                <input type="text" name="rojas2" size="4">
              </div>
            </td>
            <td width="31"> 
              <div align="center"> 
                <input type="text" name="gol12" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol22" size="4">
              </div>
            </td>
            <td width="58"> 
              <div align="center"> 
                <input type="text" name="gol32" size="4">
              </div>
            </td>
            <td width="30"> 
              <div align="center"> 
                <input type="text" name="gol42" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol52" size="4">
              </div>
            </td>
            <td width="61"> 
              <div align="center">
                <input type="text" name="cambio2" size="25">
              </div>
            </td>
            <td width="54"> 
              <div align="center"> 
                <input type="text" name="cambio_minuto2" size="4">
              </div>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="55"> 
              <div align="center"> 
                <input type="text" name="orden3" size="2">
              </div>
            </td>
            <td width="22"> 
              <div align="center"> 
                <input type="text" name="numero3" size="2">
              </div>
            </td>
            <td width="45"> 
              <div align="center">
                <input type="text" name="jugador3" size="25">
              </div>
            </td>
            <td width="46"> 
              <div align="center"> 
                <input type="text" name="amarillas3" size="4">
              </div>
            </td>
            <td width="69"> 
              <div align="center"> 
                <input type="text" name="rojas3" size="4">
              </div>
            </td>
            <td width="31"> 
              <div align="center"> 
                <input type="text" name="gol13" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol23" size="4">
              </div>
            </td>
            <td width="58"> 
              <div align="center"> 
                <input type="text" name="gol33" size="4">
              </div>
            </td>
            <td width="30"> 
              <div align="center"> 
                <input type="text" name="gol43" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol53" size="4">
              </div>
            </td>
            <td width="61"> 
              <div align="center">
                <input type="text" name="cambio3" size="25">
              </div>
            </td>
            <td width="54"> 
              <div align="center"> 
                <input type="text" name="cambio_minuto3" size="4">
              </div>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="55"> 
              <div align="center"> 
                <input type="text" name="orden4" size="2">
              </div>
            </td>
            <td width="22"> 
              <div align="center"> 
                <input type="text" name="numero4" size="2">
              </div>
            </td>
            <td width="45"> 
              <div align="center"> 
                <input type="text" name="jugador4" size="25">
              </div>
            </td>
            <td width="46"> 
              <div align="center"> 
                <input type="text" name="amarillas4" size="4">
              </div>
            </td>
            <td width="69"> 
              <div align="center"> 
                <input type="text" name="rojas4" size="4">
              </div>
            </td>
            <td width="31"> 
              <div align="center"> 
                <input type="text" name="gol14" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol24" size="4">
              </div>
            </td>
            <td width="58"> 
              <div align="center"> 
                <input type="text" name="gol34" size="4">
              </div>
            </td>
            <td width="30"> 
              <div align="center"> 
                <input type="text" name="gol44" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol54" size="4">
              </div>
            </td>
            <td width="61"> 
              <div align="center">
                <input type="text" name="cambio4" size="25">
              </div>
            </td>
            <td width="54"> 
              <div align="center"> 
                <input type="text" name="cambio_minuto4" size="4">
              </div>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="55" height="32"> 
              <div align="center"> 
                <input type="text" name="orden5" size="2">
              </div>
            </td>
            <td width="22" height="32"> 
              <div align="center"> 
                <input type="text" name="numero5" size="2">
              </div>
            </td>
            <td width="45" height="32"> 
              <div align="center"> 
                <input type="text" name="jugador5" size="25">
              </div>
            </td>
            <td width="46" height="32"> 
              <div align="center"> 
                <input type="text" name="amarillas5" size="4">
              </div>
            </td>
            <td width="69" height="32"> 
              <div align="center"> 
                <input type="text" name="rojas5" size="4">
              </div>
            </td>
            <td width="31" height="32"> 
              <div align="center"> 
                <input type="text" name="gol15" size="4">
              </div>
            </td>
            <td width="42" height="32"> 
              <div align="center"> 
                <input type="text" name="gol25" size="4">
              </div>
            </td>
            <td width="58" height="32"> 
              <div align="center"> 
                <input type="text" name="gol35" size="4">
              </div>
            </td>
            <td width="30" height="32"> 
              <div align="center"> 
                <input type="text" name="gol45" size="4">
              </div>
            </td>
            <td width="42" height="32"> 
              <div align="center"> 
                <input type="text" name="gol55" size="4">
              </div>
            </td>
            <td width="61" height="32"> 
              <div align="center">
                <input type="text" name="cambio5" size="25">
              </div>
            </td>
            <td width="54" height="32"> 
              <div align="center"> 
                <input type="text" name="cambio_minuto5" size="4">
              </div>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="55"> 
              <div align="center"> 
                <input type="text" name="orden6" size="2">
              </div>
            </td>
            <td width="22"> 
              <div align="center"> 
                <input type="text" name="numero6" size="2">
              </div>
            </td>
            <td width="45"> 
              <div align="center">
                <input type="text" name="jugador6" size="25">
              </div>
            </td>
            <td width="46"> 
              <div align="center"> 
                <input type="text" name="amarillas6" size="4">
              </div>
            </td>
            <td width="69"> 
              <div align="center"> 
                <input type="text" name="rojas6" size="4">
              </div>
            </td>
            <td width="31"> 
              <div align="center"> 
                <input type="text" name="gol16" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol26" size="4">
              </div>
            </td>
            <td width="58"> 
              <div align="center"> 
                <input type="text" name="gol36" size="4">
              </div>
            </td>
            <td width="30"> 
              <div align="center"> 
                <input type="text" name="gol46" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol56" size="4">
              </div>
            </td>
            <td width="61"> 
              <div align="center">
                <input type="text" name="cambio6" size="25">
              </div>
            </td>
            <td width="54"> 
              <div align="center"> 
                <input type="text" name="cambio_minuto6" size="4">
              </div>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="55"> 
              <div align="center"> 
                <input type="text" name="orden7" size="2">
              </div>
            </td>
            <td width="22"> 
              <div align="center"> 
                <input type="text" name="numero7" size="2">
              </div>
            </td>
            <td width="45"> 
              <div align="center">
                <input type="text" name="jugador7" size="25">
              </div>
            </td>
            <td width="46"> 
              <div align="center"> 
                <input type="text" name="amarillas7" size="4">
              </div>
            </td>
            <td width="69"> 
              <div align="center"> 
                <input type="text" name="rojas7" size="4">
              </div>
            </td>
            <td width="31"> 
              <div align="center"> 
                <input type="text" name="gol17" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol27" size="4">
              </div>
            </td>
            <td width="58"> 
              <div align="center"> 
                <input type="text" name="gol37" size="4">
              </div>
            </td>
            <td width="30"> 
              <div align="center"> 
                <input type="text" name="gol47" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol57" size="4">
              </div>
            </td>
            <td width="61"> 
              <div align="center">
                <input type="text" name="cambio7" size="25">
              </div>
            </td>
            <td width="54"> 
              <div align="center"> 
                <input type="text" name="cambio_minuto7" size="4">
              </div>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="55"> 
              <div align="center"> 
                <input type="text" name="orden8" size="2">
              </div>
            </td>
            <td width="22"> 
              <div align="center"> 
                <input type="text" name="numero8" size="2">
              </div>
            </td>
            <td width="45"> 
              <div align="center">
                <input type="text" name="jugador8" size="25">
              </div>
            </td>
            <td width="46"> 
              <div align="center"> 
                <input type="text" name="amarillas8" size="4">
              </div>
            </td>
            <td width="69"> 
              <div align="center"> 
                <input type="text" name="rojas8" size="4">
              </div>
            </td>
            <td width="31"> 
              <div align="center"> 
                <input type="text" name="gol18" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol28" size="4">
              </div>
            </td>
            <td width="58"> 
              <div align="center"> 
                <input type="text" name="gol38" size="4">
              </div>
            </td>
            <td width="30"> 
              <div align="center"> 
                <input type="text" name="gol48" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol58" size="4">
              </div>
            </td>
            <td width="61"> 
              <div align="center">
                <input type="text" name="cambio8" size="25">
              </div>
            </td>
            <td width="54"> 
              <div align="center"> 
                <input type="text" name="cambio_minuto8" size="4">
              </div>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="55"> 
              <div align="center"> 
                <input type="text" name="orden9" size="2">
              </div>
            </td>
            <td width="22"> 
              <div align="center"> 
                <input type="text" name="numero9" size="2">
              </div>
            </td>
            <td width="45"> 
              <div align="center">
                <input type="text" name="jugador9" size="25">
              </div>
            </td>
            <td width="46"> 
              <div align="center"> 
                <input type="text" name="amarillas9" size="4">
              </div>
            </td>
            <td width="69"> 
              <div align="center"> 
                <input type="text" name="rojas9" size="4">
              </div>
            </td>
            <td width="31"> 
              <div align="center"> 
                <input type="text" name="gol19" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol29" size="4">
              </div>
            </td>
            <td width="58"> 
              <div align="center"> 
                <input type="text" name="gol39" size="4">
              </div>
            </td>
            <td width="30"> 
              <div align="center"> 
                <input type="text" name="gol49" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol59" size="4">
              </div>
            </td>
            <td width="61"> 
              <div align="center">
                <input type="text" name="cambio9" size="25">
              </div>
            </td>
            <td width="54"> 
              <div align="center"> 
                <input type="text" name="cambio_minuto9" size="4">
              </div>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="55"> 
              <div align="center"> 
                <input type="text" name="orden10" size="2">
              </div>
            </td>
            <td width="22"> 
              <div align="center"> 
                <input type="text" name="numero10" size="2">
              </div>
            </td>
            <td width="45"> 
              <div align="center">
                <input type="text" name="jugador10" size="25">
              </div>
            </td>
            <td width="46"> 
              <div align="center"> 
                <input type="text" name="amarillas10" size="4">
              </div>
            </td>
            <td width="69"> 
              <div align="center"> 
                <input type="text" name="rojas10" size="4">
              </div>
            </td>
            <td width="31"> 
              <div align="center"> 
                <input type="text" name="gol110" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol210" size="4">
              </div>
            </td>
            <td width="58"> 
              <div align="center"> 
                <input type="text" name="gol310" size="4">
              </div>
            </td>
            <td width="30"> 
              <div align="center"> 
                <input type="text" name="gol410" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol510" size="4">
              </div>
            </td>
            <td width="61"> 
              <div align="center">
                <input type="text" name="cambio10" size="25">
              </div>
            </td>
            <td width="54"> 
              <div align="center"> 
                <input type="text" name="cambio_minuto10" size="4">
              </div>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td width="55"> 
              <div align="center"> 
                <input type="text" name="orden11" size="2">
              </div>
            </td>
            <td width="22"> 
              <div align="center"> 
                <input type="text" name="numero11" size="2">
              </div>
            </td>
            <td width="45"> 
              <div align="center">
                <input type="text" name="jugador11" size="25">
              </div>
            </td>
            <td width="46"> 
              <div align="center"> 
                <input type="text" name="amarillas11" size="4">
              </div>
            </td>
            <td width="69"> 
              <div align="center"> 
                <input type="text" name="rojas11" size="4">
              </div>
            </td>
            <td width="31"> 
              <div align="center"> 
                <input type="text" name="gol111" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol211" size="4">
              </div>
            </td>
            <td width="58"> 
              <div align="center"> 
                <input type="text" name="gol311" size="4">
              </div>
            </td>
            <td width="30"> 
              <div align="center"> 
                <input type="text" name="gol411" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol511" size="4">
              </div>
            </td>
            <td width="61"> 
              <div align="center">
                <input type="text" name="cambio11" size="25">
              </div>
            </td>
            <td width="54"> 
              <div align="center"> 
                <input type="text" name="cambio_minuto11" size="4">
              </div>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" colspan="12"> 
              <div align="center"><font face="MS Sans Serif"><font face="MS Sans Serif"><font size="1"><font size="1"><font color="#FFFF99"><font color="#FFFF99"><b>Cambios</b></font></font></font></font></font></font></div>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#FFFFFF" width="55">&nbsp;</td>
            <td width="22">&nbsp;</td>
            <td width="45">
              <input type="text" name="jugador12" size="25">
            </td>
            <td width="46"> 
              <div align="center"> 
                <input type="text" name="amarillas12" size="4">
              </div>
            </td>
            <td width="69"> 
              <div align="center"> 
                <input type="text" name="rojas12" size="4">
              </div>
            </td>
            <td width="31"> 
              <div align="center"> 
                <input type="text" name="gol112" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol212" size="4">
              </div>
            </td>
            <td width="58"> 
              <div align="center"> 
                <input type="text" name="gol312" size="4">
              </div>
            </td>
            <td width="30"> 
              <div align="center"> 
                <input type="text" name="gol412" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol512" size="4">
              </div>
            </td>
            <td width="61"> 
              <div align="center">
                <input type="text" name="cambio12" size="25">
              </div>
            </td>
            <td width="54"> 
              <div align="center">
                <input type="text" name="cambio_minuto12" size="4">
              </div>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#FFFFFF" width="55">&nbsp;</td>
            <td width="22">&nbsp;</td>
            <td width="45">
              <input type="text" name="jugador13" size="25">
            </td>
            <td width="46"> 
              <div align="center"> 
                <input type="text" name="amarillas13" size="4">
              </div>
            </td>
            <td width="69"> 
              <div align="center"> 
                <input type="text" name="rojas13" size="4">
              </div>
            </td>
            <td width="31"> 
              <div align="center"> 
                <input type="text" name="gol113" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol213" size="4">
              </div>
            </td>
            <td width="58"> 
              <div align="center"> 
                <input type="text" name="gol313" size="4">
              </div>
            </td>
            <td width="30"> 
              <div align="center"> 
                <input type="text" name="gol413" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol513" size="4">
              </div>
            </td>
            <td width="61"> 
              <div align="center">
                <input type="text" name="cambio13" size="25">
              </div>
            </td>
            <td width="54"> 
              <div align="center">
                <input type="text" name="cambio_minuto13" size="4">
              </div>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#FFFFFF" width="55">&nbsp;</td>
            <td width="22">&nbsp;</td>
            <td width="45">
              <input type="text" name="jugador14" size="25">
            </td>
            <td width="46"> 
              <div align="center"> 
                <input type="text" name="amarillas14" size="4">
              </div>
            </td>
            <td width="69"> 
              <div align="center"> 
                <input type="text" name="rojas14" size="4">
              </div>
            </td>
            <td width="31"> 
              <div align="center"> 
                <input type="text" name="gol114" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol214" size="4">
              </div>
            </td>
            <td width="58"> 
              <div align="center"> 
                <input type="text" name="gol314" size="4">
              </div>
            </td>
            <td width="30"> 
              <div align="center"> 
                <input type="text" name="gol414" size="4">
              </div>
            </td>
            <td width="42"> 
              <div align="center"> 
                <input type="text" name="gol514" size="4">
              </div>
            </td>
            <td width="61"> 
              <div align="center">
                <input type="text" name="cambio14" size="25">
              </div>
            </td>
            <td width="54"> 
              <div align="center">
                <input type="text" name="cambio_minuto14" size="4">
              </div>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="55"> 
              <div align="center"><font face="Ms Sans Serif" size="1"><b><font color="#FFFF99">Partido</font></b></font></div>
            </td>
            <td colspan="11"> 
              <div align="left"> 
                <select name="partido">
                  <?
					$query = "SELECT * FROM partidos order by id";
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