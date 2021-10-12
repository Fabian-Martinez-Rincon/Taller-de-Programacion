package practica_pruebas;

public class Entrenador {

    private String nombre;
    private double sueldoBasico;
    private int cantCampeonatosGanados;

    public Entrenador(String nombre, double sueldoBasico, int cantCampeonatosGanados) {
        this.nombre = nombre;
        this.sueldoBasico = sueldoBasico;
        this.cantCampeonatosGanados = cantCampeonatosGanados;
    }

    public Entrenador() {
    }

    public double calcularSueldoACobrar() {
        int plus = 0;
        if (this.getCantCampeonatosGanados() >= 1 && this.getCantCampeonatosGanados() <= 4) {
            plus = 5000;
        } else if (this.getCantCampeonatosGanados() >= 5 && this.getCantCampeonatosGanados() <= 10) {
            plus = 30000;
        } else if (this.getCantCampeonatosGanados() > 10) {
            plus = 50000;
        }
        
        return (this.getSueldoBasico() + plus);
    }

    public String getNombre() {
        return nombre;
    }

    public double getSueldoBasico() {
        return sueldoBasico;
    }

    public int getCantCampeonatosGanados() {
        return cantCampeonatosGanados;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setSueldoBasico(double sueldoBasico) {
        this.sueldoBasico = sueldoBasico;
    }

    public void setCantCampeonatosGanados(int cantCampeonatosGanados) {
        this.cantCampeonatosGanados = cantCampeonatosGanados;
    }
}
