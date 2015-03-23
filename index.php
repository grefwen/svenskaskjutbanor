<?
require_once("db_connect.php");
require_once("datum.php");

new dbConnect();
$datum = new Datum();

echo("<h1>Svenska skjutbanor</h1>");

$query = "select count(*) from ShootingRange where lat is not null;";
$result = mysql_query($query);
if (mysql_num_rows($result) != 0)
{
	$row = mysql_fetch_row($result);
	echo("<p>Antal skjutbanor i databasen: " . $row[0] . "</p>");
}

$query = "select distinct l.id, l.name from Location l, ShootingRange r where l.id = r.locationid order by l.name;";
$result = mysql_query($query);

echo(utf8_encode("<p>Nedanstående i GoogleMap-format finns <a href='googlemaps.php' target='_new'>här</a>.<br>En GPX-fil för din GPS finns <a href='http://grefwen.mine.nu/skytte/shootingwaypoints.gpx'>här</a>. Högerklicka och \"spara som...\"</p>"));

if (mysql_num_rows($result) != 0)
{

	while ($row = mysql_fetch_row($result))
	{
		echo("<h2>". $row[1] . "</h2>\n");

		$query = "select r.id,r.name, r.lat, r.lon, r.description, rt.name from ShootingRange r, RangeType rt where r.rangetypeid = rt.id and r.locationid = " . $row[0] . " order by r.name;";
		//echo("Q: " . $query . "<br>\n");
		
		$result2 = mysql_query($query);
		$diciplines;
		$clubs;
		$description;

		while ($row2 = mysql_fetch_row($result2))
		{
			$gps = "";
			$description = "";

			if (trim($row2[2]) != "")
			{
				$lat = $row2[2];
				$lon = $row2[3];

				$latPrefix = "N";
				if ($lat < 0)
					$latPrefix = "S";

				$lonPrefix = "E";
				if ($lon < 0)
					$lonPrefix = "W";
				if ($lon < 100)
					$lonPrefix .= "0";

				$gps = $latPrefix . $datum->toWGS84($lat) . ", " . $lonPrefix . $datum->toWGS84($lon);
				//$gps = trim($row2[2]) . ", " . trim($row2[3]);
			}

			if (trim($row2[4]) != "")
			{
				$description = trim($row2[4]);
			}
			
			echo("<table border=1>\n");

			// ID -----------------
			echo("<tr><td valign='top'>" . utf8_encode("<b>ID:</b>") . "</td><td>" . $row2[0] . "</td></tr>");

			// Namn -----------------
			echo("<tr><td valign='top'>" . utf8_encode("<b>Namn:</b>") . "</td><td>" . $row2[1] . "</td></tr>");

			// GPS --------------------
			echo("<tr><td valign='top'>" . utf8_encode("<b>GPS:</b>") . "</td><td><a href='http://maps.google.com/maps?q=" . urlencode($gps) . "' target='_new'>" . $gps . "</a></td></tr>");

			// Bantyp -----------------
			echo("<tr><td valign='top'>" . utf8_encode("<b>Bantyp:</b>") . "</td><td>" . $row2[5] . "</td></tr>");

			// Hemmaklubbar -------------------------
			$query = "select c.name, c.website from Club c, RangeHomeclub hc, ShootingRange r where hc.ClubID = c.id and r.id = hc.rangeID and r.id = " . $row2[0] . " order by name;";
			//echo("Q: " . $query . "<br>\n");
			$result3 = mysql_query($query);
			
			while ($row3 = mysql_fetch_row($result3))
			{
				if (trim($row3[1]) != "")
					$clubs[] = "<a href='" . $row3[1] . "' target='_new'>" . $row3[0] . "</a>";
				else
					$clubs[] = $row3[0];

			}
			$clubs = implode("<br>",$clubs);		
			echo("<tr><td valign='top'>" . utf8_encode("<b>Banans hemmaklubb(ar):</b>") . "</td><td>" . $clubs . "</td></tr>");
			$clubs = "";

			// Tillåtna grenar ------------------------
			$query = "select d.name from Dicipline d, AllowedDicipline ad, ShootingRange r where ad.DiciplineID = d.id and r.id = ad.rangeID and r.id = " . $row2[0] . " order by name;";

			$result3 = mysql_query($query);
			
			while ($row3 = mysql_fetch_row($result3))
			{
				$diciplines[] = $row3[0];
			}
			$diciplines = implode("<br>",$diciplines);	
			echo("<tr><td valign='top'>" . utf8_encode("<b>Tillåtna grenar:</b>") . "</td><td>" . $diciplines . "</td></tr>");
			$diciplines = "";

			// Beskrivning ------------------------------

			echo("<tr><td valign='top'>" . utf8_encode("<b>Beskrivning:</b>") . "</td><td>" . $description . "</td></tr>");

			echo("</table><br>\n");
			
		}
		
	echo("<hr>");
	}
}

// klasser och organisationer
echo("<h2>Grenar</h2>");
$query = "select d.name from Dicipline d order by d.name;";
//echo("Q: " . $query);
$result = mysql_query($query);
if (mysql_num_rows($result) != 0)
{
	echo("<table border=1>\n");
	while ($row = mysql_fetch_row($result))
	{
		echo("<tr><td valign='top'>" . $row[0] . "</td></tr>");
	}
	echo("</table>");

}