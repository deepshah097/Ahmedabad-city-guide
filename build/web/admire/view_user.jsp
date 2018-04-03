<%@page import="AdminBean.UserBean"%>
<%@page import="AdminManager.UserManager"%>
<%@page import="AdminManager.CategoryManager"%>
<%@page import="java.util.List"%>
<%@page import="AdminBean.CategoryBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">
    <a href="view_user.jsp"></a>


<!-- Mirrored from dev.lorvent.com/admire/users.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 31 Dec 2016 07:05:51 GMT -->
<head
    <meta charset="UTF-8">
    <title>View Users | Ahmedabad City Guide</title>
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
    <link type="text/css" rel="stylesheet" href="vendors/select2/css/select2.min.css" />
    <link type="text/css" rel="stylesheet" href="css/pages/dataTables.bootstrap.css" />
    <!--End of plugin styles-->
    <!--Page level styles-->
    <link type="text/css" rel="stylesheet" href="css/pages/tables.css" />
  <!--  <link type="text/css" rel="stylesheet" href="#" id="skin_change" />-->
    <!-- end of page level styles -->
  <script src="js/jquery.min.js"></script>
    <script>
        function getUser()
        {
            
            var type=document.getElementById("type").value;
            
            var options='';
            $.ajax({
                url:'../ViewUser',
                type:'POST',
                data:{type:type},
                success:function(data1)
                {
                    alert(data1);
                    var user=data1.split(",");
                    for(var i=0;i<user.length;i++)
                    {
                        var u=user[i].split(":");
                        
                        options+="<tr role='row' class='even'><td class='sorting_1'>"+u[0]+" "+u[1]+"</td><td class='sorting_1'>"+u[2]+"</td><td class='sorting_1'>"+u[3]+"</td><td class='sorting_1'>"+u[4]+"</td></tr>";
                        
                                                            
                    }
                    var sub=document.getElementById("table_user");
                    
                    sub.innerHTML=options;
                   }
                
            })
        }
        
        
    </script>    
</head>

<body>
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
        <div class="wrapper">
            <%@include file="leftmenu.jsp" %>
            <!-- /#left -->
            <div id="content" class="bg-container">
                <header class="head">
                    <div class="main-bar row">
                        <div class="col-lg-6 col-sm-4">
                            <h4 class="nav_top_align">
                            <i class="fa fa-user"></i>
                            All users
                        </h4>
                        </div>
                        <div class="col-lg-6 col-sm-8 col-xs-12">
                            <ol class="breadcrumb float-xs-right  nav_breadcrumb_top_align">
                                <li class="breadcrumb-item">
                                    <a href="index_admin.jsp">
                                        <i class="fa fa-home" data-pack="default" data-tags=""></i> Users
                                    </a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a href="view_user.jsp"></a>
                                </li>
                                <li class="active breadcrumb-item">View Users</li>
                            </ol>
                        </div>
                    </div>
                    <div>
                       
                    </div>
                </header>
                <div class="outer">
                    &nbsp;&nbsp;&nbsp;
                    <!--   <select id="type" onchange="getUser()">
                           <option value="0">------Select type of user-----</option>
                               <option value="N">Normal Users</option>
                               <option value="B">Business Users</option>
                       </select>-->
                    <div class="inner bg-container">
                        <div class="card">
                            
                         
                                <div>
                                    
                                    <div>
                                        <table id="table_user" class="table  table-striped table-bordered table-hover dataTable no-footer" id="editable_table" role="grid">
                                            <thead>
                                                <tr role="row">
                                                    <th class="sorting_asc wid-20" tabindex="0" rowspan="1" colspan="1">Name</th>
                                                    <th class="sorting_asc wid-20" tabindex="0" rowspan="1" colspan="1">Email Id</th>
                                                    <th class="sorting_asc wid-20" tabindex="0" rowspan="1" colspan="1">Contact No</th>
                                                    <th class="sorting_asc wid-20" tabindex="0" rowspan="1" colspan="1">Gender</th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <% 
                                                    List <UserBean> list=UserManager.getAllUsers();
                                                    for (UserBean bean:list)
                                                    {
                                                     %>
                                                <tr role="row" class="even">
                                                    
                                                    <td class="sorting_1">
                                                        <%=bean.getFirst_Name()+" "+bean.getLast_Name()%>
                                                    </td>
                                                    <td>
                                                        <%=bean.getEmail_Id()%>
                                                    </td>
                                                   <td>
                                                        <%=bean.getContact_No()%>
                                                    </td>
                                                    <td>
                                                        <%=bean.getGender()%>
                                                    </td>
                                                  
                                                  <!--<a href="view_user.html" data-toggle="tooltip" data-placement="top" title="View User">
                                                 <i class="fa fa-eye text-success"></i></a>&nbsp; &nbsp;-->
                                                       <!-- <a class="edit" data-toggle="tooltip" data-placement="top" title="Edit" href="edit_user.html">
                                                            <i class="fa fa-pencil text-warning"></i></a>&nbsp; &nbsp;-->
                                                       </tr>
                                                
                                                                                                     
                                            <% } 
                                                CategoryManager.close(); %>
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
    
    <script type="text/javascript" src="vendors/datatables/js/buttons.colVis.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/buttons.html5.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/buttons.bootstrap.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/buttons.print.min.js"></script>
    <!--End of plugin scripts-->
    <!--Page level scripts-->
    <script type="text/javascript" src="js/pages/users.js"></script>
    <!-- end page level scripts -->
</body>


<!-- Mirrored from dev.lorvent.com/admire/users.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 31 Dec 2016 07:05:51 GMT -->
</html>



