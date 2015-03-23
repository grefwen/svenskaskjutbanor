<?
require_once("db_connect.php");
require_once("datum.php");
new dbConnect();
$datum = new Datum();

$query = "select id,lat,lon from ShootingRange where lat is not null and lon is not null;";
$result = mysql_query($query);

if (mysql_num_rows($result) != 0)
{
	$lat = "";
	$lon = "";

	

	while ($row = mysql_fetch_row($result))
	{
		$latPrefix = "N";
		$lat = sprintf("%.6f",$datum->toDecimal($row[1]));
		if ($lat < 0)
			$latPrefix = "S";


		$lonPrefix = "E";
		$lon = sprintf("%.6f",$datum->toDecimal($row[2]));
		if ($lon < 0)
			$lonPrefix = "W";
		if ($lon < 100)
			$lonPrefix .= "0";

		echo($row[1] . ", " . $row[2] . " -> " . $lat . ", " . $lon . "<br>");
		echo($lat . ", " . $lon . " -> " . $latPrefix . $datum->toWGS84($lat) . ", " . $lonPrefix . $datum->toWGS84($lon) . "<br>");
		$query = "update ShootingRange set latDec = " . $lat . ", lonDec = " . $lon . " where id = " . $row[0] . ";";
		echo("Q: " . $query . "<br><br>\n");
		mysql_query($query);
	}
}
