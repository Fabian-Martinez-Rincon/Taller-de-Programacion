/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import PaqueteLectura.GeneradorAleatorio; //para generar valores aleatorios
import PaqueteLectura.Lector; // para leer por teclado

public class Ej2 {
    public static void main(String[] args) {

        GeneradorAleatorio.iniciar(); // sin esta línea, se generarán siempre los mismos valores

        int filas = 5, cols = 10; // dim física de filas y de columnas
        boolean[][] estacionamiento = new boolean[filas][cols];   // Las filas son los pisos y las columnas son las plazas.
        int piso;
        int plaza;
        // darle valor inicial a la matriz
        for (piso = 0; piso < filas; piso++) {
            for (plaza = 0; plaza < cols; plaza++) {
                estacionamiento[piso][plaza] = false;
            }
        }
        int patente = GeneradorAleatorio.generarInt(10);
        while (patente != 0) {
            if (patente % 2 == 0) {
                System.out.println("El auto con patente " + patente + " tiene permitido el acceso.");
                // se asume por enunciado que se leen valores válidos de 'piso' y 'plaza' 
                System.out.println("Ingrese el numero de piso: [1 .. 5]");
                piso = Lector.leerInt();
                System.out.println("Ingrese el numero de plaza: [1 .. 10] ");
                plaza = Lector.leerInt();

                estacionamiento[piso - 1][plaza - 1] = true;  //ocupo el lugar (tener en cuenta que decrementamos para almacenar)
            } else {
                System.out.println("El auto con patente " + patente + " no tiene permitido el acceso.");
            }
            patente = GeneradorAleatorio.generarInt(10);
        }
        // b) Informe cuál es el piso más ocupado. 
        int pisoMasOcupado = -1;
        int cantAutosPorPiso;
        int cantMaxAutosPorPiso = -1;

        for (piso = 0; piso < filas; piso++) {
            cantAutosPorPiso = 0;  //inicializo al comenzar a contar autos por cada piso
            for (plaza = 0; plaza < cols; plaza++) {
                if (estacionamiento[piso][plaza]) { // equivalente a poner:  if (estacionamiento[piso][plaza] == true)
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
    }
}
