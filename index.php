<?php
	// if(isset($_POST['submit']))
	// {
	// 	// These are the credentials for a test database on a test dev server, don't worry!
	// 	$connect = mysqli_connect("127.0.0.1", "root", "2bornot2B",  "mapdb");

	// 	$s_name = $_POST['settlement_name'];
	// 	$s_query = "SELECT * FROM settlements WHERE name LIKE '%" .$s_name. "%'";
	// 	$result = mysqli_query($connect, $s_query);

	// 	if($result->num_rows) {
	// 		while ($row = mysqli_fetch_assoc($result)) {
	// 			$county = $row['county_id'];
	// 			$district = $row['district_id'];
	// 		}
	// 	} else {
	// 			echo "That name does not match any city in MS";
	// 	}
	// }
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
    <div class="container-fluid">
    	<h1 class="py-5 text-center">My Google Maps Demo</h1>

    	<div class="row">
    		<div class="col-md-4 my-5 py-5">
	            <form action="index.php" method="post">
	            	<div class="py-3">
	        			<input class="form-control" id="address" type="text" value="" placeholder="Address of event">
	        		</div>
	        		<div class="py-3">
		      			<button class="btn btn-outline-primary" id="submit" type="button">Submit</button>
		      		</div>
		      		<div class="py-3">
	        			<input class="form-control" type="text" name="result" value="" placeholder="County">
	        		</div>
	        		<div class="py-3">
	        			<input class="form-control" type="text" name="result2" value="" placeholder="District">
	        		</div>
			    </form>
			    <div class="py-3">
	        		<input id="lat" class="form-control" type="text" placeholder="Latitude" value="">
	        	</div>
	        	<div class="py-3">
	        		<input id="lng" class="form-control" type="text" placeholder="Longitude" value="">
	        	</div>
			</div>
		    <div class="col-md-8" id="map"></div>
		</div>
	</div>
		    
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCmJACnjlTKQVKWjS_fNOXJ1Z0B2t7q6EE&callback=initMap"></script>

    <script>
    function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
        	zoom: 8,
        	center: {lat: 32.7795, lng: -89.7031}
        });

        var geocoder = new google.maps.Geocoder();

        document.getElementById('submit').addEventListener('click', function() {
        	geocodeAddress(geocoder, map);
        });

		var kml_url = "https://s3.amazonaws.com/kmllayer/counties_ms.kml"; 

		var Kmllayer = new google.maps.KmlLayer(kml_url, {
		 	map: map
		});

    }

    function geocodeAddress(geocoder, resultsMap) {
        var address = document.getElementById('address').value;

        geocoder.geocode({'address': address}, function(results, status) {

        	if (status === 'OK') {
            	resultsMap.setCenter(results[0].geometry.location);

            	// Display the lat and lng in html 
            	document.getElementById('lat').value = results[0].geometry.location.lat();
            	document.getElementById('lng').value = results[0].geometry.location.lng();

            	var marker = new google.maps.Marker({
              		map: resultsMap,
              		position: results[0].geometry.location
            	});

            	resultsMap.setZoom(15);
            	resultsMap.panTo(marker.position);

          	} else {
            	alert('Geocode was not successful for the following reason: ' + status);
          	}
        });
    }
    </script>

  </body>

</html>