<%--
  Created by IntelliJ IDEA.
  User: mjungwirth
  Date: 19.01.2018
  Time: 09:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add ToDo´s</title>
</head>
<body>
<p>Hier können Sie ein Neues ToDo in Ihre Liste mit aufnehmen</p>
<form action="/addToDo.do" method="post">
    <input type="text" name="addNewToDo">
    <input type="submit" value="Hinzufügen">
</form>
</body>
</html>
