package BRENDA.practica_2;

public class Ej01BCirculo {

    public static void main(String[] args) {
        Circulo circulo1 = new Circulo(3.2, "verde", "rojo"); //con constructor con parametros.

        Circulo circulo2 = new Circulo(); //con constructor nulo.
        circulo2.setRadio(3.2);
        circulo2.setColorRelleno("verde");
        circulo2.setColorLinea("rojo");
    }
}
