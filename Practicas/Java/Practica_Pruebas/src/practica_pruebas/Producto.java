package practica_pruebas;

public class Producto {
    
    private double pesoEnKg;  
    private String descripcion; 
    
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


//Producto p = new Producto(123,"peras");
