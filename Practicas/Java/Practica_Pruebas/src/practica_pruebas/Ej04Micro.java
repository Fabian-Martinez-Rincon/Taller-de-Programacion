package BRENDA.practica_2;

import BRENDA.practica_2.Micro;
import PaqueteLectura.Lector;

/*4) B- Realice un programa que cree un micro con patente “ABC123”, destino “Mar del Plata” y hora de salida 5:00. Cargue pasajeros al micro de la siguiente manera. Leer nros. de
asientos desde teclado que corresponden a pedidos de personas. La lectura finaliza cuando se ingresa el nro. de asiento -1 o cuando se llenó el micro. Para cada nro. de asiento leído
debe: validar el nro; en caso que esté libre, ocuparlo e informar a la persona el éxito de la operación; en caso que esté ocupado informar a la persona la situación y mostrar el nro.
del primer asiento libre. Al finalizar, informe la cantidad de asientos ocupados del micro.
 */
public class Ej04Micro {

    public static void main(String[] args) {
        Micro micro = new Micro("ABC123", "Mar del Plata", "5:00");

        System.out.println("Ingrese el numero de asiento: ");
        int asiento = Lector.leerInt();

        while (asiento != -1 && !micro.estaLleno()) {
            if (micro.esValido(asiento)) {
                if (!micro.estaOcupado(asiento)) {
                    micro.ocuparAsiento(asiento);
                    System.out.println("La operacion fue realizada con exito.");
                } else {
                    System.out.println("El asiento elegido ya se encuentra ocupado. Asiento sugerido: " + micro.primerAsientoLibre());
                }
            } else {
                System.out.println("El asiento ingresado no es valido");
            }
            System.out.println("Ingrese el numero de asiento: ");
            asiento = Lector.leerInt();
        }

        if (micro.estaLleno()) {
            System.out.println("El micro esta lleno.");
        }
        System.out.println("La cantidad de asientos ocupados es: " + micro.getCantAsientosOcupados());
    }

}
