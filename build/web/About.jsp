<%-- 
    Document   : About.jsp
    Created on : 16 Jan, 2017, 3:01:35 PM
    Author     : Nupur
--%>

<%@page import="Manager.EditProfile"%>
<%@page import="Bean.Feedbackbean"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from www.ansonika.com/travelguide/about.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 12 Nov 2016 09:13:40 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Ansonika">
    <title>About Us | Ahmedabad City Guide</title>

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
    
    <!-- YOUR CUSTOM CSS -->
    <link href="css/custom.css" rel="stylesheet">

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
    `<%@include file="headerjsp.jsp" %>
    <!-- End Header =============================================== -->

    <!-- SubHeader =============================================== -->
    <section class="parallax_window_in" data-parallax="scroll" data-image-src="img/sub_header_florence_2.jpg" data-natural-width="1400" data-natural-height="420">
        <div id="sub_content_in">
            <h1>About Ahmedabad CityGuide</h1>
            <p>"All what needs to a traveler in Florence...Easly find places, guides, directions, info...."</p>
        </div>
        <!-- End sub_content -->
    </section>
    <!-- End section -->
    <!-- End SubHeader ============================================ -->

    <div id="position">
        <div class="container">
            <ul>
                <li><a href="#">Home</a>
                </li>
                <li><a href="About.jsp">About us</a>
                </li>
                
            </ul>
        </div>
    </div>
    <!-- End position -->

    <div class="container margin_60">
        <div class="row">
            <div class="col-md-6">
                <div class="main_title_left">
                    <h2>Excellent<br></h2>
                    <p>Ex graeco nostrud theophrastus nam, cum tibique reprimique ad. Mea omittam electram te, eu cum fastidii sapientem delicatissimi.</p>
                    <span><em></em></span>
                </div>
                <p>
                    Ex has nihil liberavisse philosophia. Ne mazim quidam contentiones usu. Id nec <strong>causae periculis </strong>evertitur, stet menandri an pro, his argumentum appellantur eu. An laudem efficiendi has, utinam principes consequat id vel.</p>
                <p>Ex graeco nostrud theophrastus nam, cum tibique reprimique ad. Mea omittam electram te, eu cum fastidii sapientem delicatissimi. Sed cu eripuit veritus propriae. An eam choro saperet ullamcorper, eam <strong>saperet rationibus</strong> ut. Cu usu tation quaeque vocibus, alterum torquatos persequeris te ius.</p>
                <h3>Mission</h3>
                <p>Ex graeco nostrud theophrastus nam, cum tibique reprimique ad. Mea omittam electram te, eu cum fastidii sapientem delicatissimi. Sed cu eripuit veritus propriae. An eam choro saperet ullamcorper, eam <strong>saperet rationibus</strong> ut. Cu usu tation quaeque vocibus, alterum torquatos persequeris te ius.</p>
            </div>
            <div class="col-md-5 col-md-offset-1 hidden-sm hidden-xs">
                <img src="img/mobile.png" width="316" height="647" alt="" class="img-responsive">
            </div>
        </div>
        <!-- End row -->
    </div>
    <!-- End container -->

    <div class="bg_white">
        <div class="container margin_60">
            <div class="row">
                <div class="col-md-6 col-md-push-5">
                    <div class="main_title_left">
                        <h3>Quality Team<br>Authors and Reviewers</h3>
                        <p>Ex graeco nostrud theophrastus nam, cum tibique reprimique ad. Mea omittam electram te, eu cum fastidii sapientem delicatissimi.</p>
                        <span><em></em></span>
                    </div>
                    <p>
                        Ex has nihil liberavisse philosophia. Ne mazim quidam contentiones usu. Id nec <strong>causae periculis </strong>evertitur, stet menandri an pro, his argumentum appellantur eu. An laudem efficiendi has, utinam principes consequat id vel.</p>
                    <h4>Filosofy</h4>
                    <p>Ex graeco nostrud theophrastus nam, cum tibique reprimique ad. Mea omittam electram te, eu cum fastidii sapientem delicatissimi. Sed cu eripuit veritus propriae. An eam choro saperet ullamcorper, eam <strong>saperet rationibus</strong> ut. Cu usu tation quaeque vocibus, alterum torquatos persequeris te ius.</p>
                </div>
                <div class="col-md-5 col-md-offset-1 col-md-pull-7 hidden-sm hidden-xs">
                    <img src="img/team.jpg" alt="" class="img-responsive">
                </div>
            </div>
            <!-- End row -->
        </div>
        <!-- End container -->
    </div>
    <!-- End white_bg -->
     
        <section class="promo_full">
        <div class="promo_full_wp">
            <div>
                <h3>What Clients say<span>Id tale utinam ius, an mei omnium recusabo iracundia.</span></h3>
                <div class="container">
                    <div class="row">
                                               <div class="col-md-8 col-md-offset-2">
                            <div class="carousel_testimonials">
                               
                              <% 
                            System.out.println("Hiiiiiiiiiiiiiii----i1");
                                    List <Feedbackbean> fb=EditProfile.getfeedback();
                                    int i=0;
                                    for(Feedbackbean f:fb)
                                    {
                                        
                                   
                                
                                                                       
                                   
                                 
     %> 
      

                                <div>
                                    <div class="box_overlay" style="padding: 52px 20px 82px 290px;">
                                        <div class="pic">
                                            <figure><img src="img/1.png" alt="" class="img-circle">
                                            </figure>
                                            <h4><%= f.getEmailid() %><small></small></h4>
                                        </div>
                                        <div class="comment">
                                          <%= f.getFeedback() %>
                                        </div>
                                    </div>
                                    <!-- End box_overlay -->
                                </div>
                             <% i=i+1 ;} %>
                              
                                
                            </div>
                            <!-- End carousel_testimonials -->
                        </div>
                        <!-- End col-md-8 -->
                    </div>
                    <!-- End row -->
                </div>
                <!-- End container -->
            </div>
            <!-- End promo_full_wp -->
        </div>
        <!-- End promo_full -->
    </section>
    <!-- End section -->

    <!-- Footer ================================================== -->
    <footer>
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
    <script>
        'use strict';
        $('.carousel_testimonials').owlCarousel({
            items: 1,
            loop: true,
            autoplay: false,
            animateIn: 'flipInX',
            margin: 30,
            stagePadding: 30,
            smartSpeed: 450,
            responsiveClass: true,
            responsive: {
                600: {
                    items: 1
                },
                1000: {
                    items: 1,
                    nav: false
                }
            }
        });
    </script>

</body>


<!-- Mirrored from www.ansonika.com/travelguide/about.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 12 Nov 2016 09:13:48 GMT -->
</html>