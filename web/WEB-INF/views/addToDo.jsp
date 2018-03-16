<%--
  Created by IntelliJ IDEA.
  User: mjungwirth
  Date: 19.01.2018
  Time: 09:17
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Include Header -->
<%@include file="../common/header.jspf" %>

<!-- Include Navigation -->
<%@include file="../common/navigation.jspf" %>

<div class="container">
    <p>Hier können Sie ein Neues ToDo in Ihre Liste mit aufnehmen</p>
    <form action="addToDo.do" method="post">
        <input type="text" name="addNewToDo">
        <input type="submit" value="Hinzufügen" class="btn btn-success">
    </form>
</div>

<!-- Include Footer -->
<%@include file="../common/footer.jspf" %>