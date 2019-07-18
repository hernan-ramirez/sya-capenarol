<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<?
$hostName = "penarol.sportsya.net";
$userName = "root";
$password = "zukarytas";
$databaseName = "penarol";

function DisplayErrMsg($message) {
	printf("<blockquote><blockquote><blockquote><h3><font color=\"#cc0000\"> %s</font></h3></blockquote></blockquote></blockquote>\n", $message);

}
$selectStmt = "SELECT * FROM partidos where id=$id";

$funcion = "update_partido";
//conectar con la base de datos

if(!($link=mysql_pconnect($hostName, $userName, $password))) {
	DisplayErrMsg(sprintf("error connecting to host %s, by user %s", $hostName, $userName));
	exit();
}

//elegir la base de datos

if (!mysql_select_db($databaseName, $link)) {
	DisplayErrMsg(sprintf("Error selecting %s database", $databaseName)) ;
	DislpayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
	exit();
}

//ejecutar el comando

if (!($result = mysql_query($selectStmt, $link))) {
	DisplayErrMsg(sprintf("Error in executing %s stmt", $selectStmt));
	DisplayErrMsg(sprintf("error:%d %s", mysql_errno($link), mysql_error($link)));
	exit();
}

if(!($row = mysql_fetch_object($result))){
	DisplayErrMsg("Internal Error:La entrada no existe");
	exit();
}

$rival = $row->rival;
$local = $row->local;
$resultado = $row->resultado;
$fecha = $row->date;
$campeonato = $row->campeonato;
$arbitros = $row->arbitros;
$DT = $row->DT;
$DTrival = $row->DTrival;
$cargado = $row->cargado;

?>
<body bgcolor="#FFFFFF">
<form  method="post" action="<? echo $funcion ?>.php3?id=<? echo $id ?>">
  <table width="600" border="0" bgcolor="#000000" cellspacing="0" cellpadding="0">
    <tr> 
      <td> 
        <table width="600" border="0" cellpadding="1" cellspacing="1">
          <tr bgcolor="#FFFFFF">
            <td bgcolor="#000000" width="55">
              <div align="center"><font face="MS Sans Serif" size="1" color="#FFFF99"><b>Cargado</b></font></div>
            </td>
            <td colspan="11">
              <select name="cargado">
				<option value="<? echo $cargado ?>" selected><?
switch ($cargado){
	case 0:
		echo "No";
		break;
	case 1:
		echo "Si";
		break;
}
?></option>
                <option value="1">Si</option>
                <option value="0">No</option>
              </select>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="55"> 
              <div align="center"><font face="MS Sans Serif" size="1" color="#FFFF99"><b>DT 
                rival</b></font></div>
            </td>
            <td colspan="11"> 
              <input type="text" name="DTrival" size="30" value="<? echo $DTrival ?>">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="55"> 
              <div align="center"><font face="MS Sans Serif" size="1" color="#FFFF99"><b>DT</b></font></div>
            </td>
            <td colspan="11"> 
              <input type="text" name="DT" size="30" value="<? echo $DT ?>">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="55"> 
              <div align="center"><font size="1" face="MS Sans Serif" color="#FFFF99"><b>Arbitros</b></font></div>
            </td>
            <td colspan="11"> 
              <input type="text" name="arbitros" size="65" value="<? echo $arbitros ?>">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="55"> 
              <div align="center"><font size="1" face="MS Sans Serif"><b><font color="#FFFF99">Campeonato</font></b></font></div>
            </td>
            <td colspan="11"> 
              <select name="campeonato">
				<option value="<? echo $campeonato ?>" selected><?
switch ($campeonato){
	case "l":
		echo "Local";
		break;
	case "i":
		echo "Internacional";
		break;
}
?></option>
                <option value="l">Local</option>
                <option value="i">Internacional</option>
              </select>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="55"> 
              <div align="center"><font face="MS Sans Serif" size="1" color="#FFFF99"><b>Fecha</b></font></div>
            </td>
            <td colspan="11"><font face="MS Sans Serif" size="1">A&ntilde;o
<?
$fechacorta = strtok($fecha, "-");
$x=1;
while ($fechacorta){
	$date[$x] = $fechacorta;
	$fechacorta = strtok("-");
	$x++;
}
?>
              <select name="date1">
				<option selected><? echo $date[1] ?></option>
                <option>2000</option>
                <option>2001</option>
                <option>2002</option>
                <option>2003</option>
                <option>2004</option>
                <option>2005</option>
                <option>2006</option>
                <option>2007</option>
                <option>2008</option>
                <option>2009</option>
                <option>2010</option>
              </select>
              Mes 
              <select name="date2">
				<option selected><? echo $date[2] ?></option>
                <option>01</option>
                <option>02</option>
                <option>03</option>
                <option>04</option>
                <option>05</option>
                <option>06</option>
                <option>07</option>
                <option>08</option>
                <option>09</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
              </select>
              Dia 
              <select name="date3">
				<option selected><? echo $date[3] ?></option>
                <option>01</option>
                <option>02</option>
                <option>03</option>
                <option>04</option>
                <option>05</option>
                <option>06</option>
                <option>07</option>
                <option>08</option>
                <option>09</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
                <option>13</option>
                <option>14</option>
                <option>15</option>
                <option>16</option>
                <option>17</option>
                <option>18</option>
                <option>19</option>
                <option>20</option>
                <option>21</option>
                <option>22</option>
                <option>23</option>
                <option>24</option>
                <option>25</option>
                <option>26</option>
                <option>27</option>
                <option>28</option>
                <option>29</option>
                <option>30</option>
                <option>31</option>
              </select>
              </font></td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="55"> 
              <div align="center"><font size="2" face="MS Sans Serif" color="#FFFF99"><b><font size="1">Resultado</font></b></font></div>
            </td>
            <td colspan="11"> 
              <input type="text" name="resultado" size="5" maxlength="5" value="<? echo $resultado ?>">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="55"> 
              <div align="center"><font face="MS Sans Serif" color="#FFFF99" size="1"><b>L/V</b></font></div>
            </td>
            <td colspan="11"> 
              <select name="local">
				<option value="<? echo $local ?>" selected><? 
switch ($local){
	case "0":
		echo "Si";
		break;
	case "1":
		echo "No";
		break;
}
?></option>
                <option value="0">Si</option>
                <option value="1">No</option>
              </select>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="55"> 
              <div align="center"><font face="Ms Sans Serif" size="1"><b><font color="#FFFF99">Rival</font></b></font></div>
            </td>
            <td colspan="11"> 
              <div align="left"> 
                <input type="text" name="rival" size="30" value="<? echo $rival ?>">
              </div>
            </td>
          </tr>
        </table>
        <div align="right">
          <input type="submit" name="Submit" value="Modificar partido">
        </div>
      </td>
    </tr>
  </table>
</form>
</body>
</html>
