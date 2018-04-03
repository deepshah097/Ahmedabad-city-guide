<%@page import="AdminManager.AreaManager"%>
<%@page import="java.util.List"%>
<%@page import="AdminBean.AreaBean"%>
<%@page import="AdminBean.AreaBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from dev.lorvent.com/admire/blank.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 31 Dec 2016 07:06:04 GMT -->
<head>
    <meta charset="UTF-8">
    <title>Add Cafe | Ahmedabad City Guide-admin</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/logo1.ico"/>
    <!-- global styles-->
    <link type="text/css" rel="stylesheet" href="css/components.css"/>
    <link type="text/css" rel="stylesheet" href="css/custom.css"/>
    <link type="text/css" rel="stylesheet" href="css/popup.css"/>
    
   <!-- <link type="text/css" rel="stylesheet" href="#" id="skin_change"/>-->
    <!-- end of global styles-->
    <script src="js/jquery.min.js">
    </script>
    <<script src="js/popup.js"></script>
   <script type="text/javascript">
    
     function loadPopupBox() { 
            alert("popup called");// To Load the Popupbox
            $('#popup_box').fadeIn("slow");
           // $("#container").css({ // this is just for style
               // "opacity": "0.3"  
            //});         
        }  
    function sendDetails()
    {
        alert("Function called");
       var subcat=document.getElementById("subcat").value;
     alert(subcat);
            var cwebsite=document.getElementById("website").value;
             alert(cwebsite);
             var cname=document.getElementById("name").value;
             alert(cname);
            var cadd=document.getElementById("add").value;
             alert(cadd);
           var number=document.getElementById("number").value;
            alert("Contact number is "+number);
           var desc=document.getElementById("description").value;
          alert(desc);
          var area=document.getElementById("area").value;
          alert(area);
          var himage=document.getElementById("image").value;
          alert(himage);
          
          $.ajax({
                
                url:'../PlaceServlet',
                type:'POST',
                contentType:'multipart/form-data',
                data:{website:cwebsite,subcat:subcat,name:cname,area:area,add:cadd,number:number,description:desc,image:himage},
                success:function(data1){
                    alert(data1);
                }
   
            })
          
        alert("servlet called");
         
    }
    
</script>
</head>

<body>
    <%
        if(request.getParameter("msg")!=null)
        {
            if(request.getParameter("msg").equals("Place inserted"))
            {
    %>
    <span id="place" name="place" style="color:red;" onclick="loadPopupBox()">Place inserted</span>     
      <% 
          } }
%>
<!--</div>-->
<div class="preloader" style=" position: fixed;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  z-index: 100000;
  backface-visibility: hidden;
  background: #ffffff;">
    <div class="preloader_img" style="width: 200px;
  height: 200px;
  position: absolute;
  left: 48%;
  top: 48%;
  background-position: center;
z-index: 999999">
        <img src="img/loader.gif" style=" width: 40px;" alt="loading...">
    </div>
</div>
    <div class="bg-dark" id="wrap">
         <%@include file="Header.jsp" %>
        <!-- /#top -->
        <%@include file="leftmenu.jsp" %>
        <!-- /#left -->
        <div id="content" class="bg-container">
            <header class="head">
                <div class="main-bar row">
                    <div class="col-lg-6 col-sm-4">
                        <h4 class="nav_top_align">
                            <i class="fa fa-file-o"></i>
                            Add Cafe
                        </h4>
                    </div>
                    
                </div>
            </header>
            <div class="col-xl-12">
                                <div class="card m-t-35">
                                    <div class="card-header bg-white">
                                        Cafe Form
                                    </div>
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="../PlaceServlet" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="<%=request.getParameter("subcat")%>">
                                                <div class="form-group row">
                                                    <div class="col-lg-3 col-xl-2 text-lg-right">
                                                        <label for="name4" class=" form-control-label">Enter Cafe Name</label>
                                                    </div>
                                                    <div class="col-lg-8 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" id="name" name="name" class="form-control" placeholder="Cafe Name">
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-3 col-xl-2 text-lg-right">
                                                        <label for="gender4" class="form-control-label">Select area</label>
                                                    </div>
                                                    <div class="col-lg-8 col-xl-4">
                                                        
                                                            <select id="area" name="area" class="form-control">
                                                                <% List <AreaBean> list=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select>
                                                        </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-3 col-xl-2  text-lg-right">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Cafe Address</label>
                                                    </div>
                                                    <div class="col-lg-8 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" id="add" name="add" class="form-control" placeholder="Cafe Address">
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-3 col-xl-2  text-lg-right">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Cafe Website</label>
                                                    </div>
                                                    <div class="col-lg-8 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" id="website" name="website" class="form-control" placeholder="Cafe Website">
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-3 col-xl-2 text-lg-right">
                                                        <label for="username4" class="form-control-label">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-8 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" id="number" name="number" class="form-control" placeholder="Contact Number">
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-3 col-xl-2 text-lg-right">
                                                        <label for="name4" class=" form-control-label">Enter Description:(Include details of menu items offered and opening and closing hours)</label>
                                                    </div>
                                                    <div class="col-lg-8 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" name="description" rows="3" class="form-control"></textarea>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-3 col-xl-2  text-lg-right">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Select hotel image</label>
                                                    </div>
                                                    <div class="col-lg-8 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="file" id="image" name="image">
                                                            
                                                        </div>
                                                    </div>
                                                </div>            
                                                <div class="form-group row">
                                                    <div class="col-lg-9 push-xl-2 push-lg-3">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
        <div
        <!-- /.outer -->
        </div>
       <span 
    <!-- /#content -->
    <!-- popup box-->
    <div id="popup_box" style="padding:0px;">    <!-- OUR PopupBox DIV--> 
          
          <div id="popup_title" class="popupBoxClose">
                &times;
                
          </div>
          <div style="padding-left:30px;">
		  <h1>Do you want to add one more college?</h1> 
          <input type="button" value="Yes" name="btnAdd" class="btn" style="margin-left: 100px;">
          <input class="popupBoxClose btn" type="button" value="No">
          </div>
		  <!--<a name="btnCancel">Close</a>-->
	  </div>
        <div id="right">
            <div class="right_content">
                <div class="alert alert-success white_txt">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Welcome Micheal
                        <br/></strong>
                    Set Your Skin Here. Checkout Admin Statistics. Good Day!.
                </div>
                <div class="well well-small dark">
                    <div class="xs_skin_hide hidden-sm-up toggle-right"> <i class="fa fa-cog"></i></div>
                    <h4 class="brown_txt">
                    <span class="fa-stack fa-sm">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-paint-brush fa-stack-1x fa-inverse"></i>
                </span>
                        Skins
                    </h4>
                    <br/>

                    <div class="skinmulti_btn" onclick="javascript:loadjscssfile('blue_black_skin.html','css')">
                        <div class="skin_blue skin_size"></div>
                        <div class="skin_black skin_size"></div>
                    </div>
                    <div class="skinmulti_btn" onclick="javascript:loadjscssfile('green_black_skin.html','css')">
                        <div class="skin_green skin_size"></div>
                        <div class="skin_black skin_size"></div>
                    </div>
                    <div class="skinmulti_btn" onclick="javascript:loadjscssfile('purple_black_skin.html','css')">
                        <div class="skin_purple skin_size"></div>
                        <div class="skin_black skin_size"></div>
                    </div>
                    <div class="skinmulti_btn" onclick="javascript:loadjscssfile('orange_black_skin.html','css')">
                        <div class="skin_orange skin_size"></div>
                        <div class="skin_black skin_size"></div>
                    </div>
                    <div class="skinmulti_btn" onclick="javascript:loadjscssfile('red_black_skin.html','css')">
                        <div class="skin_red skin_size"></div>
                        <div class="skin_black skin_size"></div>
                    </div>
                    <div class="skinmulti_btn" onclick="javascript:loadjscssfile('mint_black_skin.html','css')">
                        <div class="skin_mint skin_size"></div>
                        <div class="skin_black skin_size"></div>
                    </div>
                    <div class="skinmulti_btn" onclick="javascript:loadjscssfile('brown_black_skin.html','css')">
                        <div class="skin_brown skin_size"></div>
                        <div class="skin_black skin_size"></div>
                    </div>
                    <div class="skinmulti_btn" onclick="javascript:loadjscssfile('black_skin.html','css')">
                        <div class="skin_black skin_size"></div>
                        <div class="skin_black skin_size"></div>
                    </div>
                    <div class="skin_btn skin_blue" onclick="javascript:loadjscssfile('blue_skin.html','css')"></div>
                    <div class="skin_btn skin_green" onclick="javascript:loadjscssfile('green_skin.html','css')"></div>
                    <div class="skin_btn skin_purple" onclick="javascript:loadjscssfile('purple_skin.html','css')"></div>
                    <div class="skin_btn skin_orange" onclick="javascript:loadjscssfile('orange_skin.html','css')"></div>
                    <div class="skin_btn skin_red" onclick="javascript:loadjscssfile('red_skin.html','css')"></div>
                    <div class="skin_btn skin_mint" onclick="javascript:loadjscssfile('mint_skin.html','css')"></div>
                    <div class="skin_btn skin_brown" onclick="javascript:loadjscssfile('brown_skin.html','css')"></div>
                    <div class="skin_btn skin_black" onclick="javascript:loadjscssfile('black_skin.html','css')"></div>

                </div>
                <div class="well well-small dark">
                    <h4 class="brown_txt margin15_bottom">
                        <img src="img/admin.jpg" width="32" height="32" class="rounded-circle avatar-img" alt="avatar"> &nbsp;Admin
                        Statistics</h4>
                    <br/>
                    <ul class="list-unstyled">
                        <li class="green_txt margin15_bottom">
                <span class="fa-stack fa-sm">
                    <i class="fa fa-circle fa-stack-2x text-mint"></i>
                    <i class="fa fa-lock fa-stack-1x fa-inverse"></i>
                </span>
                            &nbsp; Last Login
                            <span class="inlinesparkline float-xs-right">2hrs Back</span>
                        </li>
                        <li class="warning_txt margin15_bottom">
                        <span class="fa-stack fa-sm">
                      <i class="fa fa-circle fa-stack-2x text-brown"></i>
                      <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                    </span>
                            &nbsp; Pending Tasks
                            <span class="dynamicsparkline float-xs-right">12</span>
                        </li>
                        <li class="primary_txt margin15_bottom">
                        <span class="fa-stack fa-sm">
                      <i class="fa fa-circle fa-stack-2x text-primary"></i>
                      <i class="fa fa-cloud fa-stack-1x fa-inverse"></i>
                    </span>
                            &nbsp; Weather Today
                            <span class="dynamicbar float-xs-right">Rainy</span>
                        </li>
                        <li class="margin15_bottom">
                        <span class="fa-stack fa-sm">
                      <i class="fa fa-circle fa-stack-2x text-brown"></i>
                      <i class="fa fa-calendar fa-stack-1x fa-inverse"></i>
                    </span>
                            &nbsp; Events
                            <span class="inlinebar float-xs-right">Team Out</span>
                        </li>
                        <li class="success_txt margin15_bottom">
                        <span class="fa-stack fa-sm">
                      <i class="fa fa-circle fa-stack-2x text-success"></i>
                      <i class="fa fa-bell fa-stack-1x fa-inverse"></i>
                    </span>
                            &nbsp; Notifications
                            <span class="inlinebar float-xs-right">5</span>
                        </li>
                    </ul>
                </div>
                <div class="well well-small dark right_progressbar_section">
                    <h4 class="brown_txt">
                    <span class="fa-stack fa-sm">
                      <i class="fa fa-circle fa-stack-2x text-brown"></i>
                      <i class="fa fa-hand-o-down fa-stack-1x fa-inverse"></i>
                    </span>
                        Alerts
                    </h4>
                    <br/>
                    <span>Sales Improvement</span>
                    <span class="float-xs-right">
                <small>20%</small>
            </span>
                    <div class="progress xs">
                        <progress class="progress progress-striped progress-primary" value="20" max="100"></progress>
                    </div>
                    <span>Server Load</span>
                    <span class="float-xs-right">
                <small>80%</small>
            </span>
                    <div class="progress xs">
                        <progress class="progress  progress-striped progress-mint" value="80" max="100"></progress>
                    </div>
                    <span>Traffic Improvement</span>
                    <span class="float-xs-right">
                <small>55%</small>
            </span>
                    <div class="progress xs">
                        <progress class="progress  progress-striped progress-danger" value="55" max="100"></progress>
                    </div>
                </div>
            </div>
        </div>
        <!-- # right side -->
</div>
<!-- /#wrap -->

<!-- global scripts-->
<script type="text/javascript" src="js/components.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<!-- end of global scripts-->
</body>

<!-- Mirrored from dev.lorvent.com/admire/blank.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 31 Dec 2016 07:06:04 GMT -->
</html>


