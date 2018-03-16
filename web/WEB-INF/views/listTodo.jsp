<%--
  Created by IntelliJ IDEA.
  User: mjungwirth
  Date: 15.12.2017
  Time: 09:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Include Header -->
<%@include file="../common/header.jspf" %>

<!-- Include Navigation -->
<%@include file="../common/navigation.jspf" %>

<!-- Main Container -->
<div class="container">

    <p>Hallo ${name}, Willkommen auf unserer Seite</p>
    <p></p>

    <table class="table table-striped">
        <caption>Deine ToDo´s sind:</caption>
        <thead>
        <th>ToDo</th>
        <th>Aktion</th>
        </thead>
        <tbody>

        <c:forEach var="todo" items="${todos}">
            <tr>
                <td>
                        ${todo.name}
                </td>
                <td>
                    <a href="delete-todo.do?name=${todo.name}" class="btn btn-danger">delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <form action="addToDo.do" method="get">
        <input type="submit" name="addToDo" value="Neues ToDo hinzufügen" class="btn btn-success">
    </form>

</div>

<!-- Include Footer -->
<%@include file="../common/footer.jspf" %>