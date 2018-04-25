$(window).load(function() {

  // KML Layer Import
  var kmllayer = "https://s3.amazonaws.com/kmllayer/ms_counties.kml"; 

  // Map Creation
  var map_center = new google.maps.LatLng(32.7795,-89.7031);

  var map_setup = {
    zoom: 7,
    center: map_center
  }

  var map = new google.maps.Map(document.getElementByID("map"), map_setup);

  var county_lines = new google.maps.KmlLayer({
    url: kmllayer,
    map: map
  });

});