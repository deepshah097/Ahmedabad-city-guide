<%-- 
    Document   : register
    Created on : 7 Jan, 2017, 1:35:10 PM
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
  <title>Registration page | Ahmedabad City Guide</title>
  <link rel='stylesheet' href='js-field-level-form-validation.css' type='text/css' />
 
      
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
 <script src="field-level-sample-registration-form-validation.js"></script>


<script>(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','../../../../../www.google-analytics.com/analytics.js','ga');ga('create','UA-78930914-1','auto');ga('send','pageview');</script>
</head>

<body onload="firstfocus();" style="background-image: url(img/login.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center center;">>
    <div style="margin-top: -19px;">
        <%@include file="headerjsp.jsp" %></div>
<!--<div class="add_place none" id="autorized">-->
    <div class="place_form wid" style="width:617px; height: 820px;">
     
      
      
      <h3>Register<span></span></h3>
      <form action="Register_Servlet" method="post" name="registration" onsubmit="confirm_password()">
          
          <label style="font-size: 15px;">First Name: *
          <input type="text"  name="fname" placeholder="Enter First name" class="fnamespan" id="fname" onblur="validateFname()  " required>
          <span style="color: red;font-size: 15px !important" id="fnamespan" ></span></label>
         
          
          
          <label style="font-size: 15px;">Last Name: *
          <input type="text" name="lname" placeholder="Enter Last name" class="lnamespan" id="lname" onblur="validateLname() " required >
          <span style="color: red; font-size: 15px !important" id="lnamespan"></span></label>
          
          
          
          <label style="font-size: 15px;">Email Id: *
          <input type="email" name="email_id" placeholder="Enter Email Id" id="email_id" class="emailspan" onblur=" validateunm()" required>
          <span style="color: red;font-size: 15px !important" id="emailspan"></span></label>
          
         
         
          <label style="font-size: 15px;">Password: *
          <input type="password" name="password" placeholder="Enter Password" id="password" class="passwordspan" required onblur="validatepwd()">
          <span style="color: red;font-size: 15px !important" id="passwordspan"></span></label>
        
          
          <label style="font-size: 15px;">Confirm-Password: *
          <input type="password" name="confirm_password" placeholder="Re-enter Password" id="confirm_password" class="confirm_passwordspan" required onblur="confirm_password1()">
          <span style="color: red;font-size: 15px !important" id="confirm_passwordspan"></span></label>
        
          
          <label style="font-size: 15px;">Contact Number: *
          <input type="text" name="contact_number" placeholder="Enter Contact Number" id="contact_number" class="contactspan"  required onblur="validateContactNo() ">
          <span style="color: red;font-size: 15px !important" id="contactspan"></span></label>
       
          <span style="padding-left: 32px;font-family: sans-serif; font-size: 15px;color: #555555;text-transform: uppercase;font-weight: bold;">Gender: *</span><input type="radio" name="g" value="Male" style="height: 1.10em;width:50px;">
          <span style="font-family: sans-serif;font-size: 15px;color: #555555;text-transform: uppercase;font-weight: bold;">Male</span>
          <input type="radio" name="g" value="Female" style="height: 1.10em;width:50px;">
          <span style="font-family: sans-serif;font-size: 15px;color: #555555;text-transform: uppercase;font-weight: bold;">Female</span>
      
          <br>
      
      
         <input type="submit" class="btn btn-success" style="width: 26%; margin-left: 135px;height: 60px; margin-top: 36px;" value="Register">
     
      
      
        <input type="reset" class="btn btn-success" style="width: 26%;margin-left: 15px;height: 60px; margin-top: 41px;" value="Cancel">
      
      </form>
    </div>


<div style="margin-top: 450px;">
          <%@include file="Footer.jsp" %>  
      </div>
<!--</div>-->
</body>
</html>


