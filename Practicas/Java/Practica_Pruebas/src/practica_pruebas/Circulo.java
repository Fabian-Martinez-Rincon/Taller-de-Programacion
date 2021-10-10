package practica_pruebas;
public class Circulo {
    private double radio;
    private String colorRelleno;
    private String colorLinea;
    
    public double calcularArea(){
        return (Math.PI*(Math.pow(this.radio, 2)));
    }
    
    public double calcularPerimetro(){
        return (2 * Math.PI * this.radio);
    }
    
    public double getRadio() {
        return radio;
    }

    public String getColorRelleno() {
        return colorRelleno;
    }

    public String getColorLinea() {
        return colorLinea;
    }

    public void setRadio(double radio) {
        this.radio = radio;
    }

    public void setColorRelleno(String colorRelleno) {
        this.colorRelleno = colorRelleno;
    }

    public void setColorLinea(String colorLinea) {
        this.colorLinea = colorLinea;
    }    
}
