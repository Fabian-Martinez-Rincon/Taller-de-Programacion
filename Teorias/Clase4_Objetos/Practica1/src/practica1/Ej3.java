/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import PaqueteLectura.GeneradorAleatorio; //para generar valores aleatorios
import PaqueteLectura.Lector; // para leer por teclado

public class Ej3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {   
        GeneradorAleatorio.iniciar(); // sin esta línea, se generarán siempre los mismos valores

        int filas = 5, cols = 10; // dim física de filas y de columnas
        Auto[][] estacionamiento = new Auto[filas][cols];   // Las filas son los pisos y las columnas son las plazas. Un valor en null implica que el lugar esta libre.

        int piso, plaza, pisoMasOcupado = -1, cantAutosPorPiso;
      
        Auto auto;

        for (piso = 0; piso < filas; piso++) {
            for (plaza = 0; plaza < cols; plaza++) {
                estacionamiento[piso][plaza] = null;  //inicializo el estacionamiento vacio
            }
        }
        System.out.println("Ingrese una patente [0 para salir]");
        int patente = Lector.leerInt();
        
        while (patente != 0) {
            if (patente % 2 == 0) {
                System.out.println("El auto con patente " + patente + " tiene permitido el acceso.");
                
                // se asume por enunciado que se leen valores válidos de 'piso' y 'plaza' 
                System.out.println("Ingrese el numero de piso: [1 .. 5]");
                piso = Lector.leerInt();
                System.out.println("Ingrese el numero de plaza: [1 .. 10] ");
                plaza = Lector.leerInt();
                
                // instanciamos un auto
                auto = new Auto();
                auto.setPatente(patente);
                System.out.println("Ingrese el dueño del auto: ");
                auto.setDueño(Lector.leerString());
                
                
                estacionamiento[piso-1][plaza-1] = auto;  //ocupo el lugar con el objeto auto creado (tener en cuenta que decrementamos para almacenar)
            } else {
                System.out.println("El auto con patente " + patente + " no tiene permitido el acceso.");
            }
            
            //patente = GeneradorAleatorio.generarInt(10);
            System.out.println("Ingrese una patente [0 para salir]");
            patente = Lector.leerInt();
        }

        // 2.b) Informe cuál es el piso más ocupado
        int cantMaxAutosPorPiso = -1;
        for (piso = 0; piso < filas; piso++) {
            cantAutosPorPiso = 0;  //inicializo al comenzar a contar autos por cada piso
            for (plaza = 0; plaza < cols; plaza++) {
                if (estacionamiento[piso][plaza] != null) { // cuento si hay un objeto auto
                    cantAutosPorPiso++;
                }
            }

            // se terminó de recorrer el piso actual
            if (cantAutosPorPiso > cantMaxAutosPorPiso) {  //actualizo el maximo
                cantMaxAutosPorPiso = cantAutosPorPiso;
                pisoMasOcupado = piso;
            }
        }      
        System.out.println("El piso mas ocupado es: " + (pisoMasOcupado + 1)); // se muestra incrementado porque al almacenar lo habíamos decrementado (línea 51)
        
        /*  3.b)  A  partir  de  la  estructura  de  autos,  informar  para  cada  número  de  piso  
            y  número  de plaza ocupado, la representación del auto que la ocupa. */
        for (piso = 0; piso < filas; piso++) {
            for (plaza = 0; plaza < cols; plaza++) {
                if (estacionamiento[piso][plaza] != null) { // si hay un objeto auto
                    //System.out.println("Piso: " + piso + ", Plaza: " + plaza + ", " + estacionamiento[piso][plaza].toString());
                    System.out.println("Piso: " + (piso +1) + ", Plaza: " + (plaza +1) + ", " + estacionamiento[piso][plaza]); // equivalente a línea anterior
                }
            }
        }
    }
    
}
