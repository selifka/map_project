<?php

	if(isset($_POST['search']))
	{
		$name = $_POST['name'];
		$connect = mysqli_connect("127.0.0.1", "root", "2bornot2B",  "mapdb");
		$query = "SELECT 'county_id' FROM 'settlements' WHERE 'name' = $name";
		$result = mysqli_query($connect, $query);

		if(mysqli_num_rows($result) > 0)
		{

			while ($row = mysqli_fetch_array($result))
			{
					$county = $row['county_id'];		
			}
		} 
		else 
		{
			echo "undefined ID";
			$name = "";
		}

		mysqli_free_result($result);
		mysqli_close($connect);
	}
	else
	{
		$name = "";
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
	  		<form action="php_search.php" method="post" class="text-center py-5">
			    <div class="row">
			    	<div class="col-md-3">
			    		<label>Address or City of Event:</label>
			    	</div>
			    	<div class="col-md-6">
		        		<input class="form-control" type="text" name="settlement" placeholder="Enter address of event here...">
		        	</div>
		        	<div class="col-md-3">
			      		<input type="submit" name="search" value="Submit">
			      	</div>
		        	<div class="col-md-3 py-3">
			    		<label>Result:</label>
			    	</div>
			      	<div class="col-md-6 py-3">
		        		<input class="form-control" type="text" name="result" value="<?php echo $county;?>">
		        	</div>
				</div>
		  </form>
	</div>

	<!--- Map Div -->
    <div class="container-fluid" id="map"></div>

    <script>
    function initMap() {
  
	  var miss = {lat: 32.7795, lng: -89.7031};
	  
	  var map = new google.maps.Map(document.getElementById('map'), {
	    zoom: 7,
	    center: miss
	  });

	  var layer = new google.maps.FusionTablesLayer({
	    query: {
	      select: '\'GEO_ID\'',
	      from: '1DrR42J6ZUo94v1hNjJiugFqlUZQOqMfkZg74xEUj'
	    }
	  });

	  layer.setMap(map);
	}
	</script>
		    
	<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCmJACnjlTKQVKWjS_fNOXJ1Z0B2t7q6EE&callback=initMap">
    </script>

  </body>

</html>