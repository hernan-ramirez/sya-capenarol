<%

$result = mysql_query("select * from configuracion");

// Defino las variables globales del sql.

while($conf = mysql_fetch_array($result)) {
  $$conf["nombre"] = $conf["valor"];
}
%>
