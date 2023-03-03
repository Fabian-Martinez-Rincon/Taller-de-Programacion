package practica3pro;

public abstract class Empleado {

    private String nombre;
    private double sueldoBasico;

    public Empleado(String nombre, double sueldoBasico) {
        this.nombre = nombre;
        this.sueldoBasico = sueldoBasico;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getSueldoBasico() {
        return sueldoBasico;
    }

    public void setSueldoBasico(double sueldoBasico) {
        this.sueldoBasico = sueldoBasico;
    }

    public abstract double calcularSueldoACobrar();

    @Override
    public String toString() {
        return "Nombre: " + this.getNombre() + ", sueldo a cobrar: " + this.calcularSueldoACobrar();
    }
}
