package practica2;

public class Circulo {
    private double radio;
    private String colorRelleno;
    private String colorLinea;
    //__________________________________
    //Zona de gets
    public double getRadio() {
        return radio;
    }

    public String getColorRelleno() {
        return colorRelleno;
    }

    public String getColorLinea() {
        return colorLinea;
    }
    //__________________________________
    //Zona de sets
    public void setRadio(double unRadio) {
        radio = unRadio;
    }

    public void setColorRelleno(String unColorRelleno) {
        colorRelleno = unColorRelleno;
    }

    public void setColorLinea(String unColorLinea) {
        colorLinea = unColorLinea;
    }
    //____________________________________
    //Zona de comportamiento
    public double calcularArea() {
        return (Math.PI)*(Math.pow(radio,2));
    }
    public double calcularPerimetro() {
        return 2*(Math.PI)*radio;
    }
}
