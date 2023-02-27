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
public class Bien {
    private String descripcion;
    private int cantidad;
    private int costoXunidad;

    public Bien(String descripcion, int cantidad, int costoXunidad) {
        this.descripcion = descripcion;
        this.cantidad = cantidad;
        this.costoXunidad = costoXunidad;
    }
    
    public String getDescripcion() {
        return descripcion;
    }

    public int getCantidad() {
        return cantidad;
    }

    public int getCostoXunidad() {
        return costoXunidad;
    }
    
    public String toString(){
        return "Descripcion: " +this.descripcion;
    }
}
