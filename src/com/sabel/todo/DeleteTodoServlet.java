package com.sabel.todo;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (urlPatterns = "/delete-todo.do")
public class DeleteTodoServlet extends HttpServlet {

    // DATA FIELDS
    @Inject
    private ToDoService toDoService;

    // METHODS
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String todoName = req.getParameter("name");
        toDoService.delete(new ToDo(todoName));
        resp.sendRedirect("/todo.do");
    } // END OVERRIDE DoGet

} // END class DeleteTodoServlet
