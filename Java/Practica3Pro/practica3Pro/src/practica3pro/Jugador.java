package practica3pro;

public class Jugador extends Empleado {

    private int cantPartidosJugados;
    private int cantGolesAnotados;

    public Jugador(int cantPartidosJugados, int cantGolesAnotados, String nombre, double sueldoBasico) {
        super(nombre, sueldoBasico);
        this.cantPartidosJugados = cantPartidosJugados;
        this.cantGolesAnotados = cantGolesAnotados;
    }

    public int getCantPartidosJugados() {
        return cantPartidosJugados;
    }

    public void setCantPartidosJugados(int cantPartidosJugados) {
        this.cantPartidosJugados = cantPartidosJugados;
    }

    public int getCantGolesAnotados() {
        return cantGolesAnotados;
    }

    public void setCantGolesAnotados(int cantGolesAnotados) {
        this.cantGolesAnotados = cantGolesAnotados;
    }

    @Override
    public double calcularSueldoACobrar() {
        double promedio = this.getCantGolesAnotados() / this.getCantPartidosJugados();
        if (promedio > 0.5) {
            return 2 * this.getSueldoBasico();
        }
        return this.getSueldoBasico();
    }
}
