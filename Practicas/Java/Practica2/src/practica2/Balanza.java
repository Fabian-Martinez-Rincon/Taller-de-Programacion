
package practica2;

public class Balanza {
    private double monto;
    private int cantidad;
    //Zona de metodos
    
    //____________________________________
    //Zona de comportamiento
    public void iniciarCompra(){
        this.monto = 0;
        this.cantidad = 0;
    }
    public void registrarProducto(double unMonto, int unCantidad) {
        this.monto += (unMonto * unCantidad);
        this.cantidad++;
    }
    public double devolverMontoAPagar() {
        return monto; 
    }
    public void devolverResumenDeCompra() {
        System.out.println("Total a pagar " + this.monto + " por la compra de "+this.cantidad+" productos");
    }
    
}
