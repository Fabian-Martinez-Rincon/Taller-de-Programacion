package practica3pro;

public class Entrenador extends Empleado {

    private int cantCampeonatosGanados;

    public Entrenador(int cantCampeonatosGanados, String nombre, double sueldoBasico) {
        super(nombre, sueldoBasico);
        this.cantCampeonatosGanados = cantCampeonatosGanados;
    }

    public int getCantCampeonatosGanados() {
        return cantCampeonatosGanados;
    }

    public void setCantCampeonatosGanados(int cantCampeonatosGanados) {
        this.cantCampeonatosGanados = cantCampeonatosGanados;
    }

    @Override
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
}
