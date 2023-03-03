/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ratto;

/**
 *
 * @author alumnos
 */
public class Estadias extends Subsidios{
    private String lugarDest;
    private double costoPasajes;
    private int cantDias;
    private double montoXdia;

    public Estadias(String lugarDest, double costoPasajes, int cantDias, double montoXdia, String nombreInves, String nombrePlan, String fecha) {
        super(nombreInves, nombrePlan, fecha);
        this.lugarDest = lugarDest;
        this.costoPasajes = costoPasajes;
        this.cantDias = cantDias;
        this.montoXdia = montoXdia;
    }

    @Override
    public double devolverMontoTotal() {
       return this.costoPasajes+(this.cantDias*montoXdia);
    }
    
    public String toString(){
        return super.toString() + " Lugar dest: " + this.lugarDest +  "Dias Estadia: " + this.cantDias;
    }
    
    
    
}
