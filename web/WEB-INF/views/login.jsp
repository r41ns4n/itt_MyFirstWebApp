<%--
  Created by IntelliJ IDEA.
  User: mjungwirth
  Date: 15.12.2017
  Time: 08:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Meine Erste JSP</title>
    <style>
        .container {
            position: relative;
            top: 50px;
            left: 50px;
            width: 300px;
            background-color: #f5f5f5;
            border: 1px solid black;
            padding: 50px;
        }

    </style>

</head>

<div class="container">
    <p>${errorMessage}</p>

    <form action="/login.do" method="post">
        <p>Name: <input type="text" name="name"/></p>
        <p>Passwort: <input type="password" name="password"/></p>
        <input type="submit" value="Anmelden">
    </form>
</div>

</body>
</html>
