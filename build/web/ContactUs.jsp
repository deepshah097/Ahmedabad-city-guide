<%-- 
    Document   : ContactUs
    Created on : 16 Jan, 2017, 2:33:25 PM
    Author     : Nupur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<html lang="en">


<!-- Mirrored from www.ansonika.com/travelguide/contacts.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 12 Nov 2016 09:13:55 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Ansonika">
    <title>Contact Us | Ahmedabad City Guide</title>

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

<body style=" background-image: url(img/login.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center center;">
    
    <div style="height:100%;">

    <!--[if lte IE 8]>
        <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
    <![endif]-->

    <div class="layer"></div>
    <!-- Menu mask -->

    <!-- Header ================================================== -->
    <%@include file ="headerjsp.jsp" %>
    <!-- End Header =============================================== -->

    <!-- SubHeader =============================================== -->
    <section class="parallax_window_in" data-parallax="scroll" data-image-src="img/sub_header_contact.jpg" data-natural-width="1400" data-natural-height="420">
        <div id="sub_content_in">
            <h1>Contact info</h1>
            <p>
                "All what needs to a traveler in Ahmedabad City Guide...Easly find places, guides, directions, info...."
            </p>
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
                <li><a href="#">Category</a>
                </li>
                <li>Page active</li>
            </ul>
        </div>
    </div>
    <!-- End position -->

    <div class="container margin_60_30">
        <div class="row">

            <div class="col-md-9">
                <div class="box_style_general">
                    <div class="indent_title_in">
                        <i class="icon_pencil-edit"></i>
                        <h3>Contact us</h3>
                        <h3>Please use the form below to write to us. Every query - no matter what it is about - is read and responded to.</h3>
                        
                    </div>
                    <div class="wrapper_indent">
                        <div id="message-contact"></div>
                        <form method="post" action="AddContactInfo" id="contactform">
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <label>First name</label>
                                        <input type="text" class="form-control styled" id="name_contact" name="fname" placeholder="First name">
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <label>Last name</label>
                                        <input type="text" class="form-control styled" id="lastname_contact" name="lname" placeholder="Last name">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input type="email" id="email_contact" name="email" class="form-control styled" placeholder="Enter Email">
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <label>Phone number</label>
                                        <input type="text" id="phone_contact" name="contact" class="form-control styled" placeholder="Phone number">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Your Query</label>
                                        <textarea rows="5" id="message_contact" name="query" class="form-control styled" style="height:100px;" placeholder="Your query"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    
                                    <input type="submit" value="Submit" class="button add_bottom_30" id="submit-contact" />
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- End wrapper_indent -->
                </div>
                <!-- End box style 1-->
            </div>
            <!-- End col lg 9 -->
           
            <!--End aside -->
        </div>
        <!-- End row -->
    </div>
    <!-- End container -->

    <div id="map_contact"></div>
    <!-- end map-->

    <!-- Footer ================================================== -->
    <footer>
    <div style="margin-top: 12px;">
          <%@include file="Footer.jsp" %>  
      </div>    
    </footer>  
    <!-- End Footer =============================================== -->

    <!-- COMMON SCRIPTS -->
    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="js/common_scripts_min.js"></script>
    <script src="assets/validate.js"></script>
    <script src="js/functions.js"></script>

    <!-- GOOGLE map -->
    <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCWHYAF8lMWqmuHmX81BG0PeTnFEPKEKbY"></script>
    <script type="text/javascript" src="js/mapmarker.jquery.js"></script>
    <script type="text/javascript" src="js/mapmarker_func.jquery.js"></script>

</body>


<!-- Mirrored from www.ansonika.com/travelguide/contacts.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 12 Nov 2016 09:13:57 GMT -->
</html>
