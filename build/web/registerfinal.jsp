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
  <script>
      function validate_name(name)
      {
          var letters = /^[A-Za-z]+$/;

          var name=document.getElementById(name);
          if(name.length>20)
          {
              alert("Only 20 characters are allowed");
          }
          if(name.value.match(letters))
          {
                return true;
          }
          else
          {
                alert("First name should contain alphabets letters");
                name.value="";
                name.focus();
                return false;
          }

          
      }
     
      function checkemail()
      {
          
         // var re =/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
          var email1=document.getElementById("email_id");
         //  alert("email called");
          if(email1.value.match(re))
          {
              return true;
          }
          else
          {
              alert("Email id invalid ");
              return false;
          }

       }
       
       function checkcontact()
       {
           var c=/^\d{10}$/;

           var cont=document.getElementById("contact_number");
           
           if(cont.value.match(c))
           {
              return true; 
           }
           
           
           if(cont.length<9 || cont.length>9)
           {
                    alert("Contact number must be less than 9 and greater ");
            }
       }
       
       function checkpassword()
       {
          // var passw=/^[A-Za-z]\w{7,14}$/;
           var pass=document.getElementById(password);
          // alert("password called");
          var passlen=pass.value.length;
           if (passlen == 0 || passlen >= 15 || passid_len < 7)  
            {  
                alert("Password should not be empty / length be between 7 to 15");  
                pass.focus(); 
                return false;  
            }  
            return true;

       }
       
  </script>
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
</head>

<body>
    <div>
        <%@include file="headerjsp.jsp" %></div>
<!--<div class="add_place none" id="autorized">-->
    <div class="place_form wid" style="width:617px;">
     
      
      
      <h3>Register<span></span></h3>
      <form action="Register_Servlet" method="post">
          <label style="font-size: 15px;">First Name: *<input type="text"  name="fname" placeholder="Enter First name" id="fname" onkeyup="validate_name('fname')" required></label>
          <label style="font-size: 15px;">Last Name: *<input type="text" name="lname" placeholder="Enter Last name" id="lname" onkeyup="validate_name('lname')" required ></label>
          <label style="font-size: 15px;">Email Id: *<input type="email" name="email_id" placeholder="Enter Email Id" id="email_id" onkeyup="checkemail()" required></label>
        <label style="font-size: 15px;">Password: *<input type="password" name="password" placeholder="Enter Password" id="password" required onkeyup="checkpassword()"></label>
        <label style="font-size: 15px;">Confirm-Password: *<input type="password" name="confirm_password" placeholder="Re-enter Password" id="confirm_password" required></label>
        <label style="font-size: 15px;">Contact Number: *<input type="text" name="contact_number" placeholder="Enter Contact Number" id="contact_number" onkeyup="checkcontact()" required></label>
        
        <span style="padding-left: 32px;font-family: sans-serif;
    font-size: 15px;
    color: #555555;
    text-transform: uppercase;
    font-weight: bold;">Gender: *</span><input type="radio" name="g" value="Male" style="height: 1.10em;width:50px;"><span style="font-family: sans-serif;
    font-size: 15px;
    color: #555555;
    text-transform: uppercase;
    font-weight: bold;">Male</span><input type="radio" name="g" value="Female" style="height: 1.10em;width:50px;"><span style="font-family: sans-serif;
    font-size: 15px;
    color: #555555;
    text-transform: uppercase;
    font-weight: bold;">Female</span>
        <br>
        <input type="submit" class="btn btn-success" style="width: 26%;
    margin-left: 135px;
    height: 60px;" value="Register">
     <input type="reset" class="btn btn-success" style="width: 26%;
    margin-left: 15px;
    height: 60px;" value="Cancel">
      <!--  <a href="#"6+ class="btn btn-primary"><i class="icon-facebook"></i>New User?</a>-->
      </form>
    </div>
<div style="margin-top: 300px;">
          <%@include file="Footer.jsp" %>  
      </div>
<!--</div>-->
</body>
</html>


