<%@page import="Beans.CommonBean"%>
<%@page import="Manager.HotelManager"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<html lang="en">


<!-- Mirrored from www.ansonika.com/travelguide/florence-bars-map-listing.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 12 Nov 2016 09:16:28 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="TravelGuide Site Template - Easly find places, guides, directions, info.">
    <meta name="author" content="Ansonika">
    <title>Hotels | Ahmedabad City Guide</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE FONT -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,300" rel="stylesheet" type="text/css">

    <!-- BASE CSS -->
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/menu.css" rel="stylesheet">
    <link href="css/icon_fonts/css/all_icons.min.css" rel="stylesheet">

    <!-- SPECIFIC CSS -->
    <link href="css/ion.rangeSlider.css" rel="stylesheet">
    
    <!-- YOUR CUSTOM CSS -->
    <link href="css/custom.css" rel="stylesheet">
    
    <style>
        html,
        body {
            height: 100%;
        }
    </style>
     <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDfAXNEa3QGgP-U9aTrcK3hT81Gxdm-g8Y&callback=initMap"
  type="text/javascript"></script>
<!--<script type="text/javascript">
  var geocoder;
//  var map;
//  var address ="maninagar railway station";
//  var addres ="new wadaj";
  function initialize(areas) {
      alert("Function called");
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
    
    //var areas = "";
    var areaArray = areas.split("-");

   // alert(areas);
    //alert(areaArray.length);
    //alert(areaArray[0]);
    // alert(areaArray[1]);
    for(var j=0;j<areaArray.length  ;j++){
         //alert(areaArray[j]);
    var ar = new Array();
    var data = areaArray[j].split(":");
    ar.push(data[0]);
   // alert(data[0]);
    ar.push(data[1]);   
   // alert(data[1]);
    ar.push(data[2]);
   // alert(data[2]);
    
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

    for (i = 0; i < locations.length; i++) { 
        //alert(locations.length);
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
    }
  }
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
  }
</script>-->
<script>
    var geocoder;
  var map;
 // var address ="maninagar railway station";
  function initialize(address) {
   // var address =object1;
  geocoder = new google.maps.Geocoder();
    var latlng = new google.maps.LatLng(23.0616, 72.5654);
    var myOptions = {
      zoom: 15,
      center: latlng,
    mapTypeControl: true,
    mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
    navigationControl: true,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
    if (geocoder) {
      geocoder.geocode( { 'address': address}, function(results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
          if (status != google.maps.GeocoderStatus.ZERO_RESULTS) {
          map.setCenter(results[0].geometry.location);

            var infowindow = new google.maps.InfoWindow(
                { content: address,
                  size: new google.maps.Size(150,50)
                });

            var marker = new google.maps.Marker({
                position: results[0].geometry.location,
                map: map, 
                title:address
            }); 
            google.maps.event.addListener(marker, 'click', function() {
                infowindow.open(map,marker);
            });

          } else {
            alert("No results found");
          }
        } else {
          alert("Geocode was not successful for the following reason: " + status);
        }
      });
    }
   
    
  }
    </script>
    <script type="text/javascript">
        function getFilterValue(t,s)
        {
           // var t=document.getElementById("3 star").value;
            //alert(t);
            window.location="hotelsjsp1.jsp?type="+t+"&sub_id="+s;
            
        }
       
     </script>
    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

</head>

<body onload="initialize('Ahmedabad')">

    <!--[if lte IE 8]>
        <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
    <![endif]-->

    <div class="layer"></div>
    <!-- Menu mask -->

    <!-- Header ================================================== -->
    <%@include file="headerjsp.jsp" %>
    <!-- End Header =============================================== -->
    <% String subid=request.getParameter("sub_id"); %>
    
        
            <div class="col-lg-7 col-md-6 content-left">
              <div id="filters_map">
                    <a data-toggle="collapse" href="#collapseFiltesmap" aria-expanded="false" aria-controls="collapseFiltesmap" class="btn_filter" id="open_filters"></a>
                    <div id="collapseFiltesmap" class="collapse">
                       
                      
                        <div class="filter_type clearfix">
                            <h6>Type</h6>
                            <ul>
                                <li>
                                    <label>3 star</label>
                                    <input type="checkbox" id="3star" value="3" class="js-switch" onchange="getFilterValue(this.value,'<%=subid%>')">
                                </li>
                                <li>
                                    <label>4 star</label>
                                    <input type="checkbox" id="4star" value="4" class="js-switch" onchange="getFilterValue(this.value,'<%=subid%>')">
                                </li>
                                <li>
                                    <label>5 star</label>
                                    <input type="checkbox" id="5star" value="5" class="js-switch" onchange="getFilterValue(this.value,'<%=subid%>')">
                                </li>
                               
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                   
                        
                   <%   List<CommonBean> cb=null;
                        System.out.println(Integer.parseInt((String)session.getAttribute("area_id"))+Integer.parseInt(request.getParameter("sub_id")));
                        
                           cb=HotelManager.getAllHotelsByAreaId_And_SubId(Integer.parseInt((String)session.getAttribute("area_id")), Integer.parseInt(request.getParameter("sub_id")));
                                               int i = 0 ;
                        for(CommonBean bean: cb)
                        {
                            String s="h" + i;                   
                        
                            
                    %>
                   
                    <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="img_wrapper">                            
                            <div class="tools_i">
                                <div class="directions_list_map" onclick="initialize('<%=bean.getPlace_name()%> <%=bean.getAddress()%>')">
                                   
                                    <a class="tooltip_styled tooltip-effect-4"><span class="tooltip-item"></span>
                                    <div class="tooltip-content">View on map</div>
								</a>
                                </div>
                            </div>
                            <!-- End tool_i -->
                            <div class="img_container">
                                <%
                                    session.setAttribute(s, bean);
                                %>   
                                <a href=#>
                                    <img src="img/bar_list_1.jpg" width="800" height="533" class="img-responsive" alt="">
                                    <div class="short_info">
                                        <h3><%=bean.getPlace_name()%></h3>
                                       <!--<em></em>-->
                                        <p>
                                            <%=bean.getDescription()%>
                                        </p>            
                                        
                                       </div>
                                </a>
                            </div>
                                        <div style="padding-left: 282px;">
                                           <form action="checklogin?place=Place.jsp?id=<%=s%>" method="post">
                                        <input type="submit"  value="View more" class="button small">                                       </form> 
                                        </div>
                        </div>
                        <!-- End img_wrapper -->
                    </div>
                                        
                    <!-- End col-md-6 -->
                    <% i++;} %>
                </div>
               <!-- End row--> 
            </div>
                              
               <!-- <nav>
                    <ul class="pagination">
                        <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>
                        </li>
                        <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a>
                        </li>
                        <li><a href="#">2</a>
                        </li>
                        <li><a href="#">3</a>
                        </li>
                        <li><a href="#">4</a>
                        </li>
                        <li><a href="#">5</a>
                        </li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
            <!-- End content-left-->
             
           <div class=" col-lg-5 col-md-6 map-right" id="map_canvas">
              
                <!-- map-->
            </div>

        
        <!-- End row-->
    
    
    <!-- End container-fluid -->

    <!-- Footer ================================================== -->
    <footer class="">
        <%@include file="Footer.jsp" %>
        <!-- End container -->
    </footer>
    <!-- End Footer =============================================== -->

    <!-- COMMON SCRIPTS -->
    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="js/common_scripts_min.js"></script>
    <script src="assets/validate.js"></script>
    <script src="js/functions.js"></script>

    <!-- SPECIFIC SCRIPTS -->
    <script src="js/raphael-2.1.4.min.js"></script>
    <script src="js/justgage.min.js"></script>
    <script src="js/score.js"></script>
   <!-- <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCWHYAF8lMWqmuHmX81BG0PeTnFEPKEKbY"></script>-->
    <script src="js/bars_map.js"></script>
    <script src="js/infobox.js"></script>
    <script src="js/ion.rangeSlider.min.js"></script>
    <script src="js/switchery.js"></script>
    <script>
        'use strict';
        var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));
        elems.forEach(function (html) {
            var switchery = new Switchery(html, {
                size: 'small'
            });
        });

        $("#range").ionRangeSlider({
            hide_min_max: true,
            keyboard: true,
            min: 30,
            max: 180,
            from: 60,
            to: 130,
            type: 'double',
            step: 1,
            prefix: "Min. ",
            grid: false
        });
    </script>
</body>


<!-- Mirrored from www.ansonika.com/travelguide/florence-bars-map-listing.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 12 Nov 2016 09:16:29 GMT -->
</html>