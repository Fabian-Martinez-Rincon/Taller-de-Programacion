package practica_pruebas;

public class Balanza5 {
    private double monto;  //correspondiente a la compra actual.
    private int cantItems; //correspondientes a la compra actual.
    private String resumen;
    
    public void iniciarCompra(){
        this.monto = 0;
        this.cantItems = 0;
        this.resumen = "";
    }
    
    public void registrarProducto(Producto producto, double precioPorKg){
        double montoProducto = producto.getPesoEnKg()*precioPorKg;
        this.monto += montoProducto;
        this.cantItems++;
        this.resumen += producto.getDescripcion() + " $" + montoProducto + " - ";
    }
    
    public double devolverMontoAPagar(){
        return this.monto;
    }
    
    public String devolverResumenDeCompra(){
        return (this.getResumen() + "Total a pagar: $" + this.devolverMontoAPagar() + " por la compra de " + this.getCantItems() + " productos.");
    }

    private int getCantItems() {
        return cantItems;
    }

    private String getResumen() {
        return resumen;
    }
}
