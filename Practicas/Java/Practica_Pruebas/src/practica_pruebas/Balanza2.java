package practica_pruebas;

public class Balanza2 {
    private double monto;  //correspondiente a la compra actual.
    private int cantItems; //correspondientes a la compra actual.
    private String resumen;
    Producto saludo;
    
    public void iniciarCompra(){
        this.monto = 0;
        this.cantItems = 0;
    }
                                    
    public void registrarProducto(Producto p, double precioPorKg){
        double precio_del_prod = p.getPesoEnKg()*precioPorKg;
        this.monto += precio_del_prod;
        this.cantItems++;
        this.resumen += p.getDescripcion() + precio_del_prod; 
    }
    public double devolverMontoAPagar(){
        return this.monto;
    }
    
    public String devolverResumenDeCompra(){
        this.resumen = "Total a pagar: $" + this.devolverMontoAPagar() + " por la compra de " + this.getCantItems() + " productos";
        return this.resumen;
    }

    private int getCantItems() {
        return cantItems;
    }
}
