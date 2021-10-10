package practica2;
public class Probando {
    private double monto;  //correspondiente a la compra actual.
    private int cantItems; //correspondientes a la compra actual.
    private String resumen;
    
    
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
        String aux = "Total a pagar: $" + this.devolverMontoAPagar() + " por la compra de " + this.getCantItems() + " productos";
        return aux;
    }

    private int getCantItems() {
        return cantItems;
    }
}c