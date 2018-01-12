package com.sabel.todo;

import java.util.ArrayList;
import java.util.List;

public class ToDoService {

    // DATA FIELD
    // STATIC =  WIRD BEIM STARTEN GLEICH ANGELEGT UND ERZEUGT, GIBT ES NUR EINMAL
    private static List<ToDo> todos = new ArrayList<>();

    // FÜGT BEVOR DER CONSTRUCTOR LÄDT DIESE EINTRÄGE EIN
    static {
        todos.add(new ToDo("Java EE lernen"));
        todos.add(new ToDo("Betriebssysteme lernen"));
        todos.add(new ToDo("Irgendwas anderes lernen"));
    }

    // CONSTRUCTOR
    public ToDoService() {

    }

    // METHODS
    public List<ToDo> retrieveTodos() {
        return todos;
    } // END public List<ToDo> retrieveTodos()


} // END CLASS TODOSERVICE
