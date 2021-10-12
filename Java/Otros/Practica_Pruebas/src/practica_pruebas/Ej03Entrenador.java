package practica_pruebas;

import BRENDA.practica_2.Entrenador;
import PaqueteLectura.Lector;

/*3- B) Realizar un programa principal que instancie un entrenador, cargándole datos leídos desde teclado. Pruebe el correcto funcionamiento de cada método implementado.*/

public class Ej03Entrenador {

    public static void main(String[] args) {
        Entrenador entrenador = new Entrenador();
        
        System.out.println("Ingrese el nombre del entrenador: ");
        entrenador.setNombre(Lector.leerString());
        System.out.println("Ingrese su sueldo basico: ");
        entrenador.setSueldoBasico(Lector.leerDouble());
        System.out.println("Ingrese la cantidad de campeonatos ganados: ");
        entrenador.setCantCampeonatosGanados(Lector.leerInt());
        
        System.out.println("El sueldo a cobrar por el entrenador es: $" + entrenador.calcularSueldoACobrar());
    }
}
