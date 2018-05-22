<?php 
//     // This is just a test DB, don't worry, real database credentials are kept safe!
//     $serverName = "EC2AMAZ-VOONADB\\SQLEXPRESS"; 
//     $connectionInfo = array( "Database"=>"lawproject", "UID"=>"lawuser", "PWD"=>"2bornot2B");
//     $conn = sqlsrv_connect($serverMame, $connectionInfo);

//     if($conn === false) {
//         die(print_r(sqlsrv_errors(), true));
//     } 

//     $address = $_POST['eventaddress'];
//     $prepAddr = str_replace(' ', '+', $address);
//     $geocode=file_get_contents('https://maps.googleapis.com/maps/api/geocode/json?address='.$prepAddr.'&sensor=false');
//     $output= json_decode($geocode);
//     $latitude = $output->results[0]->geometry->location->lat;
//     $longitude = $output->results[0]->geometry->location->lng;

// echo $address;
//      echo $latitude;
//      echo $longitude;

//     $myquery = "SELECT [state], county FROM USCounties WHERE [state]='MS' AND countygeometry.STContains(geometry::STGeomFromText('POINT (" . $longitude . " " . $latitude . ")', 4326)) = 1"; //('POINT (-90.1625747 32.4193019)',

//     echo $myquery;

//     $result = sqlsrv_query($conn, $myquery);

//     if (sqlsrv_num_rows($result) === false) {
//         while ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC)) {
//             $county = $row['county'];
//         }
//     } else {
//         echo "<script type='text/javascript'>alert('The county could not be found. Please try again.');</script>";
//     }
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
    	<h1 class="py-5 text-center">Google Maps Demo</h1>

    	<div class="row">
    		<div class="col-md-4 my-5 py-5">
	            <form action="index.php" method="post">
	            	<div class="py-3">
	        			<input class="form-control" id="address" name="eventaddress" type="text" placeholder="Address of event">
	        		</div>
	        		<div class="py-3">
		      			<button class="btn btn-outline-primary" id="submit" type="submit">Submit</button>
		      		</div>
		      		<div class="py-3">
	        			<input class="form-control" id="countybox" type="text" name="county" value="" placeholder="County">
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

geocodeAddress(geocoder, map);

        // document.getElementById('submit').addEventListener('click', function() {
        // 	geocodeAddress(geocoder, map);
        // });
    }

    function geocodeAddress(geocoder, resultsMap) {
        // var address = document.getElementById('address').value;

<?php 
    // This is just a test DB, don't worry, real database credentials are kept safe!
    $serverName = "EC2AMAZ-VOONADB\\SQLEXPRESS"; 
    $connectionInfo = array( "Database"=>"lawproject", "UID"=>"lawuser", "PWD"=>"2bornot2B");
    $conn = sqlsrv_connect($serverMame, $connectionInfo);

    if($conn === false) {
        die(print_r(sqlsrv_errors(), true));
    } 

    $address = $_POST['eventaddress'];

if($address === null) {
    $address = "837 Route Missisquio Bolton-EST, Quebec";
    $state = "";
    $county = "Madison";
} 



    $prepAddr = str_replace(' ', '+', $address);
    $geocode=file_get_contents('https://maps.googleapis.com/maps/api/geocode/json?address='.$prepAddr.'&sensor=false');
    $output= json_decode($geocode);
    $latitude = $output->results[0]->geometry->location->lat;
    $longitude = $output->results[0]->geometry->location->lng;

// echo $address;
//      echo $latitude;
//      echo $longitude;

echo ("var address = '" . $address ."';\n"); 
echo ("var county = '" . $county ."';\n"); 
echo ("var state = '" . $state ."';\n"); 

    $myquery = "SELECT [state], county FROM USCounties WHERE [state]='MS' AND countygeometry.STContains(geometry::STGeomFromText('POINT (" . $longitude . " " . $latitude . ")', 4326)) = 1"; //('POINT (-90.1625747 32.4193019)',

 // echo $myquery;

    $result = sqlsrv_query($conn, $myquery);

    if (sqlsrv_num_rows($result) === false) {
        while ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC)) {
            $county = $row['county'];
            $state = $row['state'];
            echo ("county = '" . $county . "';");
            echo ("state = '" . $state . "';");
        }
    } else {
        echo "<script type='text/javascript'>alert('The county could not be found. Please try again.');</script>";
    }

?>

        geocoder.geocode({'address': address}, function(results, status) {

        	if (status === 'OK') {
            	resultsMap.setCenter(results[0].geometry.location);

            	var lat = results[0].geometry.location.lat();
            	var lng = results[0].geometry.location.lng();

            	// Display the lat and lng in html 
            	document.getElementById('lat').value = lat;
            	document.getElementById('lng').value = lng;
                document.getElementById('countybox').value = county;

            	var marker = new google.maps.Marker({
              		map: resultsMap,
              		position: results[0].geometry.location
            	});

            	resultsMap.setZoom(12);
            	resultsMap.panTo(marker.position);

          	} else {
            	alert('Geocode was not successful for the following reason: ' + status);
          	}


        });

        displayKML(resultsMap, county); 
    }

    function displayKML(map, countyname) {

		var kml_url = "https://s3.amazonaws.com/kmlbucketms/" + countyname.toLowerCase() + ".kml"; 

		var Kmllayer = new google.maps.KmlLayer(kml_url, {
		 	map: map
		});
    }
    </script>

  </body>

</html>