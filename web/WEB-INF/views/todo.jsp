<%--
  Created by IntelliJ IDEA.
  User: mjungwirth
  Date: 15.12.2017
  Time: 09:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>


    <title>Wellcome</title>


</head>
<body>


<p>Hallo ${name}, Willkommen auf unserer Seite</p>
<p>Deine ToDo´s sind:</p>

<ol>
    <c:forEach var="todo" items="${todos}">
        <li>
                ${todo.name} &nbsp; &nbsp; &nbsp; <a href="/delete-todo.do?name=${todo.name}">delete</a>
        </li>
    </c:forEach>

</ol>
<form action="/addToDo.do" method="get">
    <input type="submit" name="addToDo" value="Neues ToDo hinzufügen">
</form>


</body>
</html>
