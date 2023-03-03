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
public abstract class Subsidios {
    private String nombreInves;
    private String nombrePlan;
    private String fecha;

    public Subsidios(String nombreInves, String nombrePlan, String fecha) {
        this.nombreInves = nombreInves;
        this.nombrePlan = nombrePlan;
        this.fecha = fecha;
    }
    
    public abstract double devolverMontoTotal();
    
    public String toString(){
        return "Nombre Investigador: " + this.nombreInves +  " Plan de Trabajo: "+ this.nombrePlan  + " Fecha solicitud : " + this.fecha + " monto Total: " + devolverMontoTotal();
    }
    
}
