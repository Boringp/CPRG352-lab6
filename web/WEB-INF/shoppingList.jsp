<%-- 
    Document   : shoppingList
    Created on : Oct 15, 2022, 11:00:25 PM
    Author     : bo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>shopping list</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p> hello,${username}
            <a href="<c:url value='/ShoppingList'>
                               <c:param name='logout' value='' /></c:url>">Logout</a>
        <h2>List</h2>
        <div>
            <form method="POST" action="<c:url value='/ShoppingList'>
                               <c:param name='add' value='' /></c:url>"><label  for="item">Add item:</label>
            <input type="txt" name="item">
            <input type="submit" value="Add">
            </form>
            <form method="POST" action="<c:url value='/ShoppingList'>
                  <c:param name='delete' value='' /></c:url>">
                
              <c:forEach items="${items}" var="item">
                <tr>
                    <td>${item}</td>
                    
                </tr>
            </c:forEach>        
                
            </form>
        </div>
            
    </body>
</html>
