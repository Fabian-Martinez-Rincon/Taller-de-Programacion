package practica_pruebas;

public class Circulo_1 {
    private double radio;
    private String colorRelleno;
    private String colorLinea;

    public Circulo_1(double radio, String colorRelleno, String colorLinea) {
        this.radio = radio;
        this.colorRelleno = colorRelleno;
        this.colorLinea = colorLinea;
    }
    public Circulo_1() {
    }

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
