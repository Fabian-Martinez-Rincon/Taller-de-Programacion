package practica3pro;

public class Circulo extends Figura {
    private double radio;

    public Circulo(double radio, String unColorRelleno, String unColorLinea) {
        super(unColorRelleno, unColorLinea);
        this.radio = radio;
    }

    public double getRadio() {
        return radio;
    }

    public void setRadio(double radio) {
        this.radio = radio;
    }    

    @Override
    public double calcularArea() {
        return (Math.PI*(Math.pow(this.radio, 2)));
    }

    @Override
    public double calcularPerimetro() {
        return (2 * Math.PI * this.radio);
    }
    
    @Override
    public String toString() {
        String aux = super.toString()
                + " - Radio: " + this.getRadio();
        return aux;
    }
}
