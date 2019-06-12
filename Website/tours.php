<html>
<head>
<title>DB 2019</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="animations.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body style="background-color: #c850c0;background: -webkit-linear-gradient(45deg, #4158d0, #c850c0);background: -o-linear-gradient(45deg, #4158d0, #c850c0);background: -moz-linear-gradient(45deg, #4158d0, #c850c0);background: linear-gradient(45deg, #4158d0, #c850c0);">



	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">DB 2019</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="home.php">Home</a></li>
				<li class="active"><a href="#">Tours</a></li>
				<li><a href="city.php">Cities</a></li>
				<!--
				<li><a href="location.php">Location</a></li>
				<li><a href="sets.php">Sets</a></li>
				<li><a href="song-types.php">Song Types</a></li>
				<li><a href="counter.php">Counter</a></li>
				-->
			</ul>
			<ul class="nav navbar-nav navbar-right">
      	<li><a href="logout.php"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
		</div>
	</nav>

<br><br><br><br>
<div class="limiter">
<div class="container">
	<div class="wrapper fadeInDown">

<?php
	include("credentials.php");
	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);
	// Check connection
	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}

	$sql = "SELECT * FROM tour JOIN event_url ON tour.event_id = event_url.event_id LIMIT 30";
	$result = mysqli_query($conn, $sql);
	ob_start();
	session_start();
	if(!isset($_SESSION["login"])){
		header("Location:letmein.php");
	}
	else {
		if ($result->num_rows > 0) {
			echo "<table class=\"table table-dark table-striped table-bordered table-hover table-sm table-responsive\" style=\"background-color: #dee2e6;-webkit-border-radius: 10px 10px 10px 10px;border-radius: 10px 10px 10px 10px;\"><thead class=\"bg-dark text-light\"><tr><th>Date</th><th>Venue</th><th>Festival</th><th>Tour</th><th>City ID</th><th>Event ID</th></tr></thead><tbody>";
			// output data of each row
			while($row = $result->fetch_assoc()) {
				echo "<tr><td>".$row["date"]."</td><td>".$row["venue"]."</td><td>".$row["festival"]."</td><td>".$row["tour"]."</td><td>".$row["city_id"]."</td><td><a href=\"".$row["URL"]."\" target=\"_blank\">".$row["event_id"]."</td></tr>";
			}
			echo "</tbody></table>";
		} else {
			echo "0 result";
		}
		$conn->close();
	}


?>

	</div>
</div>
</div>
</body>
</html>
