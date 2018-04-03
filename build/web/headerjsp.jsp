<%-- 
    Created on : 7 Jan, 2017, 11:55:35 AM
    Author     : Nupur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="TravelGuide Site Template - Easly find places, guides, directions, info.">
    <meta name="author" content="Ansonika">
    <title>Header | Ahmedabad City Guide</title>

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
    <link href="layerslider/css/layerslider.min.css" rel="stylesheet">
    
    <!-- YOUR CUSTOM CSS -->
    <link href="css/custom.css" rel="stylesheet">

    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
    <body>
        <header style="position:static;background-color: black;">
        <div class="container-fluid" >
            <div class="row">
                <div class="col--md-4 col-sm-3 col-xs-4">
                    <div id="">
                        <h1><a href="index.jsp" title="Ahmedabad city guide header"><img src="img/CityGuide1.jpg" alt="img" class="hidden-xs" width="250" height="50" data-retina="true"></a></h1>
                    </div>
                </div>
                <nav class="col--md-8 col-sm-9 col-xs-8" style="padding-top: 35px;">
                    
                    <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
                    <div class="main-menu">
                        <div id="header_menu">
                            <img src="img/logo_2.png" alt="img" data-retina="true" width="170" height="30">
                        </div>
                        <a href="#" class="open_close" id="close_in"><i class="icon_close"></i></a>
                        <ul id="primary_nav">
                            <li class="submenu">
                                <a href="index.jsp" class="show-submenu">HOME<!--<i class="icon-down-open-mini"></i>--></a>
                             
                 
                            </li>
                            <li class="submenu">
                                <a href="About.jsp" class="show-submenu">ABOUT US<!--<i class="icon-down-open-mini"></i>--></a>
                             
                            </li>
                            <li class="megamenu submenu">
                                <a href="ContactUs.jsp" class="show-submenu-mega">CONTACT US<!--<i class="icon-down-open-mini"></i>--></a>
                            </li>
                            
                            <%
                                if(session.getAttribute("user")==null)
                                {
                                    
                                
                            %>
                             <li id="buy"><a href="login.jsp">LOGIN</a> </li>  
                              
                                
                             
                            <%
                                 }
                                 else
                                 {
                                     
                            
                           
                                if(session.getAttribute("type").equals("B"))
                                { 
                            %>
                                <li id="wishlist"><a href="ViewBusiness.jsp">VIEW BUSINESS</a>
                                </li>
                             <% }
                             else
                                {
                             %>
                            <li id="wishlist"><a href="bussiness.jsp">ADD BUSINESS</a>
                                </li>
                               <% } %>
                                <li id="login"><a href="ViewProfile.jsp">VIEW PROFILE</a>
                                </li>
                               <li id="login"><a href="Feedback.jsp">FEEDBACK</a>
                                </li>
                                <li id="buy"><a href="Logout_Servlet">LOGOUT</a>
                                </li>
                               <% } %>     
                                     
                            
                        
                        
                        

                         
                       
                        </ul>
                    </div>
                    <!-- End main-menu -->
                </nav>
            </div>
            <!-- End row -->
        </div>
        <!-- End container -->
    </header>
    </body>
</html>