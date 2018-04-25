<?php
	if(isset($_POST['submit']))
	{
		$connect = mysqli_connect("127.0.0.1", "root", "2bornot2B",  "mapdb");

		$s_name = $_POST['settlement_name'];
		$mysql_query = "SELECT * FROM settlements WHERE name LIKE '%" .$s_name. "%'";
		$query = mysqli_query($connect, $mysql_query);

		while ($row = mysqli_fetch_assoc($query)) {
			$county = $row['county_id'];
			$district = $row['district_id'];
		}
	}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 

	<!-- style.css -->
    <link rel="stylesheet" href="style.css">

    <!--- Boostrap CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<!-- Required Meta tags -->
  	<title>Google map API test</title>
  </head>

  <body>
    <div class="container">
    	<h1 class="py-5 text-center">My Google Maps Demo</h1>
	  		<form action="index.php" method="post" class="text-center py-5">
			    <div class="row">
			    	<div class="col-md-3 py-3">
			    		<label>Address or City of Event:</label>
			    	</div>
			    	<div class="col-md-6 py-3">
		        		<input class="form-control" type="text" name="settlement_name">
		        	</div>
		        	<div class="col-md-3 py-3">
			      		<input type="submit" name="submit" value="Submit">
			      	</div>
		        	<div class="col-md-3 py-3">
			    		<label>County:</label>
			    	</div>
			      	<div class="col-md-9 py-3">
		        		<input class="form-control" type="text" name="result" value="<?php echo $county;?>">
		        	</div>
		        	<div class="col-md-3 py-3">
			    		<label>Ciruit Disctrict:</label>
			    	</div>
			      	<div class="col-md-9 py-3">
		        		<input class="form-control" type="text" name="result2" value="<?php echo $district;?>">
		        	</div>
				</div>
		  </form>
	</div>

	<!--- Map Div -->
    <div class="container-fluid" id="map"></div>
		    
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCmJACnjlTKQVKWjS_fNOXJ1Z0B2t7q6EE&callback=initMap"></script>

    <script>
    function initMap() {

 		map = new google.maps.Map(document.getElementById('map'), {
    		center: new google.maps.LatLng(32.7795,-89.7031),
    		zoom: 7
  		});

	    // KML Layer Import
		var kmlurl = "https://s3.amazonaws.com/kmllayer/ms_counties.kml"; 

		var KmlLayer = new google.maps.KmlLayer(kmlurl, {
	  		preserveViewport: false,
		 	map: map
		});

	}
    </script>

  </body>

</html>