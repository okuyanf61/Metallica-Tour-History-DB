<?php
include("credentials.php");
$host=$servername;
$db=$dbname;
$user=$username;
$pass=$password;
$conn=@mysql_connect($host,$user,$pass) or die("Mysql Baglanamadi");

mysql_select_db($db,$conn) or die("Veritabanina Baglanilamadi");
mysql_set_charset('latin5',$conn);
ob_start();
session_start();

$kadi = mysql_real_escape_string($_POST['username']);
$sifre = mysql_real_escape_string($_POST['password']);

$sql_check = mysql_query("select * from users where username='".$kadi."' and password='".$sifre."' ") or die(mysql_error());

if(mysql_num_rows($sql_check))  {
    $_SESSION["login"] = "true";
    $_SESSION["user"] = $kadi;
    $_SESSION["pass"] = $sifre;
    header("Location:home.php");
}
else {
	if($kadi=="" or $sifre=="") {
		echo "<center>Please fill all the blank spaces! <a href=javascript:history.back(-1)>Go Back</a></center>";
	}
	else {
		echo "<center>Wrong Username or Password<br><a href=javascript:history.back(-1)>Go Back</a></center>";
	}
}

ob_end_flush();
?>
