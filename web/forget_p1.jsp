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
    <title>Feedback | Ahmedabad City Guide</title>

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
    <script>
           
           function validateFname()  
           {  
                var fnmgrp=document.getElementById("uname");
 //var len =pwd.value.length;
                var fspan=document.getElementById("fspan"); 
                var uname=document.getElementById("uname");
                var letters = /^[A-Za-z]+$/;  
                if(uname.value.match(letters))  
                {  
                    fnmgrp.style="border: 2px solid #f7f7f7" ; 
                    fspan.innerHTML="";
                    return true;  
                }  
                else  
                {  
//alert('Username must have alphabet characters only');  
                   fnmgrp.style=" border: 2px solid red";
                   fspan.innerHTML="First name must have alphabet characters only";
                   uname.focus();  
                   return false;  
                }  
            }  

 

           function otpcall()
           {
                  
                  $("#enterotp").show();
           }
           
           function checkuser1()
           {
             //  alert("otpcall called");
               otpcall();
           }
          function otphide()
          {
                  
                  $("#enterotp").hide();
          }
          
          
            function checkuser(){
                
                
                var u1=document.getElementById("uname").value;
             
                
                $.ajax({
                    
                    url:'OTP',
                    type:'POST',
                    data:{email:u1},
                    
                    success:function(data1)
                    { 
                        alert("testtttttttttttt- "+data1);
                        
                        if(data1 == "Success")
                        {
                            alert("------------- >Success");
                            otpcall();
                         
                         
                            
                        }else if(data1=="Enter valid username")
                        {
                            alert("Enter valid user name");
                            var uname=document.getElementById("uname");
                            uname.value="";
                            otphide();
                        }
                            
                    }
                    
                })
                
                
           }
           
              
        </script>
        

        

    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

</head>

<body style="background-image: url(img/login.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center center;" onload="otphide()">

    <!--[if lte IE 8]>
        <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
    <![endif]-->

    
    <!-- Menu mask -->

    <!-- Header ================================================== -->
    <div style="margin-top: -19px;">
    <%@include file ="headerjsp.jsp" %>
    </div>
    <!-- End Header =============================================== -->

    <!-- SubHeader =============================================== -->
    <section class="parallax_window_in" data-parallax="scroll" data-image-src="img/bakery_1.jpg" data-natural-width="1400" data-natural-height="420">
        <div id="sub_content_in">
            <h1>Feedback</h1>
            <p>
                Forget Password
            </p>
        </div>
        <!-- End sub_content -->
    </section>
    <!-- End section -->
    <!-- End SubHeader ============================================ -->

    <div id="position" >
        <div class="container">
            <ul>
                <li><a href="#">Home</a>
                </li>
                <li><a href="#">FeedBack</a>
                </li>
               
            </ul>
        </div>
    </div>
    <!-- End position -->

    <div class="container margin_60_30" >
        <div class="row">

            <div class="col-md-12">
                <div class="box_style_general">
                    <div class="indent_title_in">
                        <i class="icon_pencil-edit"></i>
                        <h3>Forget Password</h3>
                       
                    </div>
                    <div class="wrapper_indent" >
                        <div id="message-contact"></div>
                        <form  id="contactform">
                              <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                    <label>Enter Username</label> &nbsp;&nbsp;
            <input type="text" name="uname" id="uname" class="fspan"  required ><br>
            
                
            </label><br>
            <% if(request.getParameter("msg")!=null)
				{%>
                                <span style="color: red ;margin-left: 29px;"><%=request.getParameter("msg") %>*</span>
				<%} %>
        
    
                                    </div>
                                    <div class="row">
                                <div class="col-md-6">
     <input type="button" value="Get OTP" class="button add_bottom_30" id="otp1" onclick="checkuser()">
                                                                        
                                </div>
                            </div>
                                    			                                </div>
                                                      
                            
                        </form>
                                <div id="enterotp">
        <form action="checkotp" method="post">
        <label>Enter your otp</label><br>
        <input type="text" name="txtotp" id="otp2">
        
        <input type="submit" value="Verify" name="btnverify" id="Verify">
        
        </form>
        </div>

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
    </div>
    <!-- End container -->

    <!-- end map-->

    <!-- Footer ================================================== -->
    <footer>
    <%@include file="Footer.jsp" %>
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
