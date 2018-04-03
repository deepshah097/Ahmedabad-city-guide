<%-- 
    Document   : districtjsp
    Created on : 29 Dec, 2016, 4:13:37 PM
    Author     : Nupur
--%>

<%@page import="Manager.CategoryManager"%>
<%@page import="Bean.Categorybean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         <% 
                int i=0;
                List<Categorybean> cb=new ArrayList<>();
                
                
         %>
         
         <select name="Category_name">
              <%  for(Categorybean d:db)
                {
              %>
              
              <option  value="<%=d.getCategory_id()%>"><%=d.getCategory_name()%></option>
                
              <%}%>
         </select>
        
            
           
                   
    </body>
</html>



























































































































































































