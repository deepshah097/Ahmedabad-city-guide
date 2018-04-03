<%@page import="AdminManager.AreaManager"%>
<%@page import="java.util.List"%>
<%@page import="AdminBean.AreaBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from dev.lorvent.com/admire/users.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 31 Dec 2016 07:05:51 GMT -->
<head
    <meta charset="UTF-8">
    <title>View Area | Ahmedabad City Guide</title>
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
        function deleteArea(aid)
        {
            alert("Function called");
          
            alert(aid);
            $.ajax({
                url:"../DeleteArea",
                type:'POST',
                data:{Area:aid},
                success:function(data)
                {
                    alert(data);
                    if(data)
                    {
                        alert("Area with id "+aid+" deleted");
                        $.ajax({
                            
                        })
                    }
                    else
                    {
                        alert("Area with id "+aid+" not deleted");
                      
                    }
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
                            All areas
                        </h4>
                        </div>
                        <div class="col-lg-6 col-sm-8 col-xs-12">
                            <ol class="breadcrumb float-xs-right  nav_breadcrumb_top_align">
                                <li class="breadcrumb-item">
                                    <a href="index_admin.jsp">
                                        <i class="fa fa-home" data-pack="default" data-tags=""></i> Category
                                    </a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a href="view_category.jsp"</a>
                                </li>
                                <li class="active breadcrumb-item">View Category</li>
                            </ol>
                        </div>
                    </div>
                </header>
                <div class="outer">
                    <div class="inner bg-container">
                        <div class="card">
                            
                         
                                <div>
                                    <div>
                                        <table class="table  table-striped table-bordered table-hover dataTable no-footer" id="editable_table" role="grid">
                                            <thead>
                                                <tr role="row">
                                                    <th class="sorting_asc wid-20" tabindex="0" rowspan="1" colspan="1">Area Name</th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <% 
                                                    List <AreaBean> list=AreaManager.getAllAreaList();
                                                    for (AreaBean bean:list)
                                                    {
                                                     %>
                                                <tr role="row" class="even">
                                                    
                                                    <td class="sorting_1">
                                                        <%=bean.getArea_name()%>
                                                    </td>
                                                    
                                                   

                                                   <td>
                                                  <!--<a href="view_user.html" data-toggle="tooltip" data-placement="top" title="View User">
                                                 <i class="fa fa-eye text-success"></i></a>&nbsp; &nbsp;-->
                                                       <!-- <a class="edit" data-toggle="tooltip" data-placement="top" title="Edit" href="edit_user.html">
                                                            <i class="fa fa-pencil text-warning"></i></a>&nbsp; &nbsp;-->
                                                       <a class="delete hidden-xs hidden-sm" data-toggle="tooltip" data-placement="top" title="Delete" onclick="deleteArea(<%=bean.getArea_id()%>)">
                                                            <i class="fa fa-trash text-danger"></i></a></td></tr>
                                                
                                                                                                     
                                            <% } 
                                                AreaManager.close(); %>
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
        <div id="right">
            <div class="right_content">
                <div class="alert alert-success white_txt">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Welcome Micheal
                    <br/></strong> Set Your Skin Here. Checkout Admin Statistics. Good Day!.
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
                </span> &nbsp; Last Login
                            <span class="inlinesparkline float-xs-right">2hrs Back</span>
                        </li>
                        <li class="warning_txt margin15_bottom">
                            <span class="fa-stack fa-sm">
                      <i class="fa fa-circle fa-stack-2x text-brown"></i>
                      <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                    </span> &nbsp; Pending Tasks
                            <span class="dynamicsparkline float-xs-right">12</span>
                        </li>
                        <li class="primary_txt margin15_bottom">
                            <span class="fa-stack fa-sm">
                      <i class="fa fa-circle fa-stack-2x text-primary"></i>
                      <i class="fa fa-cloud fa-stack-1x fa-inverse"></i>
                    </span> &nbsp; Weather Today
                            <span class="dynamicbar float-xs-right">Rainy</span>
                        </li>
                        <li class="margin15_bottom">
                            <span class="fa-stack fa-sm">
                      <i class="fa fa-circle fa-stack-2x text-brown"></i>
                      <i class="fa fa-calendar fa-stack-1x fa-inverse"></i>
                    </span> &nbsp; Events
                            <span class="inlinebar float-xs-right">Team Out</span>
                        </li>
                        <li class="success_txt margin15_bottom">
                            <span class="fa-stack fa-sm">
                      <i class="fa fa-circle fa-stack-2x text-success"></i>
                      <i class="fa fa-bell fa-stack-1x fa-inverse"></i>
                    </span> &nbsp; Notifications
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
    <!--End of Global scripts-->
    <!--Plugin scripts-->
    <script type="text/javascript" src="vendors/select2/js/select2.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="vendors/datatables/js/dataTables.buttons.min.js"></script>
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


