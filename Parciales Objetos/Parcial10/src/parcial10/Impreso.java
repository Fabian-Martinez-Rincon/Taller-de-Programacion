
package parcial10;


public class Impreso extends Libro{
    private boolean tapaDura;
    
    public Impreso() {
        
    }
    
    public Impreso(boolean tapaDura) {
        this.tapaDura = tapaDura;
    }

    public boolean isTapaDura() {
        return tapaDura;
    }

    public void setTapaDura(boolean tapaDura) {
        this.tapaDura = tapaDura;
    }

    @Override
    public double precioFinal() {
        double preFinal = super.getPrecio()+((super.getPrecio()/100)*21);
        return preFinal;
    }
    
    
    @Override
    public String toString() {
        return super.toString() +  " precio final: " + this.precioFinal();
    }
    
}
