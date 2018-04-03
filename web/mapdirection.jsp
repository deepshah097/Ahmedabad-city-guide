<!DOCTYPE html>
<html dir="rtl">
  <head>
    <title>Right-to-Left Languages</title>
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>
      // This example displays a map with the language set to Arabic and the
      // regions set to Egypt. These settings are specified in the HTML script
      // element when loading the Google Maps JavaScript API.
      // Setting the language shows the map in the language of your choice.
      // Setting the region biases the geocoding results to that region.
      // In addition, the page's html element sets the text direction to
      // right-to-left.
      function initMap() {
        var cairo = {lat: 30.064742, lng: 31.249509};

        var map = new google.maps.Map(document.getElementById('map'), {
          scaleControl: true,
          center: cairo,
          zoom: 10
        });

        var infowindow = new google.maps.InfoWindow;
        infowindow.setContent('<b>???????</b>');

        var marker = new google.maps.Marker({map: map, position: cairo});
        marker.addListener('click', function() {
          infowindow.open(map, marker);
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDfAXNEa3QGgP-U9aTrcK3hT81Gxdm-g8Y&language=ar&region=EG&callback=initMap"></script>
  </body>
</html>