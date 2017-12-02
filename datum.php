<?
class Datum
{
	function toDecimal($str)
	{
		echo("Str: " . $str . "<br>");
		$temp = explode(" ",$str);
		
		$int = (int)trim(substr($temp[0],1));
		$dec = floatval(trim(substr($temp[1],0,-1)));
		$dec = $dec/60*100;
		$dec = $dec/100;


		if ((substr($str,0,1) == "s") or
			(substr($str,0,1) == "S") or
			(substr($str,0,1) == "w") or
			(substr($str,0,1) == "W"))
			$int = $int -180;

		$number = $int + $dec;
		return $number;
	}

	function toWGS84($str)
	{
		$int = "";
		$min = "";
		$sec = "";

		$int = (int)$str;
		$min = floatval($str-((int)$str)) *60;
		return sprintf("%d %.3f'",$int,$min);
	}
}

