package practica3pro;

//2) E- Escriba un programa principal que instancie un jugador y un entrenador con datos leídos desde teclado. Pruebe el correcto funcionamiento de cada método implementado.
import PaqueteLectura.Lector;

public class Ej02Empleados {

    public static void main(String[] args) {

        System.out.println("Ingrese el nombre del jugador: ");
        String nombre = Lector.leerString();
        System.out.println("Ingrese el sueldo basico del jugador: ");
        int sueldoBasico = Lector.leerInt();
        System.out.println("Ingrese la cantidad de partidos jugados: ");
        int cantPartidosJugados = Lector.leerInt();
        System.out.println("Ingrese la cantidad de goles anotados: ");
        int cantGolesAnotados = Lector.leerInt(); 

        Jugador jugador = new Jugador(cantPartidosJugados, cantGolesAnotados, nombre, sueldoBasico);

        System.out.println("Ingrese el nombre del entrenador: ");
        nombre = Lector.leerString();
        System.out.println("Ingrese el sueldo basico del entrenador: ");
        sueldoBasico = Lector.leerInt();
        System.out.println("Ingrese la cantidad de campeonatos ganados: ");
        int cantCampeonatosGanados = Lector.leerInt();
        
        Entrenador entrenador = new Entrenador(cantCampeonatosGanados, nombre, sueldoBasico);
        
        System.out.println("JUGADOR: " + jugador.toString());
        System.out.println("ENTRENADOR: " + entrenador.toString());
    }
}
