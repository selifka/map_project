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

    <!--- JQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>

    <!-- Required Meta tags -->
    <title>Google map API test</title>
  </head>

  <body>
    <div class="container-fluid">
        <h1 class="py-5 text-center">Google Maps Demo</h1>

        <div class="row">
            <div class="col-md-4 my-5 py-5">
                <form>
                    <div class="py-3">
                        <input class="form-control" type="text" id="address" placeholder="Address of event">
                    </div>
                    <div class="py-3">
                        <button class="btn btn-outline-primary" type="button" id="submit">Submit</button>
                    </div>
                    <div class="py-3" id="county">
                    </div>
                    <div class="py-3">
                        <input class="form-control" type="text" name="result2" placeholder="District">
                    </div>
                </form>
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
    }

    function geocodeAddress(geocoder, resultsMap) {
        var address = document.getElementById('address').value;

        geocoder.geocode({'address': address}, function(results, status) {
            if (status === 'OK') {
                resultsMap.setCenter(results[0].geometry.location);

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

        // displayKML(resultsMap, county); 
    }

    // function displayKML(map, countyname) {
    //     var kml_url = "https://s3.amazonaws.com/kmlbucketms/" + countyname.toLowerCase() + ".kml?key=" + Math.random(); 

    //     console.log(kml_url);

    //     var Kmllayer = new google.maps.KmlLayer(kml_url, {
    //         map: map
    //     });
    // }
    </script>

    <script> 
    $(document).ready(function() {
        $("#submit").click(function() {
            var address = $("#address").val();

            $.ajax({
                method: "post",
                url: "validate.php", 
                data: { address : address }
            })
            .done(function(data) {
                $('#county').html(data);
            });
        });
    });
    </script>

  </body>
</html>