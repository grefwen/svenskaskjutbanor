<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
<style type="text/css">
  html { height: 100% }
  body { height: 100%; margin: 0px; padding: 0px }
  #map_canvas { height: 100%; }
</style>
<script type="text/javascript"
    src="http://maps.google.com/maps/api/js?sensor=true">
</script>
<script type="text/javascript">
  function initialize() {
    var myLatlng = new google.maps.LatLng(63,15.865466666667);
    var myOptions = {
	  scaleControl: true,
      zoom: 5,
      center: myLatlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
    <? //getPoints() ?>
  }
</script>
</head> 


<?
function getPoints()
{
	require_once("db_connect.php");
	require_once("datum.php");
	new dbConnect();
	$datum = new Datum();

	$query = "select lat,lon,name,description,id,rangetypeid from ShootingRange where locationid is not null and lat is not null and lon is not null and locationid > 0 and rangetypeid > 0;";

	$result = mysql_query($query);

	if (mysql_num_rows($result) != 0)
	{
		$i=0;
		while ($row = mysql_fetch_row($result))
		{
			$i++;
			$lat = $row[0];
			$lon = $row[1];
			$name = $row[2];
			$rangetype = $row[5];

			$gps =	sprintf("%.6f",$lat) . ", " . sprintf("%.6f",$lon) . "<br>";

			$latPrefix = "N";
			if ($lat < 0)
				$latPrefix = "S";

			$lonPrefix = "E";
			if ($lon < 0)
				$lonPrefix = "W";
			if ($lon < 100)
				$lonPrefix .= "0";

			$gps2 =	$latPrefix . substr($datum->toWGS84($lat),0,-1) . "\', " . $lonPrefix . substr($datum->toWGS84($lon),0,-1) . "\'<br>";

			$desc = "<h2>" . $name . "</h2>";
			$desc .= "<b>GPS (WGS84): </b>" . $gps2;
			$desc .= "<b>GPS (Decimal): </b>" .$gps;

			if (trim($row[3]) != "")
				$desc .= "<p>" . $row[3] . "</p>";

			$query2 = "select c.name, c.website from Club c, RangeHomeclub hc where c.id = hc.clubid and hc.RangeID = " . $row[4] . " order by c.name;";
			$result2 = mysql_query($query2);
			$clubs;
			while ($row2 = mysql_fetch_row($result2))
			{
					if (trim($row2[1]) != "")
						$clubs[] = "<a href=\"" . $row2[1] . "\" target=\"_new\">" . $row2[0] . "</a>";
					else
						$clubs[] = $row2[0];			
			}
			$clubs = implode("<br>",$clubs);
			if (trim($clubs) != "")
				$clubs = "<p>" . $clubs . "</p>";

			// Icons ----------------------- TODO: Fixa direkt i databasen!
			
			if ($rangetype == 2) // luft/inomhus
				$icon = "mm_20_purple.png";
			else if ($rangetype == 3) // gev�r (80m+)
				$icon = "mm_20_green.png";
			else if ($rangetype == 4) // pistol (25m)
				$icon = "mm_20_blue.png";
			else if ($rangetype == 5) // hagel
				$icon = "mm_20_orange.png";
			else if ($rangetype == 6) // 50m
				$icon = "mm_20_white.png";
			else if ($rangetype == 7) // Nedlagd
				$icon = "mm_20_black.png";
			else if ($rangetype == 8) // �lgbana/Viltbana
				$icon = "mm_20_brown.png";
			else
				$icon = "mm_20_red.png"; // Mixat/vet ej

			?>
			var Latlng<?= $i?> = new google.maps.LatLng(<?= $lat?>,<?= $lon?>);
			var marker<?= $i?> = new google.maps.Marker({
				position: Latlng<?= $i?>, 
				icon: 'http://labs.google.com/ridefinder/images/<?= $icon?>',
				map: map,
				title:"<?= $name?>"
			});

			var contentString<?= $i?> = '<div id="content">'+
								'<?= $desc?>'+
								'<?= $clubs?>'+
								'</div>';
				
			var infowindow<?= $i?> = new google.maps.InfoWindow({
				content: contentString<?= $i?>
			});

			google.maps.event.addListener(marker<?= $i?>, 'click', function() {
			  infowindow<?= $i?>.open(map,marker<?= $i?>);
			});
			<?
			$clubs = "";
		}
	}
}



?>

<body onload="initialize()">
  <div id="map_canvas" style="width:100%; height:100%;"></div>
</body>
</html>
