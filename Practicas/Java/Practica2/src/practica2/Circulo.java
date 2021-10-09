package practica2;
public class Circulo {
    private double radio;
    private String colorRelleno;
    private String colorLinea;
    //__________________________________
    //Zona de constructores
    public Circulo(double radio,String colorRelleno, String colorLinea) {
        this.radio = radio;
        this.colorRelleno = colorRelleno;
        this.colorLinea = colorLinea;
    }
    public Circulo(){
    }
    //__________________________________
    //Zona de gets
    
    public double getRadio() {
        return this.radio;
    }

    public String getColorRelleno() {
        return this.colorRelleno;
    }

    public String getColorLinea() {
        return this.colorLinea;
    }
    //__________________________________
    //Zona de sets
    public void setRadio(double unRadio) {
        this.radio = unRadio;
    }

    public void setColorRelleno(String unColorRelleno) {
        this.colorRelleno = unColorRelleno;
    }

    public void setColorLinea(String unColorLinea) {
        this.colorLinea = unColorLinea;
    }
    //____________________________________
    //Zona de comportamiento
    public double calcularArea() {
        return (Math.PI)*(Math.pow(this.radio,2));
    }
    public double calcularPerimetro() {
        return 2*(Math.PI)*this.radio;
    }
}
