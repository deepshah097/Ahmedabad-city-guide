<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">


<head>
    <meta charset="UTF-8">
    <title>Admin Header | Ahmedabad City Guide-admin</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/logo1.ico"/>
    <!-- global styles-->
    <link type="text/css" rel="stylesheet" href="css/components.css"/>
    <link type="text/css" rel="stylesheet" href="css/custom.css"/>
   <!-- <link type="text/css" rel="stylesheet" href="#" id="skin_change"/>-->
    <!-- end of global styles-->
    <script src="js/jquery.min.js">
    </script>
    
   
</head>

<body>
<!--</div>-->


<div id="top">
            <!-- .navbar -->
            <nav class="navbar navbar-static-top">
                <div class="container-fluid">
                    <a class="navbar-brand text-xs-center" href="index_admin.jsp">
                        <h4 class="text-white"><img src="img/logow.png" class="admin_img" alt="logo">ADMIN</h4>
                    </a>
                    <div class="menu">
                    <span class="toggle-left" id="menu-toggle">
                        <i class="fa fa-bars text-white"></i>
                    </span>
                    </div>

                    <!-- Toggle Button -->
                    <div class="text-xs-right xs_menu">
                        <button class="navbar-toggler hidden-xs-up" type="button" data-toggle="collapse" data-target="#nav-content">
                            <!--☰-->
                        </button>
                    </div>
                    <div style="float:right;">
                        <% if(session.getAttribute("user")!=null)
                        {%>
                        <a href="../AdminLogoutServlet"><button style="margin-top:8px;">
                            LOGOUT
                            </button></a>
                        <% } 
                       
                        else
                        { 
                           response.sendRedirect("AdminLogin.jsp");
                        }
                          %>  
                    </div>
                    <!-- Nav Content -->
                    <!-- Brand and toggle get grouped for better mobile display -->
                    
                </div>

                <!-- /.container-fluid --> </nav>
            <!-- /.navbar -->
            <!-- /.head --> </div>

<!-- global scripts-->
<script type="text/javascript" src="js/components.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<!-- end of global scripts-->
</body>

<!-- Mirrored from dev.lorvent.com/admire/blank.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 31 Dec 2016 07:06:04 GMT -->
</html>


