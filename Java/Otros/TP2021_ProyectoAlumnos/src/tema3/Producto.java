/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tema3;


public class Producto {
    
    private double pesoEnKg;  
    private String descripcion; 

    public Producto(){

    }
    
    public Producto(double unPeso,String unaDescripcion){
        pesoEnKg = unPeso;
        descripcion = unaDescripcion;
    }
    
    public double getPesoEnKg() {
        return pesoEnKg;
    }

     public void setPesoEnKg(double unPeso) {
        pesoEnKg = unPeso;
    }

     public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String unaDescripcion) {
        descripcion = unaDescripcion;
    }
    

    
}
