/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package finalesObjetos;

/**
 *
 * @author Lucia
 */
public class Paciente {
    private String nombre;
    private boolean obraSocial;
    private int monto;

    public Paciente() {
    }    
    
    public Paciente(String nombre, boolean obraSocial, int monto) {
        this.nombre = nombre;
        this.obraSocial = obraSocial;
        this.monto = monto;
    }

    public String getNombre() {
        return nombre;
    }

    public boolean isObraSocial() {
        return obraSocial;
    }

    public int getMonto() {
        return monto;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setObraSocial(boolean obraSocial) {
        this.obraSocial = obraSocial;
    }

    public void setMonto(int monto) {
        this.monto = monto;
    }
    
         
    
}
