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
</head>
<body>
<form action="/login.do" method="post">
    <p>Name: <input type="text" name="name"/></p>
    <p>Passwort: <input type="password" name="password"/></p>
    <input type="submit" value="Anmelden">
</form>
</body>
</html>
