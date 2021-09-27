
package practica2;

public class Balanza {
    private double monto;
    private int cantidad;
    //____________________________________
    //Zona de comportamiento
    public void iniciarCompra(){
        monto = 0;
        cantidad = 0;
    }
    public void registrarProducto(double unMonto, int unCantidad) {
        monto = unMonto;
        cantidad = unCantidad;
    }
    public double devolverMontoAPagar() {
        return monto * cantidad; 
    }
    public void devolverResumenDeCompra() {
        System.out.println("Total a pagar " + monto*cantidad + " por la compra de "+cantidad+" productos");
    }
    
}
