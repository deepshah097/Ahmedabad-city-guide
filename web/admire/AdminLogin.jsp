<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>Login | Admin</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="shortcut icon" href="img/logo1.ico"/>
        <!--Global styles -->
        <link type="text/css" rel="stylesheet" href="css/components.css"/>
        <link type="text/css" rel="stylesheet" href="css/custom.css"/>
        <!--End of Global styles -->
        <!--Plugin styles-->
        <link type="text/css" rel="stylesheet" href="vendors/bootstrapvalidator/css/bootstrapValidator.min.css"/>
        <link type="text/css" rel="stylesheet" href="vendors/wow/css/animate.css"/>
        <!--End of Plugin styles-->
        <link type="text/css" rel="stylesheet" href="css/pages/login.css"/>
    </head>
    <body>
        <div class="container wow fadeInDown" data-wow-delay="0.5s" data-wow-duration="2s">
    <div class="row">
        <div class="col-lg-8 push-lg-2 col-md-10 push-md-1 col-sm-10 push-sm-1 login_top_bottom">
            <div class="row">
                <div class="col-lg-8 push-lg-2 col-md-10 push-md-1 col-sm-12">
                    <div class="login_logo login_border_radius1">
                        <h3 class="text-xs-center">
                            <img src="img/logow.png" alt="josh logo" class="admire_logo"><span class="text-white"> ADMIN &nbsp;<br/>
                                Log In</span>
                        </h3>
                    </div>
           
                    <div class="bg-white login_content login_border_radius">
                        <form action="../LoginServlet" id="login_validator" method="post" class="login_validator">
                            <% if(request.getParameter("msg")!=null) {%>
                        <p style="color:red;"><%=request.getParameter("msg")%>
                         <% } %>
                            <div class="form-group">
                                <label for="email" class="form-control-label"> E-mail</label>
                                <div class="input-group">
                                    <span class="input-group-addon input_email"><i
                                            class="fa fa-envelope text-primary"></i></span>
                                    <input type="text" class="form-control  form-control-md" id="email" name="email" placeholder="E-mail">
                                </div>
                            </div>
                            <!--</h3>-->
                            <div class="form-group">
                                <label for="password" class="form-control-label">Password</label>
                                <div class="input-group">
                                    <span class="input-group-addon addon_password"><i
                                            class="fa fa-lock text-primary"></i></span>
                                    <input type="password" class="form-control form-control-md" id="password"   name="password" placeholder="Password">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <input type="submit" value="Log In" class="btn btn-primary btn-block login_button">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
        <!-- global js -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/tether.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- end of global js-->
<!--Plugin js-->
<script type="text/javascript" src="vendors/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="vendors/wow/js/wow.min.js"></script>
<!--End of plugin js-->
<script type="text/javascript" src="js/pages/login.js"></script>
    </body>
</html>
