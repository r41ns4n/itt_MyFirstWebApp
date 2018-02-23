package com.sabel.todo;

import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@SessionScoped
public class ToDoStore implements Serializable{

    // DATA FIELDS
    private List<ToDo> todos;

    // CONSTRUCTOR
    public ToDoStore() {
        this.todos = new ArrayList<>();
        todos.add(new ToDo("Phyton anfangen zu lernen"));
        todos.add(new ToDo("Webinare bei UBER anfangen"));
        todos.add(new ToDo("Zeugnis und Zertifikat scanen"));
    } // END CONSTRUCTOR

    // METHODS
    public void store(ToDo toDo) {
        todos.add(toDo);
    } // END public void store

    public void delete(ToDo toDo) {
        todos.remove(toDo);
    } // END public void delete

    public List<ToDo> getTodos() {
        return todos;
    } // END public List

} //END CLASS TODOSTORE
