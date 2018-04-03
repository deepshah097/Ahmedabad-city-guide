<%@page import="Manager.AreaManager"%>
<%@page import="Beans.AreaBean"%>
<%@page import="Beans.AreaBean"%>
<%@page import="java.util.List"%>
<%@page import="Beans.CategoryBean"%>
<%@page import="Manager.CategoryManager"%>
<%@page import="Servlet.PlaceServlet"%>
<%@page import="Servlets.dummyPlaceServlet1"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html lang="en">

<!-- Mirrored from matveyan.ru/Themes/mycity/01.Default/html/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 12 Nov 2016 10:47:15 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Business Registration </title>

  <!-- Bootstrap -->
 <!-- <link rel="stylesheet" type="text/css" href="css/A.bootstrap.css.pagespeed.cf.9mpGY9jsOH.css">
  <!--Main styles-->
<!--  <link rel="stylesheet" type="text/css" href="css/main.css%2badaptive.css%2bpushy.css%2bfont-awesome.css%2banimate.css.pagespeed.cc.Cq_V5fMv9Y.css">
 --> <!--Adaptive styles-->
  
  <!--Swipe menu-->
  
  <!--fonts-->
  
  <!--animation css-->
  
  <!-- Slider Revolution -->
 <!-- <link rel="stylesheet" type="text/css" href="rs-plugin/css/A.settings.css.pagespeed.cf.mN2bMgp5AF.css" media="screen"/>-->
  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<!--<script>(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','../../../../../www.google-analytics.com/analytics.js','ga');ga('create','UA-78930914-1','auto');ga('send','pageview');</script>
--><script src="js/jquery.min.js"></script>

<script type="text/javascript">
    function getSubCategory()
        {
          //  alert("function called");
           var cid=document.getElementById("Category").value;
           // alert(cid);
            var options="<option value='0'>----Select Sub Category----</option>";
           //  alert(options);
          $.ajax({
              
               url:'ViewSubCategoryServlet',
                type:'POST',
                data:{Category:cid},
                success:function(data1)
                {
             //      alert("success");
                    var subcategory=data1.split(",");
                    for(var i=0;i<subcategory.length;i++)
                    {
                        var subcat=subcategory[i].split(":");
                        options+="<option value='"+subcat[1]+"' name='"+subcat[2]+"'>"+subcat[2]+"</option>";
                        
                    }
                    var sub=document.getElementById("subcat1");
                     // alert("function called::::::::"+sub.value);
          
                    sub.innerHTML=options;
                   }
                
            })
        }
     
</script>



<script>
    function div_hide()
    {
        //alert("div_hide");
        $("#Classes").hide();
        $("#smpl").show();
        $("#hostel").hide(); 
        $("#Cafe").hide(); 
        $("#Atm1").hide();
        $("#Restaurant").hide();
        $("#Clinic").hide();
        $("#Hospital").hide();
        $("#college").hide();
        $("#Gym").hide(); 
        $("#Doctor").hide(); 
        $("#Bakery").hide();
        $("#Saloon").hide();
         $("#Hotel").hide();
         $("#School").hide();
         $("#Service").hide();
         $("#Electronics").hide();
    }
    function div_show()
    {
        var sub=document.getElementById("subcat1").value;
            if(sub=="12"){
                $("#Atm1").hide();
                $("#Restaurant").hide();
                $("#Electronics").hide();
                   $("#Classes").show();
                   $("#Cafe").hide(); 
                   $("#college").hide();
                   $("#Hospital").hide();
                   $("#Doctor").hide(); 
                   $("#Saloon").hide();
                   $("#School").hide();
                $("#Hotel").hide();
                   $("#Gym").hide(); 
                   $("#Service").hide();
                   $("#smpl").hide();
                    $("#Bakery").hide();
                    $("#Clinic").hide();
            }
            else if(sub==""){
                $("#Atm1").show();
                $("#Restaurant").hide();
                $("#Electronics").hide();
                   $("#Classes").hide();
                   $("#Cafe").hide(); 
                   $("#college").hide();
                   $("#Hospital").hide();
                   $("#Doctor").hide(); 
                   $("#Saloon").hide();
                   $("#School").hide();
                $("#Hotel").hide();
                   $("#Gym").hide(); 
                   $("#smpl").hide();
                   $("#Service").hide();
                    $("#Bakery").hide();
                    $("#Clinic").hide();
            }
            else if(sub=="20"){
                $("#Atm1").hide();
                $("#Restaurant").hide();
                $("#Electronics").hide();
                   $("#Classes").hide();
                   $("#Cafe").hide(); 
                   $("#college").hide();
                   $("#Hospital").hide();
                   $("#Doctor").hide(); 
                   $("#Saloon").hide();
                   $("#School").hide();
                $("#Hotel").hide();
                   $("#Gym").hide(); 
                   $("#Service").show();
                   $("#smpl").hide();
                    $("#Bakery").hide();
                    $("#Clinic").hide();
            }
            else if(sub=="21"){
                $("#Atm1").hide(); 
                   $("#Classes").hide();
                   $("#Restaurant").hide();
                   $("#Cafe").hide();
                   $("#Gym").hide(); 
                   $("#college").hide();
                   $("#Hospital").hide();
                   $("#Service").hide();
                   $("#Saloon").hide();
                   $("#School").hide();
                $("#Electronics").hide();
                   $("#Doctor").show();
                    $("#Bakery").hide();
                    $("#smpl").hide();
                    $("#Hotel").hide();
                    $("#Clinic").hide();
            }
            else if(sub=="28"){
                $("#Atm1").hide(); 
                   $("#Classes").hide();
                   $("#Restaurant").hide();
                   $("#Cafe").hide();
                   $("#Gym").hide(); 
                   $("#college").hide();
                   $("#Hospital").hide();
                   $("#Service").hide();
                   $("#Saloon").hide();
                   $("#School").show();
                $("#Electronics").hide();
                   $("#Doctor").hide();
                    $("#Bakery").hide();
                    $("#Hotel").hide();
                    $("#smpl").hide();
                    $("#Clinic").hide();
            }
            else if(sub=="23"){
                $("#Atm1").hide();
                   $("#Classes").hide();
                   $("#Restaurant").hide();
                   $("#Cafe").hide(); 
                   $("#Hospital").hide();
                   $("#Gym").hide(); 
                   $("#Electronics").hide();
                   $("#Saloon").hide();
                $("#college").hide();
                    $("#Bakery").hide();
                    $("#Hotel").hide();
                    $("#School").hide();
                    $("#Service").hide();
                    $("#smpl").hide();
                    $("#Clinic").show();
                    $("#Doctor").hide(); 
            }
            else if(sub=="18")
            {
                $("#Atm1").hide();
                $("#Hospital").hide();
                $("#Classes").hide();
                $("#Restaurant").hide();
                $("#Electronics").hide();
                $("#Cafe").hide();
                $("#Gym").hide(); 
                $("#Service").hide();
                $("#college").show();
                 $("#Bakery").hide();
                $("#Saloon").hide();
                 $("#Hotel").hide();
                 $("#School").hide();
                 $("#Doctor").hide(); 
                 $("#smpl").hide();
                 $("#Clinic").hide();
            }
            else if(sub=="27")
            {
                $("#Atm1").hide();
                $("#Hospital").hide();
                $("#Classes").hide();
                $("#Restaurant").hide();
                $("#Electronics").hide();
                $("#Cafe").hide();
                $("#Gym").hide(); 
                $("#college").hide();
                 $("#Bakery").hide();
                $("#Saloon").show();
                 $("#Hotel").hide();
                 $("#School").hide();
                 $("#Doctor").hide(); 
                 $("#Clinic").hide();
                 $("#Service").hide();
                 $("#smpl").hide();
            }
            else if(sub=="15")
            {
                $("#Atm1").hide();
                $("#Hospital").hide();
                $("#Classes").hide();
                $("#Restaurant").show();
                $("#Electronics").hide();
                $("#Cafe").hide();
                $("#Gym").hide(); 
                $("#college").hide();
                 $("#Bakery").hide();
                 $("#Hotel").hide();
                $("#Saloon").hide();
                $("#Service").hide();
                $("#School").hide();
                 $("#Doctor").hide(); 
                 $("#smpl").hide();
                 $("#Clinic").hide();
            }
            else if(sub=="17")
            {
                $("#Atm1").hide();
                $("#Gym").hide(); 
                $("#Classes").hide();
                $("#Restaurant").hide();
                $("#Electronics").hide();
                $("#college").hide();
                $("#Hospital").hide();
                 $("#Bakery").show();
                $("#Saloon").hide();
                 $("#Cafe").hide(); 
                 $("#Clinic").hide();
                 $("#Hotel").hide();
                 $("#School").hide();
                 $("#Doctor").hide();
                 $("#smpl").hide();
                 $("#Service").hide();
            }
            else if(sub=="14")
            {
                $("#Atm1").hide();
                $("#Gym").hide(); 
                $("#Restaurant").hide();
                $("#Classes").hide();
                $("#Electronics").hide();
                $("#college").hide();
                $("#Hospital").hide();
                 $("#Bakery").hide();
                 $("#Cafe").hide(); 
                 $("#Clinic").hide();
                $("#Saloon").hide();
                $("#School").hide();
                $("#Service").hide();
                 $("#Hotel").show();
                 $("#smpl").hide();
                 $("#Doctor").hide(); 
            }
            else if(sub=="16")
            {
                $("#Atm1").hide();
                $("#Classes").hide();
                $("#Restaurant").hide();
                $("#college").hide();
                 $("#Bakery").hide(); 
                 $("#Electronics").hide();
                 $("#Cafe").show();
                 $("#smpl").hide();
                 $("#Hospital").hide();
                $("#Saloon").hide();
                 $("#Gym").hide(); 
                 $("#School").hide();
                 $("#Hotel").hide();
                 $("#Clinic").hide();
                 $("#Service").hide();
                 $("#Doctor").hide(); 
            }
            else if(sub=="19")
            {
                $("#Atm1").hide();
                $("#Classes").hide();
                $("#Restaurant").hide();
                $("#college").hide();
                $("#Saloon").hide();
                 $("#Bakery").hide();
                 $("#Service").hide();
                 $("#Hotel").hide();
                 $("#School").hide();
                 $("#Electronics").show();
                 $("#Cafe").hide();
                 $("#smpl").hide();
                 $("#Clinic").hide();
                 $("#Hospital").hide();
                 $("#Gym").hide(); 
                 $("#Doctor").hide(); 
            }
            else if(sub=="26")
            {
                $("#Atm1").hide();
                $("#Restaurant").hide();
                $("#Classes").hide();
                $("#School").hide();
                $("#college").hide();
                 $("#Bakery").hide(); 
                 $("#Electronics").hide(); 
                 $("#Cafe").hide();
                 $("#Clinic").hide();
                $("#Saloon").hide();
                $("#Service").hide();
                 $("#Gym").show();
                 $("#smpl").hide();
                 $("#Doctor").hide(); 
                 $("#Hospital").hide();
                 $("#Hotel").hide();
            }
            else if(sub=="22")
            {
                $("#Atm1").hide();
                $("#Classes").hide();
                $("#Restaurant").hide();
                $("#college").hide();
                 $("#Bakery").hide(); 
                 $("#Electronics").hide(); 
                 $("#Cafe").hide();
                 $("#Clinic").hide();
                 $("#Gym").hide();
                 $("#Doctor").hide(); 
                $("#Saloon").hide();
                 $("#Hotel").hide();
                 $("#Hospital").show();
                 $("#School").hide();
                 $("#smpl").hide();
                 $("#Service").hide();
            }
            else if(sub=="0"){
                $("#Classes").hide();
                $("#Atm1").hide();
                 $("#Bakery").hide();
                 $("#Restaurant").hide();
                $("#college").hide();
                $("#Cafe").hide(); 
                $("#Gym").hide(); 
                $("#Electronics").hide();
                $("#Doctor").hide(); 
                $("#Clinic").hide();
                $("#School").hide();
                $("#Hospital").hide();
                $("#Saloon").hide();
                $("#Hotel").hide();
                $("#Service").hide();
                $("#smpl").hide();
            }
                
       
    }
    </script>
</head>

<body onload="div_hide()">
  
<!--<div class="add_place none" id="autorized">-->
    <div>
        <%@include file="BusinessHeader.jsp" %>
    </div>
    <div>
        <div style="text-align: center;">
            <h3>Register your business here.....<span></span></h3>
            <br><br>
            <label>Select Category First:<select id="Category" name="Category" onchange="getSubCategory()">
                <option value="0">----Select Category---</option>
                               <% 
                                   List <CategoryBean> list=CategoryManager.getAllCategoryList();
                                                    for (CategoryBean bean:list)
                                                    {
                              %>
                              <option value="<%=bean.getCategoryId()%>">
                                  <%=bean.getCategoryName()%></option>
                              <% } %>
                </select></label>
                <br><br>
            <label>Select Sub-Category:<select id="subcat1" name="subcat1" onchange="div_show()">
                
            </select></label>
        </div>
                <div id="smpl">
                       <div class="col-xl-12">
                                <div class="card m-t-35">                                    
                                    <div class="card-block">
                                        <form class="form-horizontal"  method="post"  enctype="multipart/form-data">
                                            <fieldset>
                                                <br>                                                
                                                <input type="hidden" disabled="true" id="subcat" name="subcat" value="17">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" disabled="true" class=" form-control-label">Enter Name:<span style="color:red;">*</span></label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" disabled="true" style="width:300px;" id="name" name="name" class="form-control" placeholder="Bakery Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" disabled="true" class="form-control-label">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                        <select id="area" style="width:300px;" disabled="true" name="area" class="form-control" onblur="validateselect()">
                                                                 <option value="0">----Select Category---</option>
                                                                
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select Area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" disabled="true" class="form-control-label two_column_label_margintop">Enter Address:<span style="color:red;">*</span></label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" disabled="true" style="width:300px;" id="add" name="add" class="form-control" placeholder="Bakery Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" disabled="true" class="form-control-label two_column_label_margintop">Enter Website:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" disabled="true" style="width:300px;" id="website" name="website" class="form-control" placeholder="Bakery Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" disabled="true" class="form-control-label">Enter Contact Number:<span style="color:red;">*</span></label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" disabled="true" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" disabled="true" class=" form-control-label">Enter Description:(Include details of menu items 
                                                            offered and opening and closing hours)</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" disabled="true" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" disabled="true" class="form-control-label two_column_label_margintop">Select image</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="file" id="image" disabled="true" name="image">
                                                            
                                                        </div>
                                                    </div>
                                                </div>  
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" disabled="true" type="submit">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent" disabled="true">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
        <div id="Classes">
        <!--<form name="School_register" id="business_register">
       
            <label>Business Website:<input type="text"  id="website" name="website"></label>
            <br>
        <label>Contact Number:<input type="text" id="contact_number" name="contact_number"></label>
        <br>
        <label>enter school name:<input type="text" id="sname" name="sname" ></label>
        <br>
        <label>enter school address:<input type="text" id="sadd" name="sadd"></label>
        <br>
        <label>Select board:<select  id="board" name="board">
                            <option>Select Board</option>
                            <option value="GSEB">GSEB</option>
                            <option value="CBSE">CBSE</option>
                            <option value="ICSE">ICSE</option>
            </select></label>
        <br>
        <label id="lsmedium">Select Medium:<select id="medium" name="medium">
                                     <option>Select Medium</option>
                                    <option value="English">English</option>
                                    <option value="Gujarati">Gujarati</option>
                                    <option value="Hindi">Hindi</option>
            </select></label>
        <br>
        <label id="lsname">Hostel:<input type="radio" id="hostel1" name="hostel" value="1">YES</input>
                                  <input type="radio" id="hostel1" name="hostel" value="0">NO</input>
        </label>
        <br>
        <label>Description:<textarea id="description" rows="5" cols="5"></textarea></label>
        <br>
        <input type="button" id="btn_add" value="add business" onclick="sendDetails()">
      <!--  <a href="#" class="btn btn-primary"><i class="icon-facebook"></i>New User?</a>->
      </form>-->
      <div class="col-xl-12">
                                <div class="card m-t-35">                                    
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                          <input type="hidden" id="subcat" style="width:300px;" name="subcat" value="12"> 
                                           
                                           <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center">
                                                        <label for="name4" class=" form-control-label">Enter Classes Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" id="name" style="width:300px;" name="name" class="form-control" placeholder="Classes Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center">
                                                        <label for="gender4" class="form-control-label">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="area" name="area" style="width:300px;" class="form-control" onblur="validateselect()" required="true">
                                                            <option value="0">--------select Area--------</option>
                                                                <% List <AreaBean> list4=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list4)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                        </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align: center">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Classes Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="Classes Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align: center">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Classes Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" id="website" style="width:300px;" name="website" class="form-control" placeholder="Classes Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center">
                                                        <label for="username4" class="form-control-label">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" id="number" style="width:300px;" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center">
                                                        <label for="name4" class=" form-control-label">Enter Description:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group" >
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="gender4" class="form-control-label">Classes Type</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="type" style="width:300px;" name="type" class="form-control" onblur="validateselect1()">
                                                                <option value="0">--Select Classes Type--</option>
                                                                <option value="Painting">Painting</option>
                                                                <option value="B.Com">B.Com</option>
                                                                <option value="Engineering">Engineering</option>
                                                            </select><span id="selectdata1" style="color: #ececec;display : none "> *Select proper Classes Type</span>
                                                        </div>
                                                    </div>
                                                   
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align: center">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Select hotel image</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="file" id="image" name="image">
                                                            
                                                        </div>
                                                    </div>
                                                </div>  
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align: center">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
    </div>
    <div id="hostel">
        <label>Enter hostel name:<input type="text" id="hos_name" name="hos_name"></label>
        <label>Enter hostel address:<input type="text" id="hos_add" name="hos_add"></label>
    </div>
                <div id="Atm1">
                    <div class="col-xl-12">
                                <div class="card m-t-35">                                    
                                    <div class="card-block">
                                        <form class="form-horizontal">
                                            <fieldset>
                                                <br>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter ATM Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="rname" name="rname" class="form-control" placeholder="ATM Name" onblur="validate()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 25 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter ATM Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="radd" name="radd" class="form-control" placeholder="ATM Address" onblur="validateaddress()" required="true"><span id="first-span1" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter ATM Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" id="rwebsite" style="width:300px;" name="rwebsite" class="form-control" placeholder="ATM Website" onblur="validatewebsite()" required="true"><span id="first-span2" style="color: #ececec;display : none "> *Enter proper Website Name</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" id="number" style="width:300px;" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="first-span3" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="first-span4" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                

                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" onclick="sendDetails()">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="college">
                    <div class="col-xl-12">
                                <div class="card m-t-35">                                 
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="<%=request.getParameter("subcat")%>">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter College Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="College Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="area" style="width:300px;" name="area" class="form-control" onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list1=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list1)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter College Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="College Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter College Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="College Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Description:(List of courses offered)</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                           <!-- <input type="text" id="description" name="description" class="form-control" placeholder="Description">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Select hotel image</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="file" id="image" name="image">
                                                            
                                                        </div>
                                                    </div>
                                                </div>  
                                                    
                                                 
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Bakery">
                       <div class="col-xl-12">
                                <div class="card m-t-35">                                    
                                    <div class="card-block">
                                        <form class="form-horizontal"  method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>                                                
                                                <input type="hidden" id="subcat" name="subcat" value="17">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Bakery Name:<span style="color:red;">*</span></label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="Bakery Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                        <select id="area" style="width:300px;" name="area" class="form-control" onblur="validateselect()">
                                                                 <option value="0">----Select Category---</option>
                                                                <% List <AreaBean> list2=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list2)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select Area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Bakery Address:<span style="color:red;">*</span></label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="Bakery Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Bakery Website:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="Bakery Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label">Enter Contact Number:<span style="color:red;">*</span></label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Description:(Include details of menu items offered and opening and closing hours)</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Select hotel image</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="file" id="image" name="image">
                                                            
                                                        </div>
                                                    </div>
                                                </div>  
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Cafe">
                    <div class="col-xl-12">
                                <div class="card m-t-35">
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="16">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Cafe Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="Cafe Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="area" style="width:300px;" name="area" class="form-control" onblur="validateselect()" required="true">
                                                                <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list3=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list3)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Cafe Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="Cafe Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Cafe Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" id="website" style="width:300px;" name="website" class="form-control" placeholder="Cafe Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" id="number" style="width:300px;" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Description:(Include details of menu items offered and opening and closing hours)</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Select cafe image</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="file" id="image" name="image">
                                                            
                                                        </div>
                                                    </div>
                                                </div>            
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Clinic">
                    <div class="col-xl-12">
                                <div class="card m-t-35">
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="23">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Clinic Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="Clinic Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="area" name="area" style="width:300px;" class="form-control" onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list5=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list5)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Clinic Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="Clinic Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Clinic Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" id="website" style="width:300px;" name="website" class="form-control" placeholder="Clinic Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Description</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Select clinic image</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="file" id="image" name="image">
                                                            
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Doctor">
                    <div class="col-xl-12">
                                <div class="card m-t-35">                                   
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                               <br>
                                            <input type="hidden" id="subcat" name="subcat" value="21">

                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Doctor Name:<span style="color:red;">*</span></label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="Doctor Name"  onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                        <select id="area" style="width:300px;" name="area" class="form-control"  onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list6=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list6)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Address:<span style="color:red;">*</span></label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="Address of clinic or hospital" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="Website of hospital or clinic working in" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Description:(about qualifications and experiences)</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                          <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Doctor Type</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="type" style="width:300px;" name="type" class="form-control" onblur="validateselect1()">
                                                                <option value="0">---Select Doctor Type----</option>
                                                                <option value="Physician">Physician</option>
                                                                <option value="Cardiologist">Cardiologist</option>
                                                                <option value="Paediatrician">Paediatrician</option>
                                                                <option value="Dentist">Dentist</option>
                                                                <option value="Dermatologist">Dermatologist</option>
                                                                <option value="Paediatrician">Paediatrician</option>
                                                                <option value="Psychiatrist">Psychiatrist</option>
                                                                <option value="Neurologist">Neurologist</option>
                                                            </select><span id="selectdata1" style="color: #ececec;display : none "> *Select proper Doctor Type</span>
                                                        </div>
                                                   
                                                    </div>
                                                    
                                                </div>
                                                 
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Electronics">
                    <div class="col-xl-12">
                                <div class="card m-t-35">                                    
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                 <input type="hidden" id="subcat" name="subcat" value="19">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Electronic Store Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="Electronic Store Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="area" style="width:300px;" name="area" class="form-control"  onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list7=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list7)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Electronic Store Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="Electronic Store Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Electronic Store Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="Electronic Store Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Description</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea style="width:300px;" id="description" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Select hospital image</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="file" id="image" name="image">
                                                            
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Gym">
                      <div class="col-xl-12">
                                <div class="card m-t-35">                                   
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="26">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Gym Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="Gym Name"  onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="area" style="width:300px;" name="area" class="form-control"  onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list8=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list8)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Gym Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="Gym Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Gym Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="Gym Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Description:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Gym Type</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="type" style="width:300px;" name="type" class="form-control" onblur="validateselect1()">
                                                                <option value="0">---Select GYM Type----</option>
                                                                <option value="Men">Men</option>
                                                                <option value="Women">Women</option>
                                                                <option value="Both">Both</option>
                                                            </select><span id="selectdata1" style="color: #ececec;display : none "> *Select proper GYM Type</span>
                                                        </div>
                                                    </div>
                                                   
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Select hotel image</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="file" id="image" name="image">
                                                            
                                                        </div>
                                                    </div>
                                                </div>  
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>  
                </div>
                <div id="Hospital">
                    <div class="col-xl-12">
                                <div class="card m-t-35">                                    
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="22">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Hospital Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="Hospital Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="area" style="width:300px;" name="area" class="form-control" onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list9=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list9)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Hospital Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="Hospital Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Hospital Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="Hospital Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Description</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Select hospital image</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="file" id="image" name="image">
                                                            
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent"  type="submit">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Hotel">
                    <div class="col-xl-12">
                                <div class="card m-t-35">          
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="14">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Hotel Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="Hotel Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="area" style="width:300px;" name="area" class="form-control" onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list10=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list10)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Hotel Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="Hotel Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Hotel Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="Hotel Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Description</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Hotel Type</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="type" style="width:300px;" name="type" class="form-control" onblur="validateselect1()">
                                                                <option value="0">---Select Hotel Type----</option>
                                                                <option value="3">3 star</option>
                                                                <option value="4">4 star</option>
                                                                <option value="5">5 star</option>
                                                            </select><span id="selectdata1" style="color: #ececec;display : none "> *Select proper Doctor Type</span>
                                                        </div>
                                                    </div>
                                                   
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Select hotel image</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="file" id="image" name="image">
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" onclick="sendDetails()">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent">Cancel</button>
                                                    </div>
                                                </div>
                                                
                                             <%--   <input type="hidden" name="subcat"><%=request.getParameter("subcat")%></input>--%>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Restaurant">
                    <div class="col-xl-12">
                                <div class="card m-t-35">                                 
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="15">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Restaurant Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="Restaurant Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                         <div class="input-group">
                                                        
                                                            <select id="area" style="width:300px;" name="area" class="form-control" onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list11=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list11)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Restaurant Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="Restaurant Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Restaurant Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="Restaurant Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Description:(Include details of menu items)</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Restaurant Type</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="type" style="width:300px;" name="type" class="form-control" onblur="validateselect1()">
                                                                <option value="0">---Select Restaurant Type----</option>
                                                                <option value="South Indian">South Indian</option>
                                                                <option value="Punjabi">Punjabi</option>
                                                                <option value="Continental">Continental</option>
                                                            </select><span id="selectdata1" style="color: #ececec;display : none "> *Select proper Restaurant Type</span>
                                                        </div>
                                                    </div>
                                                   
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Home Delivery</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        &nbsp;
                                                        <input type="radio" name="hd" id="hd" value="1" >&nbsp;&nbsp;Yes</input>
                                                        <input type="radio" name="hd" id="hd" value="0" checked="true">&nbsp;&nbsp;No</input>
                                                        </div>
                                                </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Select restaurant image</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="file" id="image" name="image">
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Saloon">
                    <div class="col-xl-12">
                                <div class="card m-t-35">                               
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                               <br>
                                              <input type="hidden" id="subcat" name="subcat" value="27">

                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Salon Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="Salon Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="area" style="width:300px;" name="area" class="form-control" onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list12=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list12)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Salon Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="Salon Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Saloon Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="Saloon Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Description:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Salon Type</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="type" name="type" style="width:300px;" class="form-control" onblur="validateselect1()">
                                                                <option value="0">---Select Salon Type----</option>
                                                                <option value="Men">Men</option>
                                                                <option value="Women">Women</option>
                                                                <option value="Both">Both</option>
                                                            </select><span id="selectdata1" style="color: #ececec;display : none "> *Select proper Salon Type</span>
                                                        </div>
                                                    </div>
                                                   
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Select hotel image</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="file" id="image" name="image">
                                                            
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" type="submit">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="School">
                    <div class="col-xl-12">
                                <div class="card m-t-35">                                    
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="28">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="name4" class=" form-control-label">Enter School Name:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4" style="text-align: center;">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" id="name" style="width:300px;" name="name" class="form-control" placeholder="School Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="area" style="width:300px;" name="area" class="form-control" onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list13=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list13)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align: center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter School Address:<span style="color:red;">*</span></label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="add" name="add" class="form-control" placeholder="School Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="name4" class=" form-control-label">Enter School Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="School Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="username4" class="form-control-label">Enter Contact Number:<span style="color:red;">*</span></label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="name4" class=" form-control-label">Enter Description</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                           <!-- <input type="text" id="description" name="description" class="form-control" placeholder="Description">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="gender4" class="form-control-label">Board</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="board" style="width:300px;" name="board" class="form-control" onblur="validateselect1()">
                                                                <option value="0">-----Select Board Type-----</option>
                                                                <option value="GSEB">GSEB</option>
                                                                <option value="ICSE">ICSE</option>
                                                                <option value="CBSE">CBSE</option>
                                                            </select><span id="selectdata1" style="color: #ececec;display : none "> *Select proper Board Type</span>
                                                        </div>
                                                    </div>
                                                   
                                                   
                                                    
                                                </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="gender4" class="form-control-label">Medium</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="medium" style="width:300px;" name="medium" class="form-control" onblur="validateselect2()">
                                                                <option value="0">---Select Medium Type---</option>
                                                                <option value="Gujarati">Gujarati</option>
                                                                <option value="English">English</option>
                                                                <option value="Hindi">Hindi</option>
                                                            </select><span id="selectdata2" style="color: #ececec;display : none "> *Select proper Medium Type</span>
                                                        </div>
                                                    </div>
                                                   
                                                   
                                                   
                                                </div>
                                                <!-- last name-->
                                               <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="gender4" class="form-control-label">Hostel</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        &nbsp;
                                                        <input type="radio" id="hostel" name="hostel" value="1">&nbsp;&nbsp;Yes</input>
                                                        <input type="radio" id="hostel" name="hostel" value="0" checked="true">&nbsp;&nbsp;No</input>
                                                        </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align: center;">
                                                        <label for="name4" class=" form-control-label">Enter Hostel Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="hos_name" name="hos_name" class="form-control" placeholder="Hostel Name" onblur="validatenameh()" required="true"><span id="first-span1" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span4" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align: center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Hostel Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="hos_add" name="hos_add" class="form-control" placeholder="Hostel Address" onblur="validateaddressh()" required="true"><span id="addres1" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align: center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Select school image</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="file" id="simage" name="simage">
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align: center;">
                                                        <button class="btn btn-primary layout_btn_prevent" onclick="sendDetails()">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
                <div id="Service">
                    <div class="col-xl-12">
                                <div class="card m-t-35">
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="dummyPlaceServlet1" enctype="multipart/form-data">
                                            <fieldset>
                                                <br>
                                                <input type="hidden" id="subcat" name="subcat" value="20">

                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Service Center Name</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="name" name="name" class="form-control" placeholder="Service Center Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="area" style="width:300px;" name="area" class="form-control" onblur="validateselect()" required="true">
                                                            <option value="0">-----select area-----</option>
                                                                <% List <AreaBean> list14=AreaManager.getAllAreaList();
                                                                    for(AreaBean ab:list14)
                                                                    { %>
                                                                    <option value="<%=ab.getArea_id()%>"><%=ab.getArea_name()%></option>
                                                                    <% } %>
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select proper area</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Service Center Address</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="hadd" name="hadd" class="form-control" placeholder="Service Center Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Service Center Website</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" style="width:300px;" id="website" name="website" class="form-control" placeholder="Service Center Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" class="form-control-label">Enter Contact Number</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" style="width:300px;" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" class=" form-control-label">Enter Description</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea id="description" style="width:300px;" name="description" rows="3" class="form-control" onblur="validatedesc()" required="true"></textarea><span id="des" style="color: #ececec;display : none "> *Enter proper description</span>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" class="form-control-label">Service Center Type</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                            <select id="type" style="width:300px;" name="type" class="form-control" onblur="validateselect1()">
                                                                <option value="0">---Select Service Type----</option>
                                                                <option value="Samsung">Samsung</option>
                                                                <option value="Oppo">Oppo</option>
                                                                <option value="Vodafone">Vodafone</option>
                                                                <option value="Dell">Dell</option>
                                                                <option value="Lenovo">Lenovo</option>
                                                            </select><span id="selectdata1" style="color: #ececec;display : none "> *Select proper Service Type</span>
                                                        </div>
                                                    </div>
                                                   
                                                    
                                                </div>
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Select hospital image</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="file" id="image" name="image">
                                                            
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent"  type="submit">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
    </div>

    <div>
        <%@include file="Footer.jsp" %>
    </div>
</body>
</html>

