<?
	class dbConnect
	{
		function dbConnect()
		{
			mysql_connect("localhost","root","olloncocktail");
			mysql_select_db("shooting");
			mysql_query("set names utf8;");
		}
	}

?>
