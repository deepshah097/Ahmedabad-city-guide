
<%@page import="Manager.EditProfile"%>
<%@page import="Manager.email"%>
<%@page import="Bean.UserBean"%>
<%@page import="Beans.CommonBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<html lang="en">


<!-- Mirrored from www.ansonika.com/travelguide/florence-hotel-detail.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 12 Nov 2016 09:16:55 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Ansonika">
    <title>Place |Ahmedabad City Guide</title>

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
    <link href="css/magnific-popup.min.css" rel="stylesheet">
    <link href="css/date_time_picker.css" rel="stylesheet">
    
    <!-- YOUR CUSTOM CSS -->
    <link href="css/custom.css" rel="stylesheet">

    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    <script>
   
   function savelocation(p)
       {
           
          
           
           $.ajax({
               
              
               url:'Save_Location',
               type:'POST',
               data:{place_id1:p},
               success:function(data)
               {
                  
                   if(data==="Inserted successfully")
                   {
                       alert("Location saved");
                   
                       
                       
                   }
                   else if(data==="Already saved")
                   {
                       alert("Location already saved");
                   }
                   
               }
           });
       }    
           
   </script>

</head>

<body>

    <!--[if lte IE 8]>
        <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
    <![endif]-->

    <%@include file="headerjsp.jsp" %>
    <% UserBean l=EditProfile.getuserbyemail1((String) session.getAttribute("user"));
     String sub="Following are the details of the user who has viewed the place you have added in our website";
    String msg="Name:"+l.getFname()+" "+l.getLname()+"\nEmail:"+l.getEmail_Id()+"\nContact No:"+l.getContact_No();
                  %>
    <!-- SubHeader =============================================== -->
   <% 
      CommonBean cb=(CommonBean)session.getAttribute(request.getParameter("id"));
      String b=EditProfile.getuserbyplaceid(cb.getPlace_id());
      System.out.println("User:"+b);
      boolean res=email.SendMail(b, sub, msg);
      System.out.println("res:"+res);
   %>
    <section class="parallax_window_in" data-parallax="scroll" data-image-src="places/Girnar_1.jpg" data-natural-width="1400" data-natural-height="420">
        <div id="sub_content_in">
            <div id="sub_content_in_left">
                <div class="container">
                    <div class="row">
                         
                        <div class="col-md-8">
                            <h1><%=cb.getPlace_name()%></h1>
                            <span><i class="icon_pin"></i> <%=cb.getAddress()%></span>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- End sub_content_left -->

        <!-- End sub_content -->
    </section>
    <!-- End section -->
    <!-- End SubHeader ============================================ -->

    <div id="position">
        <div class="container">
            <ul>
                <li><a href="index.jsp">Home</a>
                </li>
                <li><a href="Educationpage.jsp">Sub-Category</a>
                </li>
                <li>Specific Page place</li>
            </ul>
        </div>
    </div>
    <!-- End position -->

    <div class="container margin_60">
        <div class="row">
            <aside class="col-md-3 col-md-push-9" id="sidebar">
                <div class="theiaStickySidebar ">
                    <ul id="tools_2">
                        <li><a href="wishlist.html"><i class=" icon-bookmark-empty-1"></i>Add to bookmarks</a>
                        </li>
                        <li>
                            <%
                                int p=cb.getPlace_id();
                                System.out.println("Id in place.jsp" +p );
                            %>    
                            <a href="#" onclick="savelocation(<%=p%>)" ><i class="icon-bar"></i>Save location</a>
                               
                        </li>
                       
                        <li class="magnific-gallery">
                          <a><i class="icon_images"></i>View Gallery</a>  
                        <%
                            String Place_image[]=cb.getPlace_image();
                            
                            int k = 0;
                            while(Place_image[k]!=null)
                            {%>
                                <a href="places/<%=Place_image[k]%>" title="Photo title" class="hidden"></a>
                                <% k++; %>
                        <%    } 
                        
                        %>
                        
                    </ul>
                </div>
                <!--End sticky -->
            </aside>
            <!--End aside -->
            <div class="col-md-9 col-md-pull-3">
                <div class="box_style_general add_bottom_30">
                    <div class="box_info">
                        <h3>Contacts</h3>
                        <ul>
                            <li><strong>Phone:</strong> <a href="tel://004542344599"><%=cb.getContact_no() %></a>
                            </li>
                            <li><strong>Website:</strong> <a href="#0" target="_blank"><%=cb.getWebsite_name() %></a>
                            </li>
                        </ul>
                        <a href="#check_avail" class="button small">Check availability</a>
                    </div>
                    <hr>

                    <h2>Description</h2>
                    <p class="lead">
                        <%= cb.getDescription() %>
                    </p>
                    
                    <!-- End row  -->
                    
                </div>
                <!-- End box_style_general -->

                <!-- End carousel -->
            </div>
            <!-- End col lg-9 -->
        </div>
        <!-- End row -->
    </div>
    <!-- End container -->

    <%@include file="viewothercat.jsp" %>
    <!-- End bg_white -->

    <div>
        <%@include file="Footer.jsp" %>
    </div>

    <!-- COMMON SCRIPTS -->
    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="js/common_scripts_min.js"></script>
    <script src="assets/validate.js"></script>
    <script src="js/functions.js"></script>

    <!-- SPECIFIC SCRIPTS -->
    <!-- Fixed sidebar + Carousel -->
    <script src="js/theia-sticky-sidebar.min.js"></script>
    <script src="js/sidebar_carousel_detail_page_func.js"></script>
    <!-- Circular Progress-->
    <script src="js/raphael-2.1.4.min.js"></script>
    <script src="js/justgage.min.js"></script>
    <script>
        'use strict';
        var dflt = {
            min: 0,
            max: 10,
            formatNumber: true,
            gaugeWidthScale: 0.2,
            donut: true,
            levelColors: ["#ec008c"],
            counter: true
        }
        var score_1 = new JustGage({
            id: 'score_1',
            defaults: dflt
        });
    </script>
    <!-- Datepicker-->
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/datepicker_func.js"></script>
</body>


<!-- Mirrored from www.ansonika.com/travelguide/florence-hotel-detail.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 12 Nov 2016 09:16:56 GMT -->
</html>
