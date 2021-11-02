package practica3pro;

public class Trabajador extends Persona{
    private String tarea;

    public Trabajador(String tarea, String nombre, int dni, int edad) {
        super(nombre, dni, edad);
        this.tarea = tarea;
    }

    public String getTarea() {
        return tarea;
    }

    public void setTarea(String tarea) {
        this.tarea = tarea;
    }

    @Override
    public String toString() {
        return super.toString() + " Soy " + this.getTarea();
    }  
}
