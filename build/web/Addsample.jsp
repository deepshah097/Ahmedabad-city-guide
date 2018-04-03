<%@page import="Manager.AreaManager"%>
<%@page import="Beans.AreaBean"%>
<%@page import="Beans.AreaBean"%>
<%@page import="java.util.List"%>
<%@page import="Beans.CategoryBean"%>
<%@page import="Manager.CategoryManager"%>
<%@page import="Servlet.PlaceServlet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Business Registration </title>
<script src="js/jquery.min.js"></script>

</head>

<body onload="div_hide()" style="background-image: url(img/login.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center center;">
  
<!--<div class="add_place none" id="autorized">-->
    <div>
        
    </div>
    <div>
        
                <div id="smpl">
                       <div class="col-xl-12">
                                <div class="card m-t-35">                                    
                                    <div class="card-block">
                                        <form class="form-horizontal"  method="post"  enctype="multipart/form-data">
                                            <fieldset>
                                                <br>                                                
                                                <input type="hidden" disabled="true" id="subcat" name="subcat" value="17">
                                                 <input type="hidden" id="image_no" name="image_no" value="0">
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" disabled="true" class=" form-control-label" style="color:white;font-size: 18px;">Enter Business Name:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" disabled="true" style="width:300px;"  class="form-control" placeholder="Business Name" onblur="validatename()" required="true"><span id="first-span" style="color: #ececec;display : none "> *Enter proper Name</span><span id="secound-span2" style="color: #ececec;display : none "> *Enter only 15 characters</span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="gender4" disabled="true" class="form-control-label" style="color:white;font-size: 18px;">Select area</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                        
                                                        <select  style="width:300px;" disabled="true" class="form-control" onblur="validateselect()">
                                                                 <option value="0">----Select Category---</option>
                                                                
                                                            </select><span id="selectdata" style="color: #ececec;display : none "> *Select Area:</span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                
                                                 <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" disabled="true" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Business Address:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" disabled="true" style="width:300px;" class="form-control" placeholder="Business Address" onblur="validateaddress()" required="true"><span id="addres" style="color: #ececec;display : none "> *Enter proper Address</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" disabled="true" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Enter Business Website:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" disabled="true" style="width:300px;" class="form-control" placeholder="Business Website" onblur="validatewebsite()" required="true"><span id="webs" style="color: #ececec;display : none "> *Enter proper website</span>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="username4" disabled="true" class="form-control-label" style="color:white;font-size: 18px;">Enter Contact Number:</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" disabled="true" style="width:300px;"class="form-control" placeholder="Contact Number" onblur="validatecontact()" required="true"><span id="num1" style="color: #ececec;display : none "> *Enter proper Contact Number</span><span id="num2" style="color: #ececec;display : none "> *Enter proper 10 Digit Contact Number</span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2 text-lg-right" style="text-align:center;">
                                                        <label for="name4" disabled="true" class=" form-control-label" style="color:white;font-size: 18px;">Enter Description:(Include details of menu items 
                                                            offered and opening and closing hours)</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4">
                                                        <div class="input-group">
                                                            <textarea  disabled="true" style="width:300px;" rows="3" class="form-control" required="true"></textarea>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-6 col-xl-2  text-lg-right" style="text-align:center;">
                                                        <label for="name5" disabled="true" class="form-control-label two_column_label_margintop" style="color:white;font-size: 18px;">Select Business image</label>
                                                    </div>
                                                    <div class="col-lg-6 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="file" disabled="true">
                                                            
                                                        </div>
                                                    </div>
                                                </div>  
                                                <div class="form-group row">
                                                    <div class="col-lg-12 push-xl-2 push-lg-3" style="text-align:center;">
                                                        <button class="btn btn-primary layout_btn_prevent" disabled="true" type="submit" style="color:white;font-size: 18px;">Add</button>
                                                        <button class="btn btn-warning layout_btn_prevent" disabled="true" style="color:white;font-size: 18px;">Cancel</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                </div>
       
               
               
    </div>

   
</body>
</html>

