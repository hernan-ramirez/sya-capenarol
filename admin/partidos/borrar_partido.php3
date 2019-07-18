<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFFFFF">
<?
$funcion = "borrar_partido_delete";

include "db_connect_arg.inc" ?>

<font face="Ms Sans Serif" size="1">Capenarol.Com<br>
<b>Administrador de Partidos</b></font><br>
<br>
<form  method="post" action="<? echo $funcion ?>.php3">
  <table width="600" border="0" bgcolor="#000000" cellspacing="0" cellpadding="0">
    <tr> 
      <td> 
        <table width="600" border="0" cellpadding="1" cellspacing="1">
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="68"> 
              <div align="center"><font face="MS Sans Serif" size="2" color="#FFFF99"><b>Partido 
                </b></font> </div>
            </td>
            <td colspan="11" width="523"> 
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
          <input type="submit" name="Submit" value="Borrar partido">
        </div>
      </td>
    </tr>
  </table>
</form>
<p>&nbsp;</p>


</body>
</html>