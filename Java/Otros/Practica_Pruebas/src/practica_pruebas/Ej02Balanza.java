package practica_pruebas;

import PaqueteLectura.Lector;

/*2- B) Genere un programa principal que cree una balanza e inicie una compra. Lea información desde teclado correspondiente a los ítems comprados (peso en kg y precio
por kg) hasta que se ingresa uno con peso 0. Registre cada producto en la balanza. Al finalizar, informe el resumen de la compra. */
public class Ej02Balanza {

    public static void main(String[] args) {
        Balanza2 balanza = new Balanza2();
        balanza.iniciarCompra();

        double pesoEnKg;
        double precioPorKilo = 0;

        System.out.println("Ingrese el peso en kg: ");
        pesoEnKg = Lector.leerDouble();
        if (pesoEnKg != 0) {
            System.out.println("Ingrese el precio por kg del item: ");
            precioPorKilo = Lector.leerDouble();
        }

        while (pesoEnKg != 0) {
            balanza.registrarProducto(pesoEnKg, precioPorKilo);

            System.out.println("Ingrese el peso en kg: ");
            pesoEnKg = Lector.leerDouble();
            if (pesoEnKg != 0) {
                System.out.println("Ingrese el precio por kg del item: ");
                precioPorKilo = Lector.leerDouble();
            }
        }

        System.out.println(balanza.devolverResumenDeCompra());

    }
}
