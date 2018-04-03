<%-- 
    Document   : login
    Created on : 7 Jan, 2017, 12:58:34 PM
    Author     : Nupur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OTP | Ahmedabad City Guide</title>
      
       <script src="js/jquery.min.js"></script>
       <script>
    
    function checklogin()
    {
        $.ajax({
            
            url:'Login_servlet',
            type:'POST',
            
            success:function(data1)
            {
                alert(data1);
                
                if(data1=="Invalid username")
                {
                    alert("Please enter valid username");
                }
            }
        })
    }
   
    
</script>    
</head>

<body>
    <div>
    <%@include file="headerjsp.jsp" %>
    </div>
<!--<div class="add_place none" id="autorized">-->
    <div class="place_form login_form">
      
      <h3>Login<span></span></h3>
      <form action="Login_servlet" method="post">
        <label>UserName:<input type="text" name="UserName"></label>
        <label>Password:<input type="password" name="Password"></label>
        <a href="forget_p1.jsp">Forget Password ?</a>
        <input type="submit" value="Login" class="btn btn-success" style="margin-left: 41px;" onclick="checklogin()"><br>
       <!--  <a href="Login_servlet" class="btn btn-primary btn-success" style="background: #25547b">Login</a>-->
         <a href="registerfinal.jsp" class="btn btn-primary btn-success" style="background: #25547b">New User?</a>
      </form>
    </div>
    <div style="margin-top: 300px;">
    
    </div>

<!--</div>-->
    <div>
    <%@include file="Footer.jsp" %>
    </div>

</body>
</html>

