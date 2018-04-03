<%@page import="Manager.AreaManager"%>
<%@page import="Beans.AreaBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="utf-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Ansonika">
    <title>Home | Ahmedabad City Guide</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" hrza                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ef="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE FONT -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,300" rel="stylesheet" type="text/css">
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDfAXNEa3QGgP-U9aTrcK3hT81Gxdm-g8Y&callback=initMap"
  type="text/javascript"></script>
    <!-- BASE CSS -->
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/menu.css" rel="stylesheet">
    <link href="css/icon_fonts/css/all_icons.min.css" rel="stylesheet">
    
    <!-- YOUR CUSTOM CSS -->
    <link href="css/custom.css" rel="stylesheet">

    <!-- Modernizr -->
    <script src="js/modernizr.js"></script>
    <script src="js/jquery.min.js"></script>
<script>
    function initialize() {
    
    var map = new google.maps.Map(document.getElementById('map_home'), {
      zoom: 10,
      center: new google.maps.LatLng(23.0225, 72.5714),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i;

    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function (p) {
          var LatLng = new google.maps.LatLng(p.coords.latitude, p.coords.longitude);
          var CurrentMarker = new google.maps.Marker({
              position: LatLng,
              map: map,
              title: "<div style = 'height:75px;width:200px'><b>Your Current location</b><br/>Another markers are nearest<br/>for you<br/>"
          });
          google.maps.event.addListener(CurrentMarker, "click", function (e) {
              var infoWindow = new google.maps.InfoWindow();
              infoWindow.setContent(CurrentMarker.title);
              infoWindow.open(map, CurrentMarker);
          });
      });
  } else {
      alert('Geo Location feature is not supported in this browser.');
  }
  

  }

</script>
    <script>
       function setAreaSession()
       {
           var area=document.getElementById("area").value;
           //alert(area);
           //alert("Function called");
           $.ajax({
               url:'setAreaSessionServlet',
               type:'POST',
               data:{area_id:area},
               success:function(data)
               {
                   
                  // alert(data);
                   //alert("session created");
               }
           });
       }
       function checkselectarea(var1)
       {
           
           var area=document.getElementById("area").value;
           
           $.ajax({
               
               url:'checkarea',
               type:'POST',
               data:{area_id:area,cat_name:var1},
               success:function(data)
               {
                  
                   if(data==="Select area first")
                   {
                       alert("Please select area first");
                       
                       
                   }
                   else if(data==="Area already selected")
                   {
                       window.location=var1;
                   }
               }
           });
           
            
       }
    </script>
    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body onload="initialize()">

    <!--[if lte IE 8]>
        <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
    <![endif]-->

    <div class="layer"></div>
    <!-- Menu mask -->

    <!-- Header ================================================== -->
    <%@include file="headerjsp.jsp" %>
    <!-- End Header =============================================== -->

    <!-- SubHeader =============================================== -->
    <section class="header-video">
        <div id="hero_video">
            <div id="sub_content_in">
                <h1>The most important info<br>on your Mobile during a visit</h1>
                <p>
                    Places Guides / Directions / Tips&amp;info
                </p>

            </div>
            <!-- End sub_content -->
        </div>
       
    </section>
    <!-- End Header video -->
    <!-- End SubHeader ============================================ -->
   <div style="background: rgba(237,20,91,1);padding: 15px; z-index: 9; width: 100%; box-sizing: border-box!important">  
    
                <form>
                    <div id="custom-search-input">
                       <!-- <input type="text" class=" search-query" placeholder="Search....">-->
                       <select id="area" name="area" class="form-control" onchange="setAreaSession()">
                           
                           <option value="0">---Select Area---</option>>
                                                                <% List <AreaBean> list=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                        </select>
                       <!-- <input type="submit" class="btn_search" value="submit">-->
                    </div>
                </form>
            </div>

    <div class="container margin_60_30">
        <div class="main_title">
            <h2><strong>Explore</strong> what's interesting</h2>
            <%--<p>
                Ne his postulant posidonium adversarium. Ius tollit tamquam indoctum ea, cu quo equidem perfecto adipiscing. Eu mel aliquid delenit. Recteque laboramus ea est, te qui eirmod similique.
            </p>--%>
            <span><em></em></span>
        </div>
        
         
        <div class="row box_cat">
            <div class="col-md-4 col-sm-6">
        
                
                <a href="#" onclick="checkselectarea('Educationpage.jsp')">
                    <i class="icon_set_1_icon-41"></i>
                    <h3>Education</h3>
                    <p>
                       Key to unlock the golden door of freedom.
                    </p>
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="#" onclick="checkselectarea('Healthpage.jsp')">
                    <i class="icon_set_1_icon-6"></i>
                    <h3>Health </h3>
                    <p>
                        Good health and good sense are two of life's greatest blessings.
                    </p>
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="#" onclick="checkselectarea('Foodpage.jsp')">
                    <i class="icon_set_1_icon-58"></i>
                    <h3>Food</h3>
                    <p>
                       People who love to eat are always the best people.
                    </p>
                </a>
            </div>
        </div>
        <!-- End row -->

        <div class="row box_cat">
            <div class="col-md-4 col-sm-6">
                <a href="#" onclick="checkselectarea('Storepage.jsp')">
                    <i class="icon_set_1_icon-50"></i>
                    <h3>Store</h3>
                    <p>
                        Any day is a perfect day for shopping.
                    </p>
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="#" onclick="checkselectarea('Personalcarepage.jsp')">
                    <i class="icon_set_1_icon-25"></i>
                    <h3>Personal Care</h3>
                    <p>
                        Pri melius fuisset at, pro legimus corpora no 
                    </p>
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="#" onclick="checkselectarea('Servicespage.jsp')">
                    <i class="icon_set_1_icon-54"></i>
                    <h3>Services</h3>
                    <p>
                        Pri melius fuisset at, pro legimus corpora no
                    </p>
                </a>
            </div>
        </div>
        <!-- End row -->
    </div>
    <!-- End container -->

  
    <div id="map_home">
    </div>
    <!-- End map_home -->

    

    <section class="parallax_window_home bright">
        <div class="container">
            <div class="main_title">
                <h3>How Ahmedabad CityGuide <strong>Works</strong></h3>
            </div>
            <div class="row features add_bottom_45">
                <div class="col-sm-4">
                    <div id="feat_2">
                        <a href="about.html" class="bt_info">Read more</a>
                        <h3>Find places</h3>
                        <p>
                            The most interesting place close to you. Stores, Schools, Restaurant...
                        </p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div id="feat_1">
                        <a href="about.html" class="bt_info">Read more</a>
                        <h3>Get info&amp;tips</h3>
                        <p>
                            The most important tips on your Mobile during a visit....online and offline.
                        </p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div id="feat_3">
                        <a href="about.html" class="bt_info">Read more</a>
                        <h3>Read and listen</h3>
                        <p>
                            The most important info about a place reviewed by Quality Authors.
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- End row -->
            </section>
    <!-- End section -->

   
    <!-- Footer ================================================== -->
    <%@include file="Footer.jsp" %>
    <!-- COMMON SCRIPTS -->
    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="js/common_scripts_min.js"></script>
    <script src="assets/validate.js"></script>
    <script src="js/functions.js"></script>

    <!-- Specific scripts -->
    <script src="js/video_header.js"></script>
    <script>
        'use strict';
        HeaderVideo.init({
            container: $('.header-video'),
            header: $('.header-video--media'),
            videoTrigger: $("#video-trigger"),
            autoPlayVideo: true
        });
        // Tabs
        new CBPFWTabs(document.getElementById('tabs'));
    </script>
    <!--<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCWHYAF8lMWqmuHmX81BG0PeTnFEPKEKbY"></script>-->
    <script src="js/map_home.js"></script>
    <script src="js/infobox.js"></script>

</body>


<!-- Mirrored from www.ansonika.com/travelguide/index.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 12 Nov 2016 09:09:10 GMT -->
</html>
