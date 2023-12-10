<%-- 
    Document   : login
    Created on : 09-Dec-2023, 7:41:14 pm
    Author     : rishabhmaurya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ page import="Datas.DatabaseMethods.java" %>--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="loginProcess.jsp" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        
        <input type="submit" value="Login">
    </form>
       
    </body>
</html>
