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
    <link href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 60px;
            background-color: #f5f5f5;
            padding-left: 20px;
        }
    </style>

    <title>Wellcome</title>


</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-default">
    <a href="http://localhost:8080/todo.do" class="navbar-brand">GBS</a>
    <ul class="nav navbar-nav">
        <li class="active">Home</li>
        <li><a href="http://localhost:8080/todo.do"></a>Todos</li>
    </ul>
</nav>

<!-- Main Container -->
<div class="container">

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

</div>

<!-- Footer -->
<footer class="footer">
    <p>Impressum</p>
</footer>

<!-- Librarys -->
<script src="webjars/jquery/3.1.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>
