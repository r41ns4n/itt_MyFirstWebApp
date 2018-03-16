package com.sabel.todo;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/addToDo.do")
public class AddToDoServlet extends HttpServlet {

    // DATA FIELDS
    @Inject
    private ToDoService toDoService;

    // METHODS
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/addToDo.jsp").forward(req, resp);
    } // END protected void doGet

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String addNewToDo = req.getParameter("addNewToDo");
        ToDo addToDo = new ToDo(addNewToDo);
        toDoService.add(addToDo);
        resp.sendRedirect("todo.do");
    } // END protected void doPost
} // END CLASS AddToDoServlet
