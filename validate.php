<?php 
	// This is just a test DB, don't worry, real database credentials are kept safe!
    $serverName = "EC2AMAZ-VOONADB\\SQLEXPRESS"; 
    $connectionInfo = array( "Database"=>"CMSMaster", "UID"=>"lawuser", "PWD"=>"2bornot2B");
    $conn = sqlsrv_connect($serverMame, $connectionInfo);

    if($conn === false) {
        die(print_r(sqlsrv_errors(), true));
    } 

    // Getting this from ajax
	$address = $_POST['address'];

	// Getting the coordinates from google maps and assigning to lat and lng var
    $prepAddr = str_replace(' ', '+', $address);
    $geocode = file_get_contents('https://maps.googleapis.com/maps/api/geocode/json?address='.$prepAddr.'&sensor=false');
    $output = json_decode($geocode);
    $latitude = $output->results[0]->geometry->location->lat;
    $longitude = $output->results[0]->geometry->location->lng;

    // Query string to get county from DB
    $myquery = "SELECT stateabbr, county FROM USCounties WHERE countygeometry.STContains(geometry::STGeomFromText('POINT (" . $longitude . " " . $latitude . ")', 4326)) = 1";

    // Query DB
    $result = sqlsrv_query($conn, $myquery);

    while ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC)) {
    	$county = $row['county'];
    	$state = $row['stateabbr'];
        echo json_encode(array("$county", "$state"));
    }
?>