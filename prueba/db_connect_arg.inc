<?


$dbhost  = 'localhost';
$dbhost2  = '63.82.41.68';
$dbuser  = 'root';
$dbpass  = 'zukarytas';
$dbdb    = 'penarol';

$rc = mysql_connect($dbhost,$dbuser, $dbpass); 
$rca = @mysql_select_db($dbdb, $rc);
if(empty($rca)) {
	$rc = mysql_connect($dbhost2, $dbuser, $dbpass); 
	$rca = @mysql_select_db($dbdb, $rc);
}

if ($usar_cache==1)
{
	$result = @mysql_query("SELECT value FROM cache_source");
	if($row = @mysql_fetch_object($result)) 
	{ 
		$cache = $row->value;
	}
}

?>
