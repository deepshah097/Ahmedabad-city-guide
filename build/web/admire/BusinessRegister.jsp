<%-- 
    Document   : addBusiness
    Created on : Feb 26, 2017, 4:57:31 PM
    Author     : admin
--%>

<%@page import="java.util.List"%>
<%@page import="AdminBean.CategoryBean"%>
<%@page import="AdminManager.CategoryManager"%>
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
            alert("function called");
           var cid=document.getElementById("Category").value;
            alert(cid);
            var options="<option value='0'>----Select Sub Category----</option>";
             alert(options);
          $.ajax({
              
               url:'../ViewSubCategoryServlet',
                type:'POST',
                data:{Category:cid},
                success:function(data1)
                {
                   alert("success");
                    var subcategory=data1.split(",");
                    for(var i=0;i<subcategory.length;i++)
                    {
                        var subcat=subcategory[i].split(":");
                        options+="<option value='"+subcat[1]+"' name='"+subcat[2]+"'>"+subcat[2]+"</option>";
                        
                    }
                    var sub=document.getElementById("subcat");
                    
                    sub.innerHTML=options;
                   }
                
            })
        }
     
</script>


<script type="text/javascript">
    
    
    function sendDetails()
    {
        alert("Function called");
       var sub=document.getElementById("subcat").value;
        
            var website=document.getElementById("website").value;
             alert(website);
             var sname=document.getElementById("sname").value;
             alert(sname);
            var sadd=document.getElementById("sadd").value;
             alert(sadd);
           var number=document.getElementById("contact_number").value;
            alert("Contact number is "+number);
           var desc=document.getElementById("description").value;
          alert(desc);
          var board=document.getElementById("board").value;
          alert(board);
          var medium=document.getElementById("medium").value;
          alert(medium);
          
          var hostel=document.getElementById("hostel").value;
          alert(hostel);
          var hos_add=document.getElementById("hos_add").value;
          var hos_name=document.getElementById("hos_name").value;
          if(hostel=="1")
          {
              $("#hostel").show();
          }
          $.ajax({
                
                url:'../SchoolServlet',
                type:'POST',
                data:{website:website,sname:sname,sadd:sadd,number:number,description:desc,subcat:sub,board:board,medium:medium,hostel:hostel,hos_name:hos_name,hos_add:hos_add},
                success:function(data1){
                    alert(data1);
                   
                }
            })
          
        alert("servlet called");
         
    }
    
</script>
<script>
    function div_hide()
    {
        alert("div_hide");
        $("#School").hide();
        $("#hostel").hide(); 
    }
    function div_show()
    {
        var sub=document.getElementById("subcat");
            
            $("#School").show();
       
    }
    </script>
</head>

<body onload="div_hide()">
  
<!--<div class="add_place none" id="autorized">-->
    <div class="place_form wid" style="width:617px;">

      <h3>Business Register<span></span></h3>
      
       <select id="Category" name="Category" onchange="getSubCategory()">
                <option value="0">----Select Category---</option>
                               <% 
                                   List <CategoryBean> list=CategoryManager.getAllCategoryList();
                                                    for (CategoryBean bean:list)
                                                    {
                              %>
                              <option value="<%=bean.getCategoryId()%>">
                                  <%=bean.getCategoryName()%></option>
                              <% } %>
                </select>
        <label>Select Sub-Category:<select id="subcat" onchange="div_show()">
                
            </select></label>
        <div id="School">
        <form name="School_register" id="business_register">
       
        <label>Business Website:<input type="text"  id="website" name="website"></label>
        <label>Contact Number:<input type="text" id="contact_number" name="contact_number"></label>
        <label>enter school name:<input type="text" id="sname" name="sname" ></label>
        <label>enter school address:<input type="text" id="sadd" name="sadd"></label>
        <label>Select board:<select  id="board" name="board">
                            <option>Select Board</option>
                            <option value="GSEB">GSEB</option>
                            <option value="CBSE">CBSE</option>
                            <option value="ICSE">ICSE</option>
            </select></label>
        
        <label id="lsmedium">Select Medium:<select id="medium" name="medium">
                                     <option>Select Medium</option>
                                    <option value="English">English</option>
                                    <option value="Gujarati">Gujarati</option>
                                    <option value="Hindi">Hindi</option>
            </select></label>
        <br>
        <label id="lsname">Hostel:<input type="radio" id="hostel" name="hostel" value="1">YES</input>
                                  <input type="radio" id="hostel" name="hostel" value="0">NO</input>
        </label>
        <label>Description:<textarea id="description" rows="5" cols="5"></textarea></label>
        <input type="button" id="btn_add" value="add business" onclick="sendDetails()"></input>
      <!--  <a href="#" class="btn btn-primary"><i class="icon-facebook"></i>New User?</a>-->
      </form>
    </div>
    <div id="hostel">
        <label>Enter hostel name:<input type="text" id="hos_name" name="hos_name"></label>
        <label>Enter hostel address:<input type="text" id="hos_add" name="hos_add"></label>
    </div>
<!--</div>-->
</body>
</html>

