package practica3pro;

import PaqueteLectura.Lector;

/*1) C- Escriba un programa que instancie un triángulo, un círculo y un cuadrado, con
información leída desde teclado. Luego muestre en consola el área y perímetro de cada
uno y su representación en String.
 */
public class Ej01Figuras {

    public static void main(String[] args) {
        System.out.println("Ingrese el lado 1 del triangulo: ");
        double lado1 = Lector.leerDouble();
        System.out.println("Ingrese el lado 2 del triangulo: ");
        double lado2 = Lector.leerDouble();
        System.out.println("Ingrese el lado 3 del triangulo: ");
        double lado3 = Lector.leerDouble();
        System.out.println("Ingrese el color de relleno del triangulo: ");
        String colorRelleno = Lector.leerString();
        System.out.println("Ingrese el color de linea del triangulo: ");
        String colorLinea = Lector.leerString();
        Triangulo triangulo = new Triangulo(lado1, lado2, lado3, colorRelleno, colorLinea);

        System.out.println("Ingrese el radio del circulo: ");
        double radio = Lector.leerDouble();
        System.out.println("Ingrese el color de relleno del circulo: ");
        colorRelleno = Lector.leerString();
        System.out.println("Ingrese el color de linea del circulo: ");
        colorLinea = Lector.leerString();
        Circulo circulo = new Circulo(radio, colorRelleno, colorLinea);

        System.out.println("Ingrese el lado del cuadrado: ");
        double lado = Lector.leerDouble();
        System.out.println("Ingrese el color de relleno del cuadrado: ");
        colorRelleno = Lector.leerString();
        System.out.println("Ingrese el color de linea del cuadrado: ");
        colorLinea = Lector.leerString();
        Cuadrado cuadrado = new Cuadrado(lado, colorRelleno, colorLinea);

        System.out.println("Area triangulo: " + triangulo.calcularArea() + " - Perimetro triangulo: " + triangulo.calcularPerimetro());
        System.out.println("Area circulo: " + circulo.calcularArea() + " - Perimetro circulo: " + circulo.calcularPerimetro());
        System.out.println("Area cuadrado: " + cuadrado.calcularArea() + " - Perimetro cuadrado: " + cuadrado.calcularPerimetro());
        
        System.out.println("Triangulo: " + triangulo.toString());
        System.out.println("Circulo: " + circulo.toString());
        System.out.println("Cuadrado: " + cuadrado.toString());
    }
}
