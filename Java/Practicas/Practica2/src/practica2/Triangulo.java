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
        return this.ladoUno;
    }

    public double getLadoDos() {
        return this.ladoDos;
    }

    public double getLadoTres() {
        return this.ladoTres;
    }
    public String getRelleno() {
        return this.relleno;
    }
    public String getLinea() {
        return this.linea;
    }
    //__________________________________
    //Zona de sets
    public void setLadoUno(double unLadoUno) {
        this.ladoUno = unLadoUno;
    }

    public void setLadoDos(double unLadoDos) {
        this.ladoDos = unLadoDos;
    }

    public void setLadoTres(double unLadoTres) {
        this.ladoTres = unLadoTres;
    }
    public void setRelleno(String unRelleno) {
        this.relleno = unRelleno;
    }
    public void setLinea(String unaLinea) {
        this.linea = unaLinea;
    }
    //____________________________________
    //Zona de comportamiento
    public double calcularArea() {
        double s = (this.ladoUno+this.ladoDos+this.ladoTres)/2;
        return Math.sqrt((s*(s-this.ladoUno)*(s-this.ladoDos)*(s-this.ladoTres)));
    }
    public double calcularPerimetro() {
        return this.ladoUno+this.ladoDos+this.ladoTres;
    }
}
