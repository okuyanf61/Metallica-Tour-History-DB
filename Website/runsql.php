<?php
	
	if(isset($_POST['runsql'])){
		include("credentials.php");

		// Create connection
		$conn = mysqli_connect($servername, $username, $password, $dbname);
		// Check connection
		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		}

		
		$sql = htmlspecialchars_decode(base64_decode($_POST['runsql']));

		
                $result = mysqli_query($conn, $sql);
		ob_start();
		session_start();
		if(!isset($_SESSION["login"])){
			header("Location:letmein.php");
		}
		else {
			if ($result->num_rows > 0) {
				// output data of each row
                                echo "<table class=\"table table-dark table-striped table-bordered table-hover table-sm table-responsive\" style=\"background-color: #dee2e6;-webkit-border-radius: 10px 10px 10px 10px;border-radius: 10px 10px 10px 10px;white-space: nowrap;width: 1%;\"><tbody>";
				while($row = $result->fetch_assoc()) {
                                        echo "<tr>";
					foreach($row as $key => $value)
					{
					echo "<td>" . $value . "</td>";
					}
                                        echo "</tr>";
					
				}
                                echo "</tbody></table>";
			} else {
				echo "0 result";
			}
			$conn->close();
		}

	}


	
	


?>