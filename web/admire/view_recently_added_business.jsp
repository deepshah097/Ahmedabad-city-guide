<%-- 
    Document   : view_recently_added_business
    Created on : Apr 23, 2017, 7:43:31 AM
    Author     : jeet2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cookie</title>
    </head>
    <body>
        <% 
            Cookie c[]=request.getCookies();
            for(int i=0;i<c.length;i++)
            {
                System.out.println("Name:"+c[i].getName());
                System.out.println("Value:"+c[i].getValue());
            }
        %>
    </body>
</html>
