package practica2;


public class Entrenador {
    private String nombre;
    private double sueldo;
    private int campeonatosGanados;
    //__________________________________
    //Constructores
     public Entrenador(String nombre, double sueldo, int campeonatosGanados) {
        this.nombre = nombre;
        this.sueldo = sueldo;
        this.campeonatosGanados = campeonatosGanados;
    }
    public Entrenador(){
    }
    
    //__________________________________
    //Zona de gets
    public String getNombre() {
        return this.nombre;
    }

    public double getSueldo() {
        return this.sueldo;
    }

    public int getCampeonatosGanados() {
        return this.campeonatosGanados;
    }
    //__________________________________
    //Zona de sets
    public void setNombre(String unNombre) {
        this.nombre = unNombre;
    }

    public void setSueldo(double unSueldo) {
        this.sueldo = unSueldo;
    }

    public void setCampeonatosGanados(int unCampeonatoGanado) {
        this.campeonatosGanados = unCampeonatoGanado;
    }
    //____________________________________
    //Zona de comportamiento
    public double SueldoaCobrar() {
        double sueldoaCobrar = 0;
        if ((this.campeonatosGanados>=1) && (this.campeonatosGanados<=4)){
            sueldoaCobrar = this.sueldo + 5000;
        }
        else{
            if ((this.campeonatosGanados>=5) && (this.campeonatosGanados<=10)){
                sueldoaCobrar = this.sueldo + 30000;
            }
            else {
                if (this.campeonatosGanados !=0){
                    sueldoaCobrar = this.sueldo + 50000;
        }
            }
        }
        return sueldoaCobrar;
    }

}
