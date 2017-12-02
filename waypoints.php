<?
class gpx
{
	var $headers;
	var $waypoints;
	var $footers;

	function gpx()
	{
		$query = "select sr.lat, sr.lon, sr.name, sr.description, rt.name, sr.id from ShootingRange sr, RangeType rt where sr.lat is not null and sr.lon is not null and sr.rangetypeid = rt.id order by sr.name;";
		$result = mysql_query($query);
		if (mysql_num_rows($result) != 0)
		{
			$i = 0;
			$this->getHeaders();
			while ($row = mysql_fetch_row($result))
			{
				//$i++;
				//if ($i > 3)
				//	break;
				$this->getWaypoints($row);
			}
			$this->waypoints = implode("", $this->waypoints);
			$this->getFooters();
			$this->flush();
		}	
	}

	function flush()
	{
		$handle = fopen("shootingwaypoints.gpx","w");

		fwrite($handle,$this->headers);
		fwrite($handle,$this->waypoints);
		fwrite($handle,$this->footers);
		
		fclose($handle);
	}

	function getHeaders()
	{
		//$this->headers = "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\ http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">";
		$this->headers = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n";
		$this->headers .= "<gpx version=\"1.0\" creator=\"Svenska Skjutbanor backstedt.mikael@gmail.com\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns=\"http://www.topografix.com/GPX/1/0\"  xsi:schemaLocation=\"http://www.topografix.com/GPX/1/0 http://www.topografix.com/GPX/1/0/gpx.xsd\">\n";

		//echo($this->headers);
	}

	function getFooters()
	{
		$this->footers = "</gpx>\n";
		//echo($this->footers);
	}

	function getWaypoints($wpt)
	{
		$query = "select c.name from Club c, RangeHomeclub rh where c.id = rh.clubid and rh.rangeid = " . $wpt[5] . " order by c.name;";
		//echo($query . "<br>");

		$result = mysql_query($query);
			
		$clubs;
		while ($row = mysql_fetch_row($result))
		{
			if (trim($row[0]) != "")
				$clubs[] = $row[0];
		}
		$clubs = implode("\n",$clubs);
		//echo($clubs . "\n");



		$desc = "";
		$lat = $wpt[0];
		$lon = $wpt[1];
		$name = $wpt[2];

		if (trim($wpt[4]) != "")
			$desc = "Bantyp:\n\n" . $wpt[4] . "\n\n";
		if (trim($clubs) != "")
			$desc .= "Klubbar:\n\n" . $clubs . "\n\n";
		if (trim($wpt[3]) != "")
			$desc .= utf8_encode("Övrigt") . ":\n\n" . $wpt[3];

		


		$temp = "<wpt lat=\"" . $lat . "\" lon=\"" . $lon . "\">";
		$temp .= "<name>" . $name . "</name>";
		$temp .= "<cmt>" . substr(trim($desc),0,255) . "</cmt>";
		$temp .= "<sym>Blind</sym>";
		$temp .= "</wpt>";

		$this->waypoints[] =  $temp;

		
		echo($temp . "<br>");
	}


}
require_once("db_connect.php");
new dbConnect();
$gpx = new gpx();
?>
