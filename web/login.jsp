<%-- 
    Document   : login
    Created on : 7 Jan, 2017, 12:58:34 PM
    Author     : Nupur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from matveyan.ru/Themes/mycity/01.Default/html/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 12 Nov 2016 10:47:15 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login Page | Ahmedabad City Guide</title>

  <!-- Bootstrap -->
  <link rel="stylesheet" type="text/css" href="css/A.bootstrap.css.pagespeed.cf.9mpGY9jsOH.css">
  <!--Main styles-->
  <link rel="stylesheet" type="text/css" href="css/main.css%2badaptive.css%2bpushy.css%2bfont-awesome.css%2banimate.css.pagespeed.cc.Cq_V5fMv9Y.css">
  <!--Adaptive styles-->
  
  <!--Swipe menu-->
  
  <!--fonts-->
  
  <!--animation css-->
  
  <!-- Slider Revolution -->
  <link rel="stylesheet" type="text/css" href="rs-plugin/css/A.settings.css.pagespeed.cf.mN2bMgp5AF.css" media="screen"/>
  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<script>(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','../../../../../www.google-analytics.com/analytics.js','ga');ga('create','UA-78930914-1','auto');ga('send','pageview');</script>
<script src="field-level-sample-registration-form-validation.js"></script>

</head>

<body style="background-image: url(img/login.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center center;">
    <div>
    <%@include file="headerjsp.jsp" %>
    </div>
<!--<div class="add_place none" id="autorized">-->
    <div class="place_form login_form" style="height:425px">
      
      <h3>Login<span></span></h3>
      <form action="Login_servlet" method="post" >
        <input type="hidden" name="place" value="<%=request.getParameter("place") %>">
        
        <label>UserName:*<input type="text" name="UserName" required></label>
        <label>Password:*<input type="password" name="Password" required></label>
        
            			<% if(request.getParameter("msg")!=null)
				{%>
                                <span style="color: red ;margin-left: 29px;"><%=request.getParameter("msg") %>*</span>
				<%} %>
        
        
                                <br> <a href="forget_p1.jsp">Forget Password ?</a>
        <input type="submit" value="Login" class="btn btn-success" style="margin: 10px 30px;
    width: 240px;
    border-radius: 3px;
    padding: 10px;"><br>
       
       <!--  <a href="Login_servlet" class="btn btn-primary btn-success" style="background: #25547b">Login</a>-->
         <a href="register.jsp" class="btn btn-primary btn-success" style="background: #25547b">New User?</a>
         
         
      </form>
    </div>
    <div style="margin-top: 402px;">
    
    </div>

<!--</div>-->
    <div>
    <%@include file="Footer.jsp" %>
    </div>

</body>
</html>

