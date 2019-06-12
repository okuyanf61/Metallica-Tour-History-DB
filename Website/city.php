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
				<li><a href="tours.php">Tours</a></li>
				<li class="active"><a href="#">Cities</a></li>
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

	$sql = "SELECT city_id, city_name, state.state_id, state_name, country.country_id, country_name FROM city JOIN state ON city.state_id = state.state_id JOIN country ON state.country_id = country.country_id LIMIT 30";
	$result = mysqli_query($conn, $sql);
	ob_start();
	session_start();
	if(!isset($_SESSION["login"])){
		header("Location:letmein.php");
	}
	else {
		if ($result->num_rows > 0) {
			echo "<table class=\"table table-dark table-striped table-bordered table-hover table-sm table-responsive\" style=\"background-color: #dee2e6;-webkit-border-radius: 10px 10px 10px 10px;border-radius: 10px 10px 10px 10px;\"><thead class=\"bg-dark text-light\"><tr><th>City ID</th><th>City Name</th><th>State ID</th><th>State Name</th><th>Country ID</th><th>Country Name</th></tr></thead><tbody>";
			// output data of each row
			while($row = $result->fetch_assoc()) {
				echo "<tr><td>".$row["city_id"]."</td><td>".$row["city_name"]."</td><td>".$row["state_id"]."</td><td>".$row["state_name"]."</td><td>".$row["country_id"]."</td><td>".$row["country_name"]."</td></tr>";
			}
			echo "</tbody></table>";
		} else {
			echo "0 results";
		}
		$conn->close();
	}


?>

	</div>
</div>
</div>
</body>
</html>
