/*
3- Escriba un programa que lea las alturas de los 15 jugadores de un equipo de 
básquet y las almacene en un vector. Luego informe: 
- la altura promedio
- la cantidad de jugadores con altura por encima del promedio
NOTA: Dispone de un esqueleto para este programa en Ej03Jugadores.java
 */
package practica1;
import PaqueteLectura.Lector;
import PaqueteLectura.GeneradorAleatorio;

public class Ejercicio3 {
    public static void main(String[] args) {
        int dimF = 15;
        int [] jugadores = new int[dimF];
        int altura;
        int total = 0;
        double promedio;
        GeneradorAleatorio.iniciar(); 

        for (int i = 0; i < dimF; i++) {
            altura = GeneradorAleatorio.generarInt(10);
            jugadores[i] = altura;
            total = total + jugadores[i];
        }
        promedio = total / dimF;
        System.out.println("La altura promedio es: "+ promedio);
        total = 0;
        
        for (int i = 0; i < dimF; i++) {
            if (jugadores[i]>promedio){
                total++;
            }
        }
        System.out.println("La cantidad de jugadores que superan el promedio es : "+ total);
    }
}
