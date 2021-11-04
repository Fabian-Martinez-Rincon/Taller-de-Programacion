
package fabianmartinezrinconparcial;


public class Alumno {
    private String nombre;
    private int dni;
    private int nroTemaAsignado;

    public Alumno(String nombre, int dni) { //Iniciar Alumno
        this.nombre = nombre;
        this.dni = dni;
        this.nroTemaAsignado = -1;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public int getNroTemaAsignado() {
        return nroTemaAsignado;
    }

    public void setNroTemaAsignado(int nroTemaAsignado) {
        this.nroTemaAsignado = nroTemaAsignado;
    }

    
    public String toString() {
        return nombre + ", dni " + dni + ", TemaAsignado " + nroTemaAsignado;
    }
    
}