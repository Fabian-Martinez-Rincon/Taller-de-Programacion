package BRENDA.practica_2;

import BRENDA.practica_2.Micro;
import BRENDA.practica_2.Flota;
import PaqueteLectura.Lector;

/*B- Genere un programa que cree una flota vacía. Cargue micros (sin pasajeros) a la flota
con información leída desde teclado (hasta que se ingresa la patente “ZZZ000” o hasta
completar la flota). Luego lea una patente y elimine de la flota el micro con esa patente;
busque el micro con dicha patente para comprobar que ya no está en la flota. Para
finalizar, lea un destino e informe la patente del micro que va a dicho destino.
 */
public class Ej05FlotasMicros {

    public static void main(String[] args) {
        Flota flota = new Flota();

        System.out.println("Ingrese la patente del micro: ");
        String patente = Lector.leerString();

        while (!flota.estaCompleta() && !patente.equals("ZZZ000")) {
            System.out.println("Ingrese el destino: ");
            String destino = Lector.leerString();
            System.out.println("Ingrese la hora de salida: ");
            String horaSalida = Lector.leerString();

            Micro micro = new Micro(patente, destino, horaSalida);
            flota.agregarMicro(micro);

            System.out.println("Ingrese la patente del micro: ");
            patente = Lector.leerString();
        }

        System.out.println("Ingrese la patente del micro que desea eliminar de la flota: ");
        String patenteParaEliminar = Lector.leerString();
        flota.eliminarMicro(patenteParaEliminar);

        if (flota.buscarMicroPorPatente(patenteParaEliminar) == null) {
            System.out.println("El micro no esta en la flota");
        } else {
            System.out.println("El micro esta en la flota.");
        }

        System.out.println("Ingrese un destino: ");
        String destino = Lector.leerString();
        
        Micro microEncontrado = flota.buscarMicroPorDestino(destino);
        if (microEncontrado != null) {
            System.out.println("La patente del micro que va al destino ingresado es: " + microEncontrado.getPatente());
        }else {
            System.out.println("No se encontro micro que vaya al destino ingresado.");
        }
        
    }
}
