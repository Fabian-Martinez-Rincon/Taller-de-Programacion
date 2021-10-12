package BRENDA.practica_2;

import BRENDA.practica_2.Triangulo;
import PaqueteLectura.Lector;

public class Ej01Triangulo {

    public static void main(String[] args) {
        Triangulo triangulo = new Triangulo();

        System.out.println("Ingrese el tamanio del lado 1: ");
        triangulo.setLado1(Lector.leerDouble());
        System.out.println("Ingrese el tamanio del lado 2: ");
        triangulo.setLado2(Lector.leerDouble());
        System.out.println("Ingrese el tamanio del lado 3: ");
        triangulo.setLado3(Lector.leerDouble());
        System.out.println("Ingrese el color de relleno: ");
        triangulo.setColorRelleno(Lector.leerString());
        System.out.println("Ingrese el color de linea: ");
        triangulo.setColorLinea(Lector.leerString());

        System.out.println("El perimetro del triangulo es: " + triangulo.calcularPerimetro());

        System.out.println("El area del triangulo es: " + triangulo.calcularArea());
    }
}
