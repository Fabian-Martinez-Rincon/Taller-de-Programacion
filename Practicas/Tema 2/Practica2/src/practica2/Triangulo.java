package practica2;


public class Triangulo {
    //Atributos
    private double ladoUno;
    private double ladoDos;
    private double ladoTres;
    private String relleno;
    private String linea;
    //__________________________________
    //Contructores
    public Triangulo (){
    }
    
    public Triangulo(double ladoUno, double ladoDos, double ladoTres, String relleno, String linea) {
        this.ladoUno = ladoUno;
        this.ladoDos = ladoDos;
        this.ladoTres = ladoTres;
        this.relleno = relleno;
        this.linea = linea;
    }
    
    //__________________________________
    //Zona de gets
    public double getLadoUno() {
        return ladoUno;
    }

    public double getLadoDos() {
        return ladoDos;
    }

    public double getLadoTres() {
        return ladoTres;
    }
    public String getRelleno() {
        return relleno;
    }
    public String getLinea() {
        return linea;
    }
    //__________________________________
    //Zona de sets
    public void setLadoUno(double unLadoUno) {
        ladoUno = unLadoUno;
    }

    public void setLadoDos(double unLadoDos) {
        ladoDos = unLadoDos;
    }

    public void setLadoTres(double unLadoTres) {
        ladoTres = unLadoTres;
    }
    public void setRelleno(String unRelleno) {
        relleno = unRelleno;
    }
    public void setLinea(String unaLinea) {
        linea = unaLinea;
    }
    //____________________________________
    //Zona de comportamiento
    public double calcularArea() {
        double s = (ladoUno+ladoDos+ladoTres)/2;
        return Math.sqrt((s*(s-ladoUno)*(s-ladoDos)*(s-ladoTres)));
    }
    public double calcularPerimetro() {
        double p = ladoUno+ladoDos+ladoTres;
        return p;
    }
    
}
