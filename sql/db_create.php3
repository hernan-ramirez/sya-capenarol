<?php
/* $Id: db_create.php3,v 1.4 2000/02/13 20:15:48 tobias Exp $ */

require("header.inc.php3");

$result = mysql_query("CREATE DATABASE $db") or mysql_die();

$message = "$strDatabase $db $strHasBeenCreated";
require("db_details.php3");

?>
