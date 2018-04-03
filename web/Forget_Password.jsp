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
  <title>Forget Password | Ahmedabad City Guide</title>

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
                            
                            pwdgrp.style=" border: 2px solid red";
                            pspan.innerHTML="Password should not be empty";
                            passid.focus();
                            return false;
}
else if (passid_len >= my || passid_len < mx)  
{  
                            
                            pwdgrp.style=" border: 2px solid red";
                            pspan.innerHTML="Password length be between "+mx+" to "+my;
                           // alert("Password should not be empty / length be between "+mx+" to "+my);  
passid.focus();  
return false;  
}
else
{    
                            pwdgrp.style=" 1px solid #DDDDDD";
                            pspan.innerHTML="";
                            return true;  
}

}

 function validate_confirmpwd()
 {
     var pwd1=document.getElementById("np");
     var pwd2=document.getElementById("rep");
     var repspan=document.getElementById("reppass");
     
     if(pwd1.value!==pwd2.value)
     {
                            
                            pwd2.style=" border: 2px solid red";
                            repspan.innerHTML="New password and confirm password should be same";
                            pwd2.focus();
                            
                      return false;
     }
     
     else if(pwd2.value.length===0)
     {
                           
                            pwd2.style=" border: 2px solid red";
                            repspan.innerHTML="Please enter new password here";
                            pwd2.focus();
                            
                        return false;

     }
     
     return true;
    
     
     
 }

</script>

<script>(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','../../../../../www.google-analytics.com/analytics.js','ga');ga('create','UA-78930914-1','auto');ga('send','pageview');</script>
</head>

<body style="background-image: url(img/login.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center center;">
    
<!--<div class="add_place none" id="autorized">-->
<div> <%@include file ="headerjsp.jsp" %></div>
    <div class="place_form login_form">
      
      <h3>Forget Password<span></span></h3>
      <form action="ForgetPassword_servlet" onsubmit="validate_confirmpwd()" >
        
        <label>New Password:<input type="password" name="np" class="newpass" id="np" required onblur="validatepwd()" >
        <span style="color: red;font-size: 10px !important" id="newpass" ></span></label>
        
        
        <label>Re-enter Password:<input type="password" name="rep" class="reppass" id="rep" required >
        <span style="color: red;font-size: 10px !important" id="reppass" ></span></label>
        
        
        <input type="submit" value="Save " class="btn btn-success" style="margin-left: 70px; width:144px; height:57px;"><br>
        
      </form>
    </div>
    <div style="margin-top: 387px;">
  <%@include file="Footer.jsp" %>
    </div>
    <%--<div style="margin-top: 300px;">
    
    </div>--%>
<!--</div>-->
</body>
</html>

