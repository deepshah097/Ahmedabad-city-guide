<%@page import="Manager.PlaceManager"%>
<%@page import="Beans.ViewPlaceBean"%>
<%@page import="Bean.UserBean"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from matveyan.ru/Themes/mycity/01.Default/html/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 12 Nov 2016 10:47:15 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>View Business | Ahmedabad City Guide</title>

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

<body style="background-image: url(img/login.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center center;">
    <div style="height:100%;"> 
        <div><%@include file="headerjsp.jsp" %>  </div>
<!--<div class="add_place none" id="autorized">-->
    <div class="place_form" style="width:617px;height:639px;">
        
      <h3>View Business<span></span></h3>
      <% ViewPlaceBean user=PlaceManager.getbusinessuserbyemail((String) session.getAttribute("user"));  %>
      
      <form action="EditProfile.jsp" method="post">
         
          
          <label>Name: <input type="text" disabled="true" name="name" value="<%=user.getPlace_name() %>"></label>
       
        <label>Address:   <input type="text" disabled="true" name="address" value=<%= user.getAddress() %>></label>
        <label>Website:   <input type="text" disabled="true" name="web" value=<%= user.getWebsite_name() %>> </label>
        <label>Contact Number:<input type="text" disabled="true" name="contact" value=<%= user.getContact_no() %>></label>
        <label>Description:<textarea disabled="true" name="desc" style="width:100%"><%= user.getDescription() %></textarea></label>
       
        <!--<input type="submit" value="Edit">-->
         <a href="EditBusiness.jsp" class="btn btn-success" style="width: 26%;
    margin-left: 35%;
    height: 60px;">Edit</a><br><br>
       
    
      </form>
    </div>
    <div style="margin-top: 419px;">
          <%@include file="Footer.jsp" %>  
      </div>
      
<!--</div>-->
    </div>
</body>
</html>

