package com.sabel.todo;

import java.util.ArrayList;
import java.util.Iterator;
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
    } // END STATIC

    // CONSTRUCTOR
    public ToDoService() {
    } // END CONSTRUCTOR

    // METHODS
    public List<ToDo> retrieveTodos() {
        return todos;
    } // END public List

    public void add(ToDo toDo) {
        todos.add(toDo);
    } // END public void add

    public void delete(ToDo toDo) {
        todos.remove(toDo);
    } // END public void delete

    // Löscht Objekte und setzt die Reihenfolge selber wieder zusammen
    public void deleteString(String name) {
        Iterator<ToDo> iterator = todos.iterator();
        while (iterator.hasNext()) {
            ToDo toDo = iterator.next();
            if (toDo.getName().equals(name)) {
                iterator.remove();
            } // END IF
        } // END WHILE
    } // public void deleteString

} // END CLASS TODOSERVICE
