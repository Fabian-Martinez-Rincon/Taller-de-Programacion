/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tema5;

public class Rectangulo extends Figura{
    private double base;
    private double altura;
    
    public Rectangulo(double base, double altura, String unColorR, String unColorL){
        super(unColorR,unColorL);
        setBase(base);
        setAltura(altura);
    } 

    public double getBase() {
        return base;
    }

    public void setBase(double unaBase) {
        base = unaBase;
    }
    
    public double getAltura() {
        return altura;
    }

    public void setAltura(double unaAltura) {
        altura = unaAltura;
    }

   
    public double calcularArea() {
        return (getBase()*getAltura()); 
    }

  
    public double calcularPerimetro() {
        return (2*getBase()+2*getAltura());
    }
    
    public String toString(){
       String aux = super.toString() + 
                    " Base: " + getBase() +
                    " Altura: " + getAltura();
       return aux;
    }

    
    
    
}
