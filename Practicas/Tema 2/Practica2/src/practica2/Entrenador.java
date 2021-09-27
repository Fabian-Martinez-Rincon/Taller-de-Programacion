package practica2;


public class Entrenador {
    private String nombre;
    private double sueldo;
    private int campeonatosGanados;
    //__________________________________
    //Zona de gets
    public String getNombre() {
        return nombre;
    }

    public double getSueldo() {
        return sueldo;
    }

    public int getCampeonatosGanados() {
        return campeonatosGanados;
    }
    //__________________________________
    //Zona de sets
    public void setNombre(String unNombre) {
        nombre = unNombre;
    }

    public void setSueldo(double unSueldo) {
        sueldo = unSueldo;
    }

    public void setCampeonatosGanados(int unCampeonatoGanado) {
        campeonatosGanados = unCampeonatoGanado;
    }

}
