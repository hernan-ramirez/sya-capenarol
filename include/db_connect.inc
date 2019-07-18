<?


$dbhost  = 'db1.sportsya.net';
$dbhost2  = 'db1.sportsya.net';
$dbuser  = 'spirit';
$dbpass  = 'us3+h3f0rc3';
$dbdb    = 'sportsya2';

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
