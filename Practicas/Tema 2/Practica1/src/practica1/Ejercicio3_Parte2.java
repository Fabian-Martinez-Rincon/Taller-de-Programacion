/*
3- Escriba un programa que lea las alturas de los 15 jugadores de un equipo de 
básquet y las almacene en un vector. Luego informe: 
- la altura promedio
- la cantidad de jugadores con altura por encima del promedio
NOTA: Dispone de un esqueleto para este programa en Ej03Jugadores.java
 */
package practica1;
import PaqueteLectura.GeneradorAleatorio;
public class Ejercicio3_Parte2 {
    public static void main(String[] args) {
        GeneradorAleatorio.iniciar();
        int dimF = 15;
        int alturas[]=new int[dimF];
        int total = 0; 
        int i;
        double promedio = 0;
        for (i = 0; i < dimF; i++) {
            alturas[i] = GeneradorAleatorio.generarInt(50);
            total+=alturas[i];
        }
        promedio = total/dimF; //No entiendo porque siempre me tira valores enteros
        System.out.println("La altura promedio es : "+ promedio+" metros");
        
        int Superan_Promedio = 0;
        for (i = 0; i < dimF; i++) {
            if (alturas[i]>promedio){
                Superan_Promedio++;
            }
        }
        System.out.println("La cantidad de jugadores con altura que supera el proemdio es: " + Superan_Promedio);
    }
}
