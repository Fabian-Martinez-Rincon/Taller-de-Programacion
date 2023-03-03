package parcial10;

public class Electronico extends Libro {
    private String formato;
    private double tamanio;
    
    public Electronico(){
    
    }

    public Electronico(String formato, double tamanio, String titulo, double precio, String[] autores) {
        super(titulo, precio, autores);
        this.formato = formato;
        this.tamanio = tamanio;
    }

    public String getFormato() {
        return this.formato;
    }

    public double getTamanio() {
        return this.tamanio;
    }

    public void setFormato(String formato) {
        this.formato = formato;
    }

    public void setTamanio(double tamanio) {
        this.tamanio = tamanio;
    }

    @Override
    public double precioFinal() {
        double preFinal = super.getPrecio()+((super.getPrecio()/100)*21)+ (this.getTamanio()*2.5);
        return preFinal;                        
    }
    
    

    @Override
    public String toString() {
        return super.toString() +  " precio final: " + this.precioFinal();
    }
}
