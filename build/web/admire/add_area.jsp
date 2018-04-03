<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from dev.lorvent.com/admire/blank.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 31 Dec 2016 07:06:04 GMT -->
<head>
    <meta charset="UTF-8">
    <title>Add Area Page | Ahmedabad City Guide-admin</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/logo1.ico"/>
    <!-- global styles-->
    <link type="text/css" rel="stylesheet" href="css/components.css"/>
    <link type="text/css" rel="stylesheet" href="css/custom.css"/>
   <!-- <link type="text/css" rel="stylesheet" href="#" id="skin_change"/>-->
    <!-- end of global styles-->
    <link type="text/css" rel="stylesheet" href="vendors/bootstrapvalidator/css/bootstrapValidator.min.css"/>
        <link type="text/css" rel="stylesheet" href="vendors/wow/css/animate.css"/>
        <!--End of Plugin styles-->
        <link type="text/css" rel="stylesheet" href="css/pages/login.css"/>
    <script src="js/jquery.min.js">
    </script>
    
    <script>
       function addarea()
       {
           
           var cat=document.getElementById("Area").value;
           $.ajax({
               url:'../AddArea',
               type:'POST',
               data:{Area:cat},
               success:function(data){
                 //alert(data);
                 var textbox=document.getElementById("Area");
                 var s= document.getElementById("third-span");
                 var span=document.getElementById("first-span");
                 var span2=document.getElementById("secound-span2");
                 s.style.color="red";
                 s.style.display="inline";
                 span.style.display="none";               
                 span2.style.display="none";
                 s.innerHTML=data;
                 textbox.value="";
                 textbox.focus();
               }
           })
       }
    </script>
     <script>
            function validate(){
                //alert("hello");
                var textbox=document.getElementById("Area");
                var span=document.getElementById("first-span");
                var span2=document.getElementById("secound-span2");
                var v=textbox.value;
                if(v ==""){
                    span.style.color="red";
                    span.style.display="inline";               
                    span2.style.display="none";               
                    textbox.value="";
                    textbox.focus();
                }
                else if(v.length>15)
                {
                    //span.style.display="block";
                    span2.style.color="red";
                    span2.style.display="inline";               
                    span.style.display="none";               
                    
                    //span.innerHTML="Error";
                 //   alert("the maxium value is 10");
                    textbox.value="";
                    textbox.focus(); 
                }
                else{
                    span.style.color="#ececec;"; 
                }
            }
        </script>

</head>

<body>
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
                            Add Area
                        </h4>
                    </div>
                    <div class="col-lg-6 col-sm-8">
                        <ol class="breadcrumb float-xs-right nav_breadcrumb_top_align">
                            <li class="breadcrumb-item">
                                <a href="index_admin.jsp">
                                    <i class="fa fa-home" data-pack="default" data-tags=""></i>
                                    Area
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="add_area.jsp">Add Area</a>
                            </li>
                          <!--  <li class="breadcrumb-item active">Blank Page</li>-->
                        </ol>
                    </div>
                </div>
            </header>
   <div class="container wow fadeInDown" data-wow-delay="0.5s" data-wow-duration="2s">
    <div class="row">
        <div class="col-lg-8 push-lg-2 col-md-10 push-md-1 col-sm-10 push-sm-1 login_top_bottom">
            <div class="row">
                <div class="col-lg-8 push-lg-2 col-md-10 push-md-1 col-sm-12">
                    <div class="login_logo login_border_radius1">
                        <h3 class="text-xs-center">
                           <!-- <img src="img/logow.png" alt="josh logo" class="admire_logo">-->
                           <span class="text-white"> Add Area<br/>
                                </span>
                        </h3>
                    </div>
           
                    <div class="bg-white login_content login_border_radius">
                        <form>
                           <div class="form-group">
                                <label for="Area" class="form-control-label"> Enter Area</label>
                                <div class="input-group">
                                    
                                    <input type="text" class="form-control  form-control-md" id="Area" name="Area" placeholder="Area" onblur="validate()" required="true">
                                </div>
                            </div>
                            <!--</h3>-->
                            <span id="first-span" style="color: #ececec;display : none "> *Enter proper Area Name</span>
                            <span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <input type="button"name="add_area" onclick="addarea()" value="Add" class="btn btn-primary btn-block login_button">
                                    </div>
                                </div>
                            </div>
                            <span id="third-span" style="color: #ececec;display : none "></span>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
        <div
        <!-- /.outer -->
        </div>
    <!-- /#content -->
       
        <!-- # right side -->
</div>-->
<!-- /#wrap -->

<!-- global scripts-->
<script type="text/javascript" src="js/components.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<!-- end of global scripts-->
</body>

<!-- Mirrored from dev.lorvent.com/admire/blank.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 31 Dec 2016 07:06:04 GMT -->
</html>
