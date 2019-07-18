<%
// Me conecto a la base de datos.

if (!mysql_pconnect("penarol.sportsya.net", "root", "zukarytas")) {
  echo "Error al conectarse a la base de datos";
} else {
  if (!mysql_select_db("penarol")) {
    echo "Error al seleccionar la base de datos";
  }
}
%>
