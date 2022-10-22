<%-- 
    Document   : register
    Created on : Oct 15, 2022, 11:00:08 PM
    Author     : bo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
   <title>register</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        
        <form method="POST" action="  <c:url value='/ShoppingList'>
                               <c:param name='register' value='' /></c:url>">
        <label for="username">
          username :
        </label>
        <input type="txt" name="username">
        <input type="submit" value="Register name">
    </body>
</html>
