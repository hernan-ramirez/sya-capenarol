<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFFFFF">
<?
$funcion = "agregar_partido_add";

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
            <td bgcolor="#000000" width="55">
              <div align="center"><font face="MS Sans Serif" size="1" color="#FFFF99"><b>Cargado</b></font></div>
            </td>
            <td colspan="11">
              <select name="cargado">
                <option value="1">Si</option>
                <option value="0" selected>No</option>
              </select>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="55"> 
              <div align="center"><font face="MS Sans Serif" size="1" color="#FFFF99"><b>DT 
                rival</b></font></div>
            </td>
            <td colspan="11"> 
              <input type="text" name="DTrival" size="30">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="55"> 
              <div align="center"><font face="MS Sans Serif" size="1" color="#FFFF99"><b>DT</b></font></div>
            </td>
            <td colspan="11"> 
              <input type="text" name="DT" size="30">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="55"> 
              <div align="center"><font size="1" face="MS Sans Serif" color="#FFFF99"><b>Arbitros</b></font></div>
            </td>
            <td colspan="11"> 
              <input type="text" name="arbitros" size="65">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="55"> 
              <div align="center"><font size="1" face="MS Sans Serif"><b><font color="#FFFF99">Campeonato</font></b></font></div>
            </td>
            <td colspan="11"> 
              <select name="campeonato">
                <option value="l" selected>Local</option>
                <option value="i">Internacional</option>
              </select>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="55"> 
              <div align="center"><font face="MS Sans Serif" size="1" color="#FFFF99"><b>Fecha</b></font></div>
            </td>
            <td colspan="11"><font face="MS Sans Serif" size="1">A&ntilde;o 
              <select name="date1">
                <option selected>2000</option>
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
                <option selected>01</option>
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
                <option selected>01</option>
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
              <input type="text" name="resultado" size="5" maxlength="5">
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="55"> 
              <div align="center"><font face="MS Sans Serif" color="#FFFF99" size="1"><b>L/V</b></font></div>
            </td>
            <td colspan="11"> 
              <select name="local">
                <option value="0" selected>Local</option>
                <option value="1">Visitante</option>
              </select>
            </td>
          </tr>
          <tr bgcolor="#FFFFFF"> 
            <td bgcolor="#000000" width="55"> 
              <div align="center"><font face="Ms Sans Serif" size="1"><b><font color="#FFFF99">Rival</font></b></font></div>
            </td>
            <td colspan="11"> 
              <div align="left"> 
                <input type="text" name="rival" size="30">
              </div>
            </td>
          </tr>
        </table>
        <div align="right">
          <input type="submit" name="Submit" value="Agregar partido">
        </div>
      </td>
    </tr>
  </table>
</form>
<p>&nbsp;</p>


</body>
</html>