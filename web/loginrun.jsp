<%-- 
    Document   : loginrun
    Created on : 10-Dec-2023, 11:19:13 pm
    Author     : rishabhmaurya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="Datas.DatabaseMethods" %>
<%@ page import="Datas.DatabaseMethods, javax.servlet.http.*" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    out.println(username);
    
    
    if (username != null && password != null) {
        boolean isValidUser = DatabaseMethods.searchCredentials(username);
            out.println(isValidUser);

        if (isValidUser) {
            // Create a cookie for the logged-in user
            Cookie userCookie = new Cookie("user_name", username);
            response.addCookie(userCookie);
            out.println("Welcome, " + username);
        } else {
            out.println("Invalid credentials. Please try again.");
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
