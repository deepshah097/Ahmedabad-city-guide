<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<title>Google Maps JavaScript API v3 Example: Geocoding Simple</title>
  <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDfAXNEa3QGgP-U9aTrcK3hT81Gxdm-g8Y&callback=initMap"
  type="text/javascript"></script>
<script type="text/javascript">
  var geocoder;
//  var map;
//  var address ="maninagar railway station";
//  var addres ="new wadaj";
  function initialize() {
    geocoder = new google.maps.Geocoder();
//    var latlng = new google.maps.LatLng(23.0225, 72.5714);
//    var myOptions = {
//      zoom: 8,
//      center: latlng,
//    mapTypeControl: true,
//    mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
//    navigationControl: true,
//      mapTypeId: google.maps.MapTypeId.ROADMAP
//    };
//    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
    var locations = new Array();
    
    var areas = "<%= request.getParameter("areas") %>";
    var areaArray = areas.split("-");

    alert(areas);
    alert(areaArray.length);
    alert(areaArray[0]);
     alert(areaArray[1]);
    
    // alert(areaArray[i]);
    var ar = new Array();
    var data = areaArray[0].split(":");
    ar.push(data[0]);
    alert(data[0]);
    ar.push(data[1]);   
    alert(data[1]);
    ar.push(data[2]);
    alert(data[2]);
    
        locations.push(ar);
//    var locations = [
//      [object1,object2,object3]
//     
//    ];

    var map = new google.maps.Map(document.getElementById('map_canvas'), {
      zoom: 10,
      center: new google.maps.LatLng(23.0225, 72.5714),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i;

    
        alert(locations.length);
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map
      });

      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][0]);
          infowindow.open(map, marker);
        };
      })(marker, i));
    
  
//    if (geocoder) {
//      geocoder.geocode( { 'address': addres}, function(results, status) {
//        if (status == google.maps.GeocoderStatus.OK) {
//          if (status != google.maps.GeocoderStatus.ZERO_RESULTS) {
//          map.setCenter(results[0].geometry.location);
//
//            var infowindow = new google.maps.InfoWindow(
//                { content: '<b>'+addres+'</b>',
//                  size: new google.maps.Size(150,50)
//                });
//
//            var marker = new google.maps.Marker({
//                position: results[0].geometry.location,
//                map: map, 
//                title:addres
//            }); 
//            google.maps.event.addListener(marker, 'click', function() {
//                infowindow.open(map,marker);
//            });
//
//          } else {
//            alert("No results found");
//          }
//        } else {
//          alert("Geocode was not successful for the following reason: " + status);
//        }
//      });
//    }
var ar = new Array();
    var data = areaArray[1].split(":");
    ar.push(data[0]);
    alert(data[0]);
    ar.push(data[1]);   
    alert(data[1]);
    ar.push(data[2]);
    alert(data[2]);
    
        locations.push(ar);
//    var locations = [
//      [object1,object2,object3]
//     
//    ];

    var map = new google.maps.Map(document.getElementById('map_canvas'), {
      zoom: 10,
      center: new google.maps.LatLng(23.0225, 72.5714),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i;

     
        alert(locations.length);
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[1][1], locations[1][2]),
        map: map
      });

      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][0]);
          infowindow.open(map, marker);
        };
      })(marker, i));
      }
</script>
</head>
<body style="margin:0px; padding:0px;" onload="initialize()">

 <div id="map_canvas" style="width:AUTO; height:100%">
        
         
</body>
</html>
