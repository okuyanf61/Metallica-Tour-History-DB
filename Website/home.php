<?php
ob_start();
session_start();
if(!isset($_SESSION["login"])){
  header("Location:letmein.php");
}
?>
<html>
<head>
<title>DB 2019</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/back.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
     function runme(id) {
      var query = document.getElementById(id).innerHTML;
      var encodedQuery = btoa(query);
      console.log(encodedQuery);


     $.ajax
     ({

      type: 'POST',
      url:'runsql.php',
      data: {runsql:encodedQuery},

      success	:function(donen_veri)
      {
        document.getElementById(id+"_result").innerHTML = donen_veri;

	    }
      })
     }
</script>


</head>
<body style="background-color: #c850c0;background: -webkit-linear-gradient(45deg, #4158d0, #c850c0);background: -o-linear-gradient(45deg, #4158d0, #c850c0);background: -moz-linear-gradient(45deg, #4158d0, #c850c0);background: linear-gradient(45deg, #4158d0, #c850c0)">
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
        <a class="navbar-brand" href="#">DB 2019</a>
      </div>
      <ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="tours.php">Tours</a></li>
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
  <div class="container">
  <h2><br></h2>
  <p><br></p>
  <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">How many concerts did Metallica perform?</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse">
        <div class="panel-body"><code id="sql1">SELECT count(*) FROM tour;</code>
        <button class="btn btn-success" onclick="runme('sql1')" style="float: right">Run</button><br>
        <h5 type="hidden" id="sql1_result" style="padding-left: 5px;"></h5>
        </div>

      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">When did Metallica perform first concert?</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body"><code id="sql2">SELECT min(date) FROM tour;</code>
        <button class="btn btn-success" onclick="runme('sql2')" style="float: right">Run</button><br>
        <h5 type="hidden" id="sql2_result" style="padding-left: 5px;"></h5>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">How many tours has Metallica worldwired?</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body"><code id="sql3">SELECT count(*) FROM tour WHERE tour LIKE "World%";</code>
        <button class="btn btn-success" onclick="runme('sql3')" style="float: right">Run</button><br>
        <h5 type="hidden" id="sql3_result" style="padding-left: 5px;"></h5>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">How many songs were played at Metallica concerts in total?</a>
        </h4>
      </div>
      <div id="collapse4" class="panel-collapse collapse">
        <div class="panel-body"><code id="sql4">SELECT sum(set_length) FROM tour;</code>
        <button class="btn btn-success" onclick="runme('sql4')" style="float: right">Run</button><br>
        <h5 type="hidden" id="sql4_result" style="padding-left: 5px;"></h5>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">Which song did Metallica usually finish her concert with?</a>
        </h4>
      </div>
      <div id="collapse5" class="panel-collapse collapse">
        <div class="panel-body"><code id="sql5">SELECT song_name, count(tour_to_song.type) FROM tour_to_song JOIN song ON tour_to_song.song_id = song.song_id WHERE tour_to_song.type LIKE "LTS%" GROUP BY song_name ORDER BY count(tour_to_song.type) DESC LIMIT 1;</code>
        <button class="btn btn-success" onclick="runme('sql5')" style="float: right">Run</button><br>
        <h5 type="hidden" id="sql5_result" style="padding-left: 5px;"></h5>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">How many songs maximally did Metallica played at a concert?</a>
        </h4>
      </div>
      <div id="collapse6" class="panel-collapse collapse">
        <div class="panel-body"><code id="sql6">SELECT max(set_length) FROM tour;</code>
        <button class="btn btn-success" onclick="runme('sql6')" style="float: right">Run</button><br>
        <h5 type="hidden" id="sql6_result" style="padding-left: 5px;"></h5>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse7">How many songs averagely were played at Metallica concerts?</a>
        </h4>
      </div>
      <div id="collapse7" class="panel-collapse collapse">
        <div class="panel-body"><code id="sql7">SELECT avg(set_length) FROM tour;</code>
        <button class="btn btn-success" onclick="runme('sql7')" style="float: right">Run</button><br>
        <h5 type="hidden" id="sql7_result" style="padding-left: 5px;"></h5>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse8">How many of Metallica's concerts have solo guitar?</a>
        </h4>
      </div>
      <div id="collapse8" class="panel-collapse collapse">
        <div class="panel-body"><code id="sql8">SELECT count(*) FROM event_to_inst JOIN instrument ON event_to_inst.instrument_id = instrument.instrument_type WHERE instrument_name = "guitar";</code>
        <button class="btn btn-success" onclick="runme('sql8')" style="float: right">Run</button><br>
        <h5 type="hidden" id="sql8_result" style="padding-left: 5px;"></h5>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse9">What is the average position of Metallica's concerts?</a>
        </h4>
      </div>
      <div id="collapse9" class="panel-collapse collapse">
        <div class="panel-body"><code id="sql9">SELECT avg(latitude), avg(longitude) FROM tour;</code>
        <button class="btn btn-success" onclick="runme('sql9')" style="float: right">Run</button><br>
        <h5 type="hidden" id="sql9_result" style="padding-left: 5px;"></h5>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse10">How many concerts did Metallica perform after January 01, 2008?</a>
        </h4>
      </div>
      <div id="collapse10" class="panel-collapse collapse">
        <div class="panel-body"><code id="sql10">SELECT count(*) FROM tour WHERE date > "2008-01-01";</code>
        <button class="btn btn-success" onclick="runme('sql10')" style="float: right">Run</button><br>
        <h5 type="hidden" id="sql10_result" style="padding-left: 5px;"></h5>
        </div>
      </div>
    </div>
	<div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse11">What is the most performed song in concerts at total?</a>
        </h4>
      </div>
      <div id="collapse11" class="panel-collapse collapse">
        <div class="panel-body"><code id="sql11">SELECT song_name, count(tour_to_song.type) FROM tour_to_song JOIN song ON tour_to_song.song_id = song.song_id WHERE tour_to_song.type LIKE "S%" GROUP BY song_name ORDER BY count(tour_to_song.type) DESC LIMIT 1;</code>
        <button class="btn btn-success" onclick="runme('sql11')" style="float: right">Run</button><br>
        <h5 type="hidden" id="sql11_result" style="padding-left: 5px;"></h5>
        </div>
      </div>
    </div>
  </div>
</div>



</body>
</html>
