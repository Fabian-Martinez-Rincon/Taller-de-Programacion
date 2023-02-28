import java.time.LocalDate;

import java.time.LocalDate;

public abstract class Subsidio {
    private String nombreInv;
    private String nombrePlan;
    private String fecha;

    public Subsidio(){}

    public Subsidio(String nombreInv, String nombrePlan, String fecha){
        this.nombreInv = nombreInv;
        this.nombrePlan = nombrePlan;
        this.fecha = fecha;
    }
}
