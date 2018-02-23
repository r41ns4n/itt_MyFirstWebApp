package com.sabel.todo;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import java.io.Serializable;
import java.util.List;

@ApplicationScoped
public class ToDoService implements Serializable {

    // DATA FIELD
    @Inject
    private ToDoStore toDoStore;

    // METHODS
    public List<ToDo> retrieveTodos() {
        return toDoStore.getTodos();
    } // END public List

    public void add(ToDo toDo) {
        toDoStore.store(toDo);
    } // END public void add

    public void delete(ToDo toDo) {
        toDoStore.delete(toDo);
    } // END public void delete

} // END CLASS TODOSERVICE
