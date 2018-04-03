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
  <title>Change Password | Ahmedabad City Guide</title>
  
      
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
<script>

// This function will validate Password.  
  function validatepwd()
{
    var pwd=document.getElementById("np");
    passid_validation(pwd,7,20);
                                  
}

function passid_validation(passid,mx,my)  
{  
  var pwdgrp=document.getElementById("np");
  //var len =pwd.value.length;
  var pspan=document.getElementById("newpass"); 
var passid_len = passid.value.length;  
if(passid_len === 0)
{
                            passid.focus();
                            pwdgrp.style=" border: 2px solid red";
                            pspan.innerHTML="Password should not be empty";
}
else if (passid_len >= my || passid_len < mx)  
{  
                            passid.focus();
                            pwdgrp.style=" border: 2px solid red";
                            pspan.innerHTML="Password length be between "+mx+" to "+my;
                           // alert("Password should not be empty / length be between "+mx+" to "+my);  
passid.focus();  
return false;  
}  
return true;  
}  

</script>

</head>

<body style="background-image: url(img/login.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center center;">
    <div>
        <%@include file="headerjsp.jsp" %></div>
<!--<div class="add_place none" id="autorized">-->
    <div class="place_form wid" style="width:617px;height: 450px;">
     
      
      
      <h3>Change Password<span></span></h3>
      <form action="Change_password">
          
          <label>Current password:<input type="text" name="cp" required></label>
          
          
          <label>New password:<input type="text" name="np" class="newpass" id="np" required onblur="validatepwd()">
          <span style="color: red;font-size: 10px !important" id="newpass" ></span></label>
          
          
          <label>New password,again:<input type="text" name="npa" required></label>
          <%--<span style="color: red;font-size: 10px !important" id="fnamespan" ></span>--%>
          
          
          <input type="submit" value="Change password" class="btn btn-success" style="width: 26%;
    margin-left: 35%;
    height: 60px;">
            <!--<input type="submit" value="Change password" name="btn_cp">-->
        </form>
      
    </div>
<!--</div>-->
<div style="margin-top: 457px">
<%@include file="Footer.jsp" %>
</div>
</body>
</html>


