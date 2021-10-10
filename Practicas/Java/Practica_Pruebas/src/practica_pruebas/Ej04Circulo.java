package BRENDA.practica_2;

import BRENDA.practica_2.Circulo;
import PaqueteLectura.Lector;

/*4- B) Realizar un programa principal que instancie un círculo, le cargue información leída de teclado e informe en consola el perímetro y el área.
 */
public class Ej04Circulo {

    public static void main(String[] args) {
        Circulo circulo = new Circulo();
        
        System.out.println("Ingrese el radio del circulo: ");
        circulo.setRadio(Lector.leerDouble());
        
        System.out.println("Ingrese el color de relleno: ");
        circulo.setColorRelleno(Lector.leerString());
        
        System.out.println("Ingrese el color de linea: ");
        circulo.setColorLinea(Lector.leerString());
        
        System.out.println("El perimetro del circulo es: " + circulo.calcularPerimetro());
        
        System.out.println("El area del circulo es: " + circulo.calcularArea());
    }
    
}
