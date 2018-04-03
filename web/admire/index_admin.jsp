

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from dev.lorvent.com/admire/ by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 31 Dec 2016 06:58:42 GMT -->
<head>
    <meta charset="UTF-8">
    <title>Dashboard | Ahmedabad City Guide</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/logo1.ico"/>

    <!--global styles-->
    <link type="text/css" rel="stylesheet" href="css/components.css"/>
    <link type="text/css" rel="stylesheet" href="css/custom.css"/>
    <!-- end of global styles-->
    <link type="text/css" rel="stylesheet" href="vendors/c3/css/c3.min.css"/>
    <link type="text/css" rel="stylesheet" href="vendors/toastr/css/toastr.min.css"/>
     <link type="text/css" rel="stylesheet" href="vendors/switchery/css/switchery.min.css" />
    <link type="text/css" rel="stylesheet" href="css/pages/new_dashboard.css"/>
    <link type="text/css" rel="stylesheet" href="#" id="skin_change"/>

</head>

<body class="body">
<div class="preloader" style=" position: fixed;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  z-index: 100000;
  backface-visibility: hidden;
  background: #ffffff;">
    <div class="preloader_img" style="width: 200px;
  height: 200px;
  position: absolute;
  left: 48%;
  top: 48%;
  background-position: center;
z-index: 999999">
        <img src="img/loader.gif" style=" width: 40px;" alt="loading...">
    </div>
</div>
<div class="bg-dark" id="wrap">
     <%@include file="Header.jsp" %>
    <!-- /#top -->
    <div class="wrapper">
        <%@include file="leftmenu.jsp" %>
        <!-- /#left -->
        <div id="content" class="bg-container">
            <header class="head">
                <div class="main-bar row">
                    <div class="col-xs-6">
                        <h4 class="m-t-5">
                            <i class="fa fa-home"></i>
                            Dashboard
                        </h4>
                    </div>
                </div>
            </header>
            <div class="outer" style="height:auto;">
                <div class="inner bg-container">
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-xs-12">
                            <div class="row">
                                
                                <div class="col-sm-6 col-xs-12">
                                    <div class="bg-primary top_cards">
                                        <a href="view_category.jsp">
                                        <div class="row icon_margin_left">

                                            
                                            <div class="col-lg-12 icon_padd_right">
                                                <div class="cards_content" style="margin: 50px;text-align: center;">
                                                    
                                                    <span class="card_description" style="color:white;">Category</span>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                               
                                </div>
                                
                                   
                                <div class="col-sm-6 col-xs-12">
                                    <div class="bg-success top_cards">
                                        <a href="view_subcategory.jsp">
                                        <div class="row icon_margin_left">
                                            
                                            <div class="col-lg-12 icon_padd_right">
                                                <div class="cards_content" style="margin: 50px;text-align: center;">
                                                    
                                                    <span class="card_description"  style="color:white;">SubCategory</span>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                                    
                                <div class="col-sm-6 col-xs-12" style="margin-bottom: 25px;">
                                    <div class="bg-warning top_cards">
                                        <a href="view_area.jsp">
                                        <div class="row icon_margin_left">
                                            
                                            <div class="col-lg-12 icon_padd_right">
                                                <div class="cards_content" style="margin: 50px;text-align: center;">
                                                    
                                                    <span class="card_description" style="color:white;">Area</span>
                                                </div>
                                            </div>
                                        </div>
                                        </a>

                                    </div>
                                </div>
                                
                                <div class="col-sm-6 col-xs-12" style="margin-bottom: 25px;">
                                    <div class="bg-mint top_cards">
                                        <a href="view_user.jsp">
                                        <div class="row icon_margin_left">
                                            
                                            <div class="col-lg-12 icon_padd_right">
                                                <div class="cards_content" style="margin: 50px;text-align: center;">
                                                    
                                                    <span class="card_description" style="color:white;">Users</span>
                                                </div>
                                            </div>
                                        </div>
                                        </a>

                                    </div>
                                </div>
                                    
                            </div>
                        </div>
                        
                    </div>
                    
                    
                    
                    <!-- /.inner -->
                </div>
                <!-- /.outer -->
            </div>
            <!-- /#content -->
        </div>
    </div>
    
    <!-- # right side -->
</div>
<!-- /#wrap -->
<!-- global scripts-->
<script type="text/javascript" src="js/components.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<!-- global scripts end-->

<!--<script type="text/javascript" src="vendors/raphael/js/raphael-min.js"></script>
<script type="text/javascript" src="vendors/d3/js/d3.min.js"></script>
<script type="text/javascript" src="vendors/c3/js/c3.min.js"></script>
<script type="text/javascript" src="vendors/toastr/js/toastr.min.js"></script>
<script type="text/javascript" src="vendors/switchery/js/switchery.min.js"></script>
<script type="text/javascript" src="vendors/flotchart/js/jquery.flot.js" ></script>
<script type="text/javascript" src="vendors/flotchart/js/jquery.flot.resize.js"></script>
<script type="text/javascript" src="vendors/flotchart/js/jquery.flot.stack.js"></script>
<script type="text/javascript" src="vendors/flotchart/js/jquery.flot.time.js"></script>
<script type="text/javascript" src="vendors/flotspline/js/jquery.flot.spline.min.js"></script>
<script type="text/javascript" src="vendors/flotchart/js/jquery.flot.categories.js"></script>
<script type="text/javascript" src="vendors/flotchart/js/jquery.flot.pie.js"></script>
<script type="text/javascript" src="vendors/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
<script type="text/javascript" src="vendors/jquery_newsTicker/js/newsTicker.js"></script>
<script type="text/javascript" src="vendors/countUp.js/js/countUp.min.js"></script>-->

<!--end of plugin scripts-->
<script type="text/javascript" src="js/pages/new_dashboard.js"></script>

</body>

<!-- Mirrored from dev.lorvent.com/admire/ by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 31 Dec 2016 06:59:41 GMT -->
</html>

