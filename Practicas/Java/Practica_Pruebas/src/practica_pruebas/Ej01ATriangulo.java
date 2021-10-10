package BRENDA.practica_2;

public class Ej01ATriangulo {

    public static void main(String[] args) {
        
        Triangulo triangulo1 = new Triangulo(3, 3, 2, "verde", "rojo"); //con constructor con parametros.
        
        Triangulo triangulo2 = new Triangulo(); //con constructor nulo.
        triangulo2.setLado1(3);
        triangulo2.setLado2(3);
        triangulo2.setLado3(2);
        triangulo2.setColorRelleno("verde");
        triangulo2.setColorLinea("rojo");
    }
}
