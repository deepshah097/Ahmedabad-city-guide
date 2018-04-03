<%@page import="AdminManager.AreaManager"%>
<%@page import="AdminBean.AreaBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from dev.lorvent.com/admire/blank.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 31 Dec 2016 07:06:04 GMT -->
<head>
    <meta charset="UTF-8">
    <title>Add Doctor | Ahmedabad City Guide-admin</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/logo1.ico"/>
    <!-- global styles-->
    <link type="text/css" rel="stylesheet" href="css/components.css"/>
    <link type="text/css" rel="stylesheet" href="css/custom.css"/>
   <!-- <link type="text/css" rel="stylesheet" href="#" id="skin_change"/>-->
    <!-- end of global styles-->
    <script src="js/jquery.min.js">
    </script>
    <script src="js/multiple_img.js">
    </script>
    <script src="js/place_validation.js">
    </script>
   
</head>

<body>
<!--</div>-->

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
                            Add Doctor
                        </h4>
                    </div>
                    
                </div>
            </header>
            <div class="col-xl-12">
                                <div class="card m-t-35">
                                    <div class="card-header bg-white">
                                        Doctor Form
                                    </div>
                                    <div class="card-block">
                                        <form class="form-horizontal" method="post" action="../PlaceServlet" enctype="multipart/form-data">
                                            <fieldset>
                                               <br>
                                            <input type="hidden" id="subcat" name="subcat" value="<%=request.getParameter("subcat")%>">
                                             <input type="hidden" id="image_no" name="image_no" value="0">
                                                <div class="form-group row">
                                                    <div class="col-lg-3 col-xl-2 text-lg-right">
                                                        <label for="name4" class=" form-control-label">Enter Doctor Name:<span style="color:red;">*</span></label>
                                                        
                                                    </div>
                                                    <div class="col-lg-8 col-xl-4">
                                                        <div class="input-group">
                                                            <input type="text" id="name" name="name" class="form-control" placeholder="Doctor Name" onblur="validatePlaceName()" required="true">
                                                             <span id="sname"></span>
                                                        </div>
                                                    </div>
                                                </div> 
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-3 col-xl-2 text-lg-right">
                                                        <label for="gender4" class="form-control-label">Select area</label>
                                                    </div>
                                                    <div class="col-lg-8 col-xl-4">
                                                        
                                                            <select id="area" name="area" class="form-control">
                                                                <option value="0">--------Select area--------</option>
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
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Address:<span style="color:red;">*</span></label>
                                                    </div>
                                                    <div class="col-lg-8 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" id="add" name="add" class="form-control" placeholder="Address of clinic or hospital" onblur="validateAddress()" required="true">
                                                            <span id="sadd"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group row">
                                                    <div class="col-lg-3 col-xl-2  text-lg-right">
                                                        <label for="name5" class="form-control-label two_column_label_margintop">Enter Website</label>
                                                       
                                                    </div>
                                                    <div class="col-lg-8 col-xl-4  two_column_signup_margintop">
                                                        <div class="input-group">
                                                            <input type="text" id="website" name="website" class="form-control" placeholder="Website of hospital or clinic working in" onblur="validateWebsite()" required="true">
                                                             <span id="swebsite"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-3 col-xl-2 text-lg-right">
                                                        <label for="username4" class="form-control-label">Enter Contact Number:<span style="color:red;">*</span></label>
                                                    </div>
                                                    <div class="col-lg-8 col-xl-4">
                                                        <div class="input-group">
                                                            
                                                            <input type="text" id="number" name="number" class="form-control" placeholder="Contact Number" onblur="validateContactNo()" required="true">
                                                             <span id="snumber"></span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-lg-3 col-xl-2 text-lg-right">
                                                        <label for="name4" class=" form-control-label">Enter Description:(about qualifications and experiences)</label>
                                                    </div>
                                                    <div class="col-lg-8 col-xl-4">
                                                        <div class="input-group">
                                                          <textarea id="description" name="description" rows="3" class="form-control"></textarea>
                                                            <!--<input type="text" id="description" name="description" class="form-control" placeholder="School Name">-->
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="form-group row">
                                                    <div class="col-lg-3 col-xl-2 text-lg-right">
                                                        <label for="gender4" class="form-control-label">Doctor Type</label>
                                                    </div>
                                                    <div class="col-lg-8 col-xl-4">
                                                        
                                                            <select id="type" name="type" class="form-control">
                                                                <option value="0">-------Select doctor type--------</option>
                                                                <option value="Physician">Physician</option>
                                                                <option value="Cardiologist">Cardiologist</option>
                                                                <option value="Paediatrician">Paediatrician</option>
                                                                <option value="Dentist">Dentist</option>
                                                                <option value="Dermatologist">Dermatologist</option>
                                                                <option value="Paediatrician">Paediatrician</option>
                                                                <option value="Psychiatrist">Psychiatrist</option>
                                                                <option value="Neurologist">Neurologist</option>
                                                            </select>
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
    <!-- /#content -->
        
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


