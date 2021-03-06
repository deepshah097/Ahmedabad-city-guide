<%@page import="AdminManager.CategoryManager"%>
<%@page import="java.util.List"%>
<%@page import="AdminBean.CategoryBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">
    <a href="view_category.jsp"></a>


<!-- Mirrored from dev.lorvent.com/admire/users.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 31 Dec 2016 07:05:51 GMT -->
<head
    <meta charset="UTF-8">
    <title>View Category | Ahmedabad City Guide</title>
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
        function getSubCategory()
        {
            
            var cid=document.getElementById("Category").value;
            var options='';
            $.ajax({
                url:'../../../../ViewSubCategoryServlet',
                type:'POST',
                data:{Category:cid},
                success:function(data1)
                {
                    
                    var subcategory=data1.split(",");
                    for(var i=0;i<subcategory.length;i++)
                    {
                        var subcat=subcategory[i].split(":");
                        options+="<tr role='row' class='even'><td class='sorting_1'>"+subcat[2]+"</td><td>\n\
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
                url:"../../../../DeleteSubCategory",
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
        <div id="top">
            <!-- .navbar -->
            <nav class="navbar navbar-static-top">
                <div class="container-fluid">
                    <a class="navbar-brand text-xs-center" href="index-2.html">
                        <h4 class="text-white"><img src="img/logow.png" class="admin_img" alt="logo"> ADMIRE ADMIN</h4>
                    </a>
                    <div class="menu">
                    <span class="toggle-left" id="menu-toggle">
                        <i class="fa fa-bars text-white"></i>
                    </span>
                    </div>

                    <!-- Toggle Button -->
                    <div class="text-xs-right xs_menu">
                        <button class="navbar-toggler hidden-xs-up" type="button" data-toggle="collapse" data-target="#nav-content">
                            ☰
                        </button>
                    </div>
                    <!-- Nav Content -->
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="topnav dropdown-menu-right float-xs-right">
                        <div class="btn-group">
                            <div class="notifications no-bg">
                                <a class="btn btn-default btn-sm messages" data-toggle="dropdown"> <i class="fa fa-envelope fa-1x text-white"></i>
                                    <!--<span class="bg-warning message_tags">4</span>-->
                                    <span class="tag tag-warning">8</span>
                                </a>
                                <div class="dropdown-menu drop_box_align" role="menu">
                                    <div class="popover-title">You have 8 Messages</div>
                                    <div id="messages">
                                        <div class="data">
                                            <div class="col-xs-2">
                                                <img src="img/mailbox_imgs/5.jpg" class="message-img avatar" alt="avatar1"></div>
                                            <div class="col-xs-10 message-data"> <strong>hally</strong>
                                                sent you an image.
                                                <br>
                                                <small>add to timeline</small>
                                            </div>
                                        </div>
                                        <div class="data">
                                            <div class="col-xs-2">
                                                <img src="img/mailbox_imgs/8.jpg" class="message-img avatar" alt="avatar1"></div>
                                            <div class="col-xs-10 message-data"> <strong>Meri</strong>
                                                invitation for party.
                                                <br>
                                                <small>add to timeline</small>
                                            </div>
                                        </div>
                                        <div class="data">
                                            <div class="col-xs-2">
                                                <img src="img/mailbox_imgs/7.jpg" class="message-img avatar" alt="avatar1"></div>
                                            <div class="col-xs-10 message-data">
                                                <strong>Remo</strong>
                                                meeting details .
                                                <br>
                                                <small>add to timeline</small>
                                            </div>
                                        </div>
                                        <div class="data">
                                            <div class="col-xs-2">
                                                <img src="img/mailbox_imgs/6.jpg" class="message-img avatar" alt="avatar1"></div>
                                            <div class="col-xs-10 message-data">
                                                <strong>David</strong>
                                                upcoming events list.
                                                <br>
                                                <small>add to timeline</small>
                                            </div>
                                        </div>
                                        <div class="data">
                                            <div class="col-xs-2">
                                                <img src="img/mailbox_imgs/5.jpg" class="message-img avatar" alt="avatar1"></div>
                                            <div class="col-xs-10 message-data"> <strong>hally</strong>
                                                sent you an image.
                                                <br>
                                                <small>add to timeline</small>
                                            </div>
                                        </div>
                                        <div class="data">
                                            <div class="col-xs-2">
                                                <img src="img/mailbox_imgs/8.jpg" class="message-img avatar" alt="avatar1"></div>
                                            <div class="col-xs-10 message-data"> <strong>Meri</strong>
                                                invitation for party.
                                                <br>
                                                <small>add to timeline</small>
                                            </div>
                                        </div>
                                        <div class="data">
                                            <div class="col-xs-2">
                                                <img src="img/mailbox_imgs/7.jpg" class="message-img avatar" alt="avatar1"></div>
                                            <div class="col-xs-10 message-data">
                                                <strong>Remo</strong>
                                                meeting details .
                                                <br>
                                                <small>add to timeline</small>
                                            </div>
                                        </div>
                                        <div class="data">
                                            <div class="col-xs-2">
                                                <img src="img/mailbox_imgs/6.jpg" class="message-img avatar" alt="avatar1"></div>
                                            <div class="col-xs-10 message-data">
                                                <strong>David</strong>
                                                upcoming events list.
                                                <br>
                                                <small>add to timeline</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="popover-footer">
                                        <a href="mail_inbox.html">Inbox</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="btn-group">
                            <div class="notifications messages no-bg">
                                <a class="btn btn-default btn-sm" data-toggle="dropdown"> <i class="fa fa-bell text-white"></i>
                                    <!--<span class="bg-danger notification_tags">4</span>-->
                                    <span class="tag tag-danger">9</span>
                                </a>
                                <div class="dropdown-menu drop_box_align" role="menu">
                                    <div class="popover-title">You have 9 Notifications</div>
                                    <div id="notifications">
                                        <div class="data">
                                            <div class="col-xs-2">
                                                <img src="img/mailbox_imgs/1.jpg" class="message-img avatar" alt="avatar1"></div>
                                            <div class="col-xs-10 message-data">
                                                <i class="fa fa-clock-o"></i>
                                                <strong>Remo</strong>
                                                sent you an image
                                                <br>
                                                <small class="primary_txt">just now.</small>
                                                <br></div>
                                        </div>
                                        <div class="data">
                                            <div class="col-xs-2">
                                                <img src="img/mailbox_imgs/2.jpg" class="message-img avatar" alt="avatar1"></div>
                                            <div class="col-xs-10 message-data">
                                                <i class="fa fa-clock-o"></i>
                                                <strong>clay</strong>
                                                business propasals
                                                <br>
                                                <small class="primary_txt">20min Back.</small>
                                                <br></div>
                                        </div>
                                        <div class="data">
                                            <div class="col-xs-2">
                                                <img src="img/mailbox_imgs/3.jpg" class="message-img avatar" alt="avatar1"></div>
                                            <div class="col-xs-10 message-data">
                                                <i class="fa fa-clock-o"></i>
                                                <strong>John</strong>
                                                meeting at Ritz
                                                <br>
                                                <small class="primary_txt">2hrs Back.</small>
                                                <br></div>
                                        </div>
                                        <div class="data">
                                            <div class="col-xs-2">
                                                <img src="img/mailbox_imgs/6.jpg" class="message-img avatar" alt="avatar1"></div>
                                            <div class="col-xs-10 message-data">
                                                <i class="fa fa-clock-o"></i>
                                                <strong>Luicy</strong>
                                                Request Invitation
                                                <br>
                                                <small class="primary_txt">Yesterday.</small>
                                                <br></div>
                                        </div>
                                        <div class="data">
                                            <div class="col-xs-2">
                                                <img src="img/mailbox_imgs/1.jpg" class="message-img avatar" alt="avatar1"></div>
                                            <div class="col-xs-10 message-data">
                                                <i class="fa fa-clock-o"></i>
                                                <strong>Remo</strong>
                                                sent you an image
                                                <br>
                                                <small class="primary_txt">just now.</small>
                                                <br></div>
                                        </div>
                                        <div class="data">
                                            <div class="col-xs-2">
                                                <img src="img/mailbox_imgs/2.jpg" class="message-img avatar" alt="avatar1"></div>
                                            <div class="col-xs-10 message-data">
                                                <i class="fa fa-clock-o"></i>
                                                <strong>clay</strong>
                                                business propasals
                                                <br>
                                                <small class="primary_txt">20min Back.</small>
                                                <br></div>
                                        </div>
                                        <div class="data">
                                            <div class="col-xs-2">
                                                <img src="img/mailbox_imgs/3.jpg" class="message-img avatar" alt="avatar1"></div>
                                            <div class="col-xs-10 message-data">
                                                <i class="fa fa-clock-o"></i>
                                                <strong>John</strong>
                                                meeting at Ritz
                                                <br>
                                                <small class="primary_txt">2hrs Back.</small>
                                                <br></div>
                                        </div>
                                        <div class="data">
                                            <div class="col-xs-2">
                                                <img src="img/mailbox_imgs/6.jpg" class="message-img avatar" alt="avatar1"></div>
                                            <div class="col-xs-10 message-data">
                                                <i class="fa fa-clock-o"></i>
                                                <strong>Luicy</strong>
                                                Request Invitation
                                                <br>
                                                <small class="primary_txt">Yesterday.</small>
                                                <br></div>
                                        </div>
                                        <div class="data">
                                            <div class="col-xs-2">
                                                <img src="img/mailbox_imgs/1.jpg" class="message-img avatar" alt="avatar1"></div>
                                            <div class="col-xs-10 message-data">
                                                <i class="fa fa-clock-o"></i>
                                                <strong>Remo</strong>
                                                sent you an image
                                                <br>
                                                <small class="primary_txt">just now.</small>
                                                <br></div>
                                        </div>
                                    </div>

                                    <div class="popover-footer">
                                        <a href="#">View All</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="btn-group">
                            <a class="btn btn-default btn-sm messages toggle-right">
                                &nbsp;
                                <i class="fa fa-cog text-white"></i>
                                &nbsp;
                            </a>
                        </div>
                        <div class="btn-group">
                            <div class="user-settings no-bg">
                                <button type="button" class="btn btn-default no-bg micheal_btn" data-toggle="dropdown">
                                    <img src="img/admin.jpg" class="admin_img2 rounded-circle avatar-img" alt="avatar"> <strong>Micheal</strong>
                                    <span class="fa fa-sort-down white_bg"></span>
                                </button>
                                <div class="dropdown-menu admire_admin">
                                    <a class="dropdown-item title" href="#">
                                        Admire Admin</a>
                                    <a class="dropdown-item" href="edit_user.html"><i class="fa fa-cogs"></i>
                                        Account Settings</a>
                                    <a class="dropdown-item" href="#">
                                        <i class="fa fa-user"></i>
                                        User Status
                                    </a>
                                    <a class="dropdown-item" href="mail_inbox.html"><i class="fa fa-envelope"></i>
                                        Inbox</a>

                                    <a class="dropdown-item" href="lockscreen.html"><i class="fa fa-lock"></i>
                                        Lock Screen</a>
                                    <a class="dropdown-item" href="login.html"><i class="fa fa-sign-out"></i>
                                        Log Out</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="collapse navbar-toggleable-sm col-xl-6 col-lg-6 hidden-md-down float-xl-right  top_menu" id="nav-content">
                        <ul class="nav navbar-nav top_menubar">
                            <li class="nav-item">
                                <a class="nav-link text-white" href="mail_inbox.html">
                                    <i class="fa fa-inbox"></i> <span class="quick_text">Inbox</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white" href="mail_compose.html">
                                    <i class="fa fa fa-edit"></i> <span class="quick_text">Compose</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white" href="maps.html">
                                    <i class="fa fa-map-marker"></i> <span class="quick_text">Maps</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white" href="gallery.html">
                                    <i class="fa fa-picture-o"></i> <span class="quick_text">Gallery</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- /.container-fluid --> </nav>
            <!-- /.navbar -->
            <!-- /.head --> </div>
        <!-- /#top -->
        <div class="wrapper">
            <div id="left">
                <div class="media user-media bg-dark dker">
                    <div class="user-media-toggleHover">
                        <span class="fa fa-user"></span>
                    </div>
                    <div class="user-wrapper bg-dark">
                        <a class="user-link" href="#">
                            <img class="media-object img-thumbnail user-img rounded-circle admin_img3" alt="User Picture" src="img/admin.jpg">
                            <p class="text-white user-info">Welcome Micheal</p>
                        </a>
                       
                    </div>
                </div>
                <!-- #menu -->
            <ul id="menu" class="bg-blue dker">
                <li class="active">
                    <a href="index-admin.jsp">
                        <i class="fa fa-home"></i>
                        <span class="link-title">&nbsp;Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="fa fa-anchor"></i>
                        <span class="link-title">&nbsp; Category</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="add_category.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp;Add Category
                            </a>
                        </li>
                        <li>
                            <a href="view_category.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; View Category
                            </a>
                        </li>
                        <li>
                            <a href="delete_category.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; Delete Category
                            </a>
                        </li>
                        
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="fa fa-anchor"></i>
                        <span class="link-title">&nbsp; SubCategory</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="add_subcategory.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp;Add SubCategory
                            </a>
                        </li>
                        <li>
                            <a href="view_subcategory.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; View SubCategory
                            </a>
                        </li>
                        <li>
                            <a href="delete_subcategory.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; Delete SubCategory
                            </a>
                        </li>
                        
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="fa fa-anchor"></i>
                        <span class="link-title">&nbsp; Area</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="add_area.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp;Add area 
                            </a>
                        </li>
                        <li>
                            <a href="view_area.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp;View Area
                            </a>
                        </li>
                        
                    </ul>
                </li>
                 <li>
                    <a href="javascript:;">
                        <i class="fa fa-anchor"></i>
                        <span class="link-title">&nbsp; Users</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        
                        <li>
                            <a href="view_user.jsp">
                                <i class="fa fa-angle-right"></i> &nbsp; View User
                            </a>
                        </li>
                       
                        
                    </ul>
                </li>
            </ul>
            <!-- /#menu -->
            </div>
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
               
                <div class="outer">
                    <div class="inner bg-container">
                        <div class="card">
                            
                         
                                <div>
                                    <div>
                                        <table class="table  table-striped table-bordered table-hover dataTable no-footer" id="editable_table" role="grid">
                                            <thead>
                                                <tr role="row">
                                                    <th class="sorting_asc wid-20" tabindex="0" rowspan="1" colspan="1">Category Name</th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody id="table_subcat" name="table_subcat">
                                               
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


