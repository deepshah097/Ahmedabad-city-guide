<%@page import="AdminBean.SubCategoryBean"%>
<%@page import="AdminManager.SubCategoryManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="AdminManager.CategoryManager"%>
<%@page import="java.util.List"%>
<%@page import="AdminBean.CategoryBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from dev.lorvent.com/admire/users.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 31 Dec 2016 07:05:51 GMT -->
<head
    <meta charset="UTF-8">
    <title>View Sub Category | Ahmedabad City Guide</title>
    <!--IE Compatibility modes-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/logo1.ico"/>
    <!-- global styles-->
    <link type="text/css" rel="stylesheet" href="css/components.css"/>
    <link type="text/css" rel="stylesheet" href="css/custom.css"/>
    <!--End of Global styles-->
    <!--Plugin styles-->
    
    <!--End of plugin styles-->
    <!--Page level styles-->
    <link type="text/css" rel="stylesheet" href="css/pages/tables.css" />
   <!-- <link type="text/css" rel="stylesheet" href="#" id="skin_change" />-->
    <!-- end of page level styles -->
    <script src="js/jquery.min.js"></script>
    <script>
        function getSubCategory()
        {
            
            var cid=document.getElementById("Category").value;
            var sub;
            var options='';
            $.ajax({
                url:'../ViewSubCategoryServlet',
                type:'POST',
                data:{Category:cid},
                success:function(data1)
                {
                    
                    var subcategory=data1.split(",");
                    for(var i=0;i<subcategory.length;i++)
                    {
                        var subcat=subcategory[i].split(":");
                        if(subcat[2] =="School")
                        {
                            sub="AddSchool.jsp";
                        }
                        if(subcat[2] =="Colleges")
                        {
                            sub="AddCollege.jsp";
                        }
                        if(subcat[2] =="Salon")
                        {
                            sub="AddSalon.jsp";
                        }
                        if(subcat[2] == "Gym")
                        {
                            sub="AddGym.jsp";
                        }
                        if(subcat[2]== "Hotel")
                        {
                            sub="AddHotel.jsp";
                        }
                        if(subcat[2] == "Coaching Class")
                        {
                            sub="AddClasses.jsp";
                        }
                        if(subcat[2] == "Restaurant")
                        {
                            sub="AddRestaurant.jsp";
                        }
                        if(subcat[2] =="Doctor")
                        {
                            sub="AddDoctor.jsp";
                        }
                        if(subcat[2] =="Service Center")
                        {
                            sub="AddServiceCenter.jsp";
                        }
                        if(subcat[2] =="Electronics")
                        {
                            sub="AddElectonicStore.jsp";
                        }
                        if(subcat[2] =="Hardware")
                        {
                            sub="AddHardwareStore.jsp";
                        }
                         if(subcat[2] =="Furniture")
                        {
                            sub="AddFurnitureStore.jsp";
                        }
                        if(subcat[2] =="Grocery")
                        {
                            sub="AddGrocery.jsp";
                        }
                        if(subcat[2] =="Jewellery")
                        {
                            sub="AddJewellery.jsp";
                        }
                        if(subcat[2] =="Pet Store")
                        {
                            sub="AddPetStore.jsp";
                        }
                        if(subcat[2] =="Services")
                        {
                            sub="AddService.jsp";
                        }
                        if(subcat[2] =="Cafe")
                        {
                            sub="AddCafe.jsp";
                        }
                        if(subcat[2] =="Bakery")
                        {
                            sub="AddBakery.jsp";
                        }
                        if(subcat[2] =="Clinic")
                        {
                            sub="AddClinic.jsp";
                        }
                        if(subcat[2] =="Hospital")
                        {
                            sub="AddHospital.jsp";
                        }
                        if(subcat[2] =="SuperMarket")
                        {
                            sub="AddSuperMarket.jsp";
                        }
                        options+="<tr role='row' class='even'><td class='sorting_1'>"+subcat[2]+"</td>\n\
                        <td><a href='"+sub+"?subcat="+subcat[1]+"' style='color:none;'><button class='btn btn-success'>Add</a></td><td>\n\
                        <a class='delete hidden-xs hidden-sm' data-toggle='tooltip' data-placement='top' title='Delete' onclick='deleteCategory("+subcat[1]+")'><i class='fa fa-trash text-danger'></i></a></td></tr>";
                                                            
                    }
                    var sub=document.getElementById("table_subcat");
                    
                    sub.innerHTML=options;
                   }
                
            })
        }
        
        
    </script> 
    <script>
        function deleteCategory(sid)
        {
            $.ajax({
                url:"../DeleteSubCategory",
                type:'POST',
                data:{SubCategory:sid},
                success:function(data)
                {
                    if(data)
                    {
                        alert("Subcategory with id "+sid+" deleted");
                        getSubCategory();
                    }
                    else
                    {
                        alert("Subcategory with id "+sid+" not deleted");
                        getSubCategory();
                    }
                }
            })
        }
        </script>
</head>

<body>


    <div class="bg-dark" id="wrap">
         <%@include file="Header.jsp" %>
        <!-- /#top -->
        <div class="wrapper">
            <%@include file="leftmenu.jsp" %>
            <!-- /#left -->
            <div id="content" class="bg-container">
                <header class="head">
                    <div class="main-bar row">
                        <div class="col-lg-6 col-sm-4">
                            <h4 class="nav_top_align">
                            <i class="fa fa-user"></i>
                            All categories
                        </h4>
                        </div>
                        <div class="col-lg-6 col-sm-8 col-xs-12">
                            <ol class="breadcrumb float-xs-right  nav_breadcrumb_top_align">
                                <li class="breadcrumb-item">
                                    <a href="index_admin.jsp">
                                        <i class="fa fa-home" data-pack="default" data-tags=""></i> Sub Category
                                    </a>
                                </li>
                               
                                <li class="active breadcrumb-item">View Sub Category</li>
                            </ol>
                        </div>
                    </div>
                </header>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <select id="Category" name="Category" onchange="getSubCategory()">
                <option value="0">----Select Category---</option>
                               <% 
                                   List <CategoryBean> list=CategoryManager.getAllCategoryList();
                                                    for (CategoryBean bean:list)
                                                    {
                              %>
                              <option value="<%=bean.getCategoryId() %>">
                                  <%=bean.getCategoryName()%></option>
                              <% } %>
                </select>
                </p>
                <div class="outer">
                    <div class="inner bg-container">
                        <div class="card">
                                                   
                                <div>
                                    <div>
                                    <table class="table  table-striped table-bordered table-hover dataTable no-footer" id="editable_table" role="grid">
                                            <thead>
                                               <tr role="row">
                                                    <th class="sorting_asc wid-20" tabindex="0" rowspan="1" colspan="1">Sub Category Name</th>
                                                    <th class="sorting_asc wid-20" tabindex="0" rowspan="1" colspan="1">Category Name</th>
                                                </tr>
                                            </thead>
                                            <tbody id="table_subcat" name="table_subcat">
                                               <% List <SubCategoryBean> list1=SubCategoryManager.getAllSubCategory();
                                                for(SubCategoryBean bean1:list1)
                                                {
                                                    String sub="";
                                                
                                                    if(bean1.getSubCategoryName().equals("School"))
                                                    {
                                                        sub+="AddSchool.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Colleges"))
                                                    {
                                                        sub+="AddCollege.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Salon"))
                                                    {
                                                        sub+="AddSalon.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Gym"))
                                                    {
                                                        sub+="AddGym.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Hotel"))
                                                    {
                                                        sub+="AddHotel.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Coaching Class"))
                                                    {
                                                        sub+="AddClasses.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Restaurant"))
                                                    {
                                                        sub+="AddRestaurant.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Doctor"))
                                                    {
                                                        sub+="AddDoctor.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Service Center"))
                                                    {
                                                        sub+="AddServiceCenter.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Electronics"))
                                                    {
                                                        sub+="AddElectonicStore.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Furniture"))
                                                    {
                                                        sub+="AddFurnitureStore.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Hardware"))
                                                    {
                                                        sub+="AddHardwareStore.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Super Market"))
                                                    {
                                                        sub+="AddSuperMarket.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Jewellery"))
                                                    {
                                                        sub+="AddJewellery.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Grocery"))
                                                    {
                                                        sub+="AddGrocery.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Pet Store"))
                                                    {
                                                        sub+="AddPetStore.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("SuperMarket"))
                                                    {
                                                        sub+="AddSuperMarket.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Services"))
                                                    {
                                                        sub+="AddService.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Cafe"))
                                                    {
                                                        sub+="AddCafe.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Bakery"))
                                                    {
                                                        sub+="AddBakery.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Clinic"))
                                                    {
                                                        sub+="AddClinic.jsp";
                                                    }
                                                    if(bean1.getSubCategoryName().equals("Hospital"))
                                                    {
                                                        sub+="AddHospital.jsp";
                                                    }
                                                
                                                 %>
                                                 <tr role="row" class="even">
                                                <td class="sorting_1"><%=bean1.getSubCategoryName()%></td>
                                                 <td class="sorting_1"><%=bean1.getCategoryName()%></td>
                                                     <td><a href="<%=sub%>?subcat=<%=bean1.getSubCategoryId()%>">
                                                             <button class="btn btn-success">Add</a></td>
                                                     <td><a class="delete hidden-xs hidden-sm" data-toggle="tooltip" data-placement="top" title="Delete" onclick="deleteCategory(<%=bean1.getSubCategoryId()%>)">
                                                                     <i class="fa fa-trash text-danger"></i></a>
                                                     </td>
                                                 </tr>
                                            <%}%>
                                            </tbody>
                                       </table>
                                    </div>
                                </div>
                                <!-- END EXAMPLE TABLE PORTLET-->
                            
                        </div>
                    </div>
                    <!-- /.inner -->
                </div>
                <!-- /.outer -->
            </div>
            <!-- /#content -->
        </div>
        <!--wrapper-->
       
        <!-- # right side -->
    </div>
    <!-- /#wrap -->
    <!-- global scripts-->
    <script type="text/javascript" src="js/components.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
    <!--End of Global scripts-->
    <!--Plugin scripts-->
  <!-- <script type="text/javascript" src="vendors/datatables/js/buttons.colVis.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/buttons.html5.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/buttons.bootstrap.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/buttons.print.min.js"></script>
    <!--End of plugin scripts-->
    <!--Page level scripts-->
   
</body>


<!-- Mirrored from dev.lorvent.com/admire/users.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 31 Dec 2016 07:05:51 GMT -->
</html>


