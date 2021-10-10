
package practica2;

public class Balanza {
    private double monto;
    private int cant_productos;
    //Zona de metodos
    
    //____________________________________
    //Zona de comportamiento
    public void iniciarCompra(){
        this.monto = 0;
        this.cant_productos = 0;
    }
    public void registrarProducto(double unMonto, int unCantidad) {
        this.monto += (unMonto * unCantidad);
        this.cant_productos++;
    }
    public double devolverMontoAPagar() {
        return this.monto; 
    }
    public void devolverResumenDeCompra() {
        System.out.println("Total a pagar " + this.monto + " por la compra de "+this.cant_productos+" productos");
    }
}
