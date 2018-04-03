<%-- 
    Document   : schoolsjsp
    Created on : Mar 6, 2017, 8:36:14 PM
    Author     : admin
--%>

<%@page import="Manager.PlaceManager"%>

<%@page import="Beans.CommonBean"%>

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
    <title>Electrician | Ahmedabad City Guide</title>

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

    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!--[if lte IE 8]>
        <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
    <![endif]-->

    <div class="layer"></div>
    <!-- Menu mask -->

    <!-- Header ================================================== -->
    <header id="plain">
        <div class="container-fluid">
            <div class="row">
                <div class="col--md-4 col-sm-3 col-xs-4">
                    <a href="index.html" id="logo"><img src="img/logo.png" width="170" height="30" alt="" data-retina="true">
                    </a>
                </div>
                 <nav class="col--md-8 col-sm-9 col-xs-8">
                    <ul id="primary_nav">
                        <li id="wishlist"><a href="wishlist.html">Wishlist</a>
                        </li>
                        <li id="login"><a href="login-register.html">Login</a>
                        </li>
                        <li id="buy"><a href="https://themeforest.net/item/travelguide-travel-guides-places-and-directions/17323444?ref=Ansonika">Buy Template</a>
                        </li>
                        <li id="search">
                            <div class="dropdown dropdown-search">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-search"></i></a>
                                <div class="dropdown-menu">
                                    <form>
                                        <div id="custom-search-input-header">
                                            <input type="text" class="form-control" placeholder="Search...">
                                            <input type="submit" class="btn_search_2" value="submit">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
                    <div class="main-menu">
                        <div id="header_menu">
                            <img src="img/logo_2.png" alt="img" data-retina="true" width="170" height="30">
                        </div>
                        <a href="#" class="open_close" id="close_in"><i class="icon_close"></i></a>
                        <ul>
                            <li class="submenu">
                                <a href="javascript:void(0);" class="show-submenu">Home<i class="icon-down-open-mini"></i></a>
                                <ul>
                                    <li><a href="index.html">Home Video Backgound </a>
                                    </li>
                                    <li><a href="index_2.html">Home Layer Slider</a>
                                    </li>
                                    <li><a href="index_3.html">Home Text rotator</a>
                                    </li>
                                    <li><a href="index_4.html">Home Cookie bar</a>
                                    </li>
                                    <li><a href="index_5.html">Home Popup</a></li>
                                    <li><a href="index_6.html">Home version 2</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="javascript:void(0);" class="show-submenu">Florence travel guides<i class="icon-down-open-mini"></i></a>
                                <ul>
                                    <li><a href="florence-must-see-grid.html">Must see</a>
                                    </li>
                                    <li><a href="florence-events-grid.html">Events</a>
                                    </li>
                                    <li><a href="florence-hotels-grid.html">Hotels</a>
                                    </li>
                                    <li><a href="florence-restaurants-grid.html">Restaurants</a>
                                    </li>
                                    <li><a href="florence-bars-grid.html">Cocktails Bars</a>
                                    </li>
                                    <li><a href="florence-shops-grid.html">Shops</a>
                                    </li>
                                    <li><a href="florence-transports.html">Transports</a>
                                    </li>
                                    <li><a href="faq.html">Info&amp;Faqs</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="megamenu submenu">
                                <a href="javascript:void(0);" class="show-submenu-mega">Pages &amp; elements<i class="icon-down-open-mini"></i></a>
                                <div class="menu-wrapper">
                                    <div class="col-md-4">
                                        <h3>Pages</h3>
                                        <ul>
                                            <li><a href="about.html">About us</a>
                                            </li>
                                            <li><a href="blog.html">Blog</a>
                                            </li>
                                            <li><a href="faq.html">Faq</a>
                                            </li>
                                            <li><a href="contacts.html">Contacts</a>
                                            </li>
                                            <li><a href="coming_soon/index.html">Site launch/Coming soon</a>
                                            </li>
                                            <li><a href="florence-audio-guides.html">Audio guides page</a>
                                            </li>
                                             <li><a href="full_screen_map.html">Full screen map</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <h3>Pages</h3>
                                        <ul>
                                            <li><a href="gallery-3-columns.html">Gallery 3 columns</a>
                                            </li>
                                            <li><a href="gallery-4-columns.html">Gallery 4 columns</a>
                                            </li>
                                            <li><a href="subscribe.html">Subscribe plan</a>
                                            </li>
                                            <li><a href="subscribe-working.html">Subscribe plan working</a>
                                            </li>
                                            <li><a href="florence-must-see-list.html">List page</a>
                                            </li>
                                            <li><a href="florence-must-see-grid.html">Grid page</a>
                                            </li>
                                            <li><a href="florence-must-see-map-listing.html">Map list page</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4">
                                        <h3>Elements</h3>
                                        <ul>
                                            <li><a href="icon_pack_1.html"><i class="icon-inbox-alt"></i> Icon pack 1</a>
                                            </li>
                                            <li><a href="icon_pack_2.html"><i class="icon-inbox-alt"></i> Icon pack 2</a>
                                            </li>
                                            <li><a href="icon_pack_3.html"><i class="icon-inbox-alt"></i> Icon pack 3</a>
                                            </li>
                                            <li><a href="shortcodes.html"><i class="icon-tools"></i> Shortcodes</a>
                                            </li>
                                            <li><a href="menu_2/index.html"><i class="icon-columns"></i> Menu version 2</a>
                                            </li>
                                            <li><a href="#0"><i class="icon-circle color_1"></i> Color scheme 1</a>
                                            </li>
                                           	<li><a href="color_2/index.html"><i class="icon-circle color_2"></i>  Color scheme 2</a>
                                            </li>
                                            <li><a href="color_3/index.html"><i class="icon-circle color_3"></i>  Color scheme 3</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- End menu-wrapper -->
                            </li>
                        </ul>
                    </div>
                    <!-- End main-menu -->
                </nav>
            </div>
            <!-- End row -->
        </div>
        <!-- End container -->
    </header>
    <!-- End Header =============================================== -->

    <div class="container-fluid full-height">
        <div class="row row-height">
            <div class="col-lg-7 col-md-6 content-left">
                <div id="filters_map">
                    <a data-toggle="collapse" href="#collapseFiltesmap" aria-expanded="false" aria-controls="collapseFiltesmap" class="btn_filter" id="open_filters"></a>
                    <div id="collapseFiltesmap" class="collapse">
                        <div class="filter_type clearfix">
                            <h6>Duration</h6>
                            <div class="range_wp">
                                <input type="text" id="range" name="range" value="">
                            </div>
                        </div>
                        <div class="filter_type clearfix">
                            <h6>Review score</h6>
                            <ul>
                                <li>
                                    <label>Superb: 9+ (77)</label>
                                    <input type="checkbox" class="js-switch" checked>
                                </li>
                                <li>
                                    <label>Very good: 8+ (552)</label>
                                    <input type="checkbox" class="js-switch">
                                </li>
                                <li>
                                    <label>Good: 7+ (909)</label>
                                    <input type="checkbox" class="js-switch">
                                </li>
                                <li>
                                    <label>Pleasant: 6+ (1196)</label>
                                    <input type="checkbox" class="js-switch">
                                </li>
                                <li>
                                    <label>No rating (198)</label>
                                    <input type="checkbox" class="js-switch">
                                </li>
                            </ul>
                        </div>
                        <div class="filter_type clearfix">
                            <h6>Type</h6>
                            <ul>
                                <li>
                                    <label>Cocktails Bar (77)</label>
                                    <input type="checkbox" class="js-switch" checked>
                                </li>
                                <li>
                                    <label>Pub (552)</label>
                                    <input type="checkbox" class="js-switch">
                                </li>
                                <li>
                                    <label>Snack Bars (909)</label>
                                    <input type="checkbox" class="js-switch">
                                </li>
                                <li>
                                    <label>Coffee Bar (1196)</label>
                                    <input type="checkbox" class="js-switch">
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                    
                    <% 
                        List<CommonBean> cb=PlaceManager.getAllPlacesByAreaId_And_SubId(Integer.parseInt((String)session.getAttribute("area_id")), Integer.parseInt(request.getParameter("sub_id")));
                        
                        int i = 0;
                        for(CommonBean bean : cb)
                        {
                            String s = "elect"+i ;
                        
                    %>
                    <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="img_wrapper">                            
                            <div class="tools_i">
                                <div class="directions_list_map" onclick="onHtmlClick('Bars', 0)">
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
                                        <h3><%=bean.getPlace_name() %></h3>
                                       
                                        <p>
                                           <%=bean.getDescription() %>
                                        </p>                                      
                                    </div>
                                </a>
                            </div>
                                        <div style="padding-left: 282px;">
                                           <form action="checklogin?place=Place.jsp?id=<%=s%>" method="post">
                                        <input type="submit"  value="View more" class="button small"></input>
                                        </form> 
                                        </div>
                        </div>
                        <!-- End img_wrapper -->
                            <% } %>
                    </div>
                    <!-- End col-md-6 -->
                     
               <%--     <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="img_wrapper">                            
                            <div class="tools_i">
                                <div class="directions_list_map" onclick="onHtmlClick('Bars', 0)">
                                    <a class="tooltip_styled tooltip-effect-4"><span class="tooltip-item"></span>
								<div class="tooltip-content">View on map</div>
								</a>
                                </div>
                            </div>
                            <!-- End tool_i -->
                            <div class="img_container">
                                <a href="florence-bar-detail.html">
                                    <img src="img/bar_list_1.jpg" width="800" height="533" class="img-responsive" alt="">
                                    <div class="short_info">
                                        <h3>Bulk Pub</h3>
                                        <em>Pub</em>
                                        <p>
                                            A quam morbi ut arcu, eget neque molestie, ullamcorper congue pharetra, hendrerit odio consectetuer.
                                        </p>                                      
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!-- End img_wrapper -->
                    </div>
                    <!-- End col-md-6 -->
                </div>
                <!-- End row -->
                <div class="row">
                     <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="img_wrapper">                            
                            <div class="tools_i">
                                <div class="directions_list_map" onclick="onHtmlClick('Bars', 0)">
                                    <a class="tooltip_styled tooltip-effect-4"><span class="tooltip-item"></span>
								<div class="tooltip-content">View on map</div>
								</a>
                                </div>
                            </div>
                            <!-- End tool_i -->
                            <div class="img_container">
                                <a href="florence-bar-detail.html">
                                    <img src="img/bar_list_1.jpg" width="800" height="533" class="img-responsive" alt="">
                                    <div class="short_info">
                                        <h3>Bulk Pub</h3>
                                        <em>Pub</em>
                                        <p>
                                            A quam morbi ut arcu, eget neque molestie, ullamcorper congue pharetra, hendrerit odio consectetuer.
                                        </p>                                      
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!-- End img_wrapper -->
                    </div>
                    <!-- End col-md-6 -->
                     <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="img_wrapper">                            
                            <div class="tools_i">
                                <div class="directions_list_map" onclick="onHtmlClick('Bars', 0)">
                                    <a class="tooltip_styled tooltip-effect-4"><span class="tooltip-item"></span>
								<div class="tooltip-content">View on map</div>
								</a>
                                </div>
                            </div>
                            <!-- End tool_i -->
                            <div class="img_container">
                                <a href="florence-bar-detail.html">
                                    <img src="img/bar_list_1.jpg" width="800" height="533" class="img-responsive" alt="">
                                    <div class="short_info">
                                        <h3>Bulk Pub</h3>
                                        <em>Pub</em>
                                        <p>
                                            A quam morbi ut arcu, eget neque molestie, ullamcorper congue pharetra, hendrerit odio consectetuer.
                                        </p>                                      
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!-- End img_wrapper -->
                    </div>
                    <!-- End col-md-6 -->
                </div>
                <!-- End row -->
                <div class="row">
                     <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="img_wrapper">                            
                            <div class="tools_i">
                                <div class="directions_list_map" onclick="onHtmlClick('Bars', 0)">
                                    <a class="tooltip_styled tooltip-effect-4"><span class="tooltip-item"></span>
								<div class="tooltip-content">View on map</div>
								</a>
                                </div>
                            </div>
                            <!-- End tool_i -->
                            <div class="img_container">
                                <a href="florence-bar-detail.html">
                                    <img src="img/bar_list_1.jpg" width="800" height="533" class="img-responsive" alt="">
                                    <div class="short_info">
                                        <h3>Bulk Pub</h3>
                                        <em>Pub</em>
                                        <p>
                                            A quam morbi ut arcu, eget neque molestie, ullamcorper congue pharetra, hendrerit odio consectetuer.
                                        </p>                                      
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!-- End img_wrapper -->
                    </div>
                    <!-- End col-md-6 -->
                     <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="img_wrapper">                            
                            <div class="tools_i">
                                <div class="directions_list_map" onclick="onHtmlClick('Bars', 0)">
                                    <a class="tooltip_styled tooltip-effect-4"><span class="tooltip-item"></span>
								<div class="tooltip-content">View on map</div>
								</a>
                                </div>
                            </div>
                            <!-- End tool_i -->
                            <div class="img_container">
                                <a href="florence-bar-detail.html">
                                    <img src="img/bar_list_1.jpg" width="800" height="533" class="img-responsive" alt="">
                                    <div class="short_info">
                                        <h3>Bulk Pub</h3>
                                        <em>Pub</em>
                                        <p>
                                            A quam morbi ut arcu, eget neque molestie, ullamcorper congue pharetra, hendrerit odio consectetuer.
                                        </p>                                      
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!-- End img_wrapper -->
                    </div>
                    <!-- End col-md-6 -->
                </div>
                <!-- End row -->
                <div class="row">
                     <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="img_wrapper">                            
                            <div class="tools_i">
                                <div class="directions_list_map" onclick="onHtmlClick('Bars', 0)">
                                    <a class="tooltip_styled tooltip-effect-4"><span class="tooltip-item"></span>
								<div class="tooltip-content">View on map</div>
								</a>
                                </div>
                            </div>
                            <!-- End tool_i -->
                            <div class="img_container">
                                <a href="florence-bar-detail.html">
                                    <img src="img/bar_list_1.jpg" width="800" height="533" class="img-responsive" alt="">
                                    <div class="short_info">
                                        <h3>Bulk Pub</h3>
                                        <em>Pub</em>
                                        <p>
                                            A quam morbi ut arcu, eget neque molestie, ullamcorper congue pharetra, hendrerit odio consectetuer.
                                        </p>                                      
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!-- End img_wrapper -->
                    </div>
                    <!-- End col-md-6 -->
                     <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="img_wrapper">                            
                            <div class="tools_i">
                                <div class="directions_list_map" onclick="onHtmlClick('Bars', 0)">
                                    <a class="tooltip_styled tooltip-effect-4"><span class="tooltip-item"></span>
								<div class="tooltip-content">View on map</div>
								</a>
                                </div>
                            </div>
                            <!-- End tool_i -->
                            <div class="img_container">
                                <a href="florence-bar-detail.html">
                                    <img src="img/bar_list_1.jpg" width="800" height="533" class="img-responsive" alt="">
                                    <div class="short_info">
                                        <h3>Bulk Pub</h3>
                                        <em>Pub</em>
                                        <p>
                                            A quam morbi ut arcu, eget neque molestie, ullamcorper congue pharetra, hendrerit odio consectetuer.
                                        </p>                                      
                                    </div>
                                </a>
                            </div>
                        </div>
                        <!-- End img_wrapper -->
                    </div>
                    <!-- End col-md-6 -->
                </div>
                <!-- End row -->--%>
                <nav>
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

            <div class=" col-lg-5 col-md-6 map-right">
                <jsp:include page="maplocation.jsp">
                    <jsp:param name="areas" value="Ahmedabad:23.0225:72.5714-vadaj:23.0687:72.5717"></jsp:param>
                </jsp:include>
            </div>

        </div>
        <!-- End row-->
    </div>
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
    <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCWHYAF8lMWqmuHmX81BG0PeTnFEPKEKbY"></script>
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